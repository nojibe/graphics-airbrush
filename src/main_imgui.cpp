#include "imgui.h"
#include "imgui_impl_sdl.h"
#include "imgui_impl_sdlrenderer.h"
#include <stdio.h>
#include <SDL.h>

#include "airbrush.h"
#include <algorithm>

namespace {

int clamp( int smallest_allowable_value, int largest_allowable_value, int value_to_clamp ) {
    if( value_to_clamp < smallest_allowable_value ) value_to_clamp = smallest_allowable_value;
    if( value_to_clamp > largest_allowable_value ) value_to_clamp = largest_allowable_value;
    return value_to_clamp;
}

struct BrushState {
    graphics101::AirBrushShape shape = graphics101::AirBrushShape::Quadratic;
    ImVec4 color = ImVec4(0.0f, 0.0f, 1.0f, .25f);
    int radius = 25;
    
    bool operator==( const BrushState& rhs ) const {
        return
            shape == rhs.shape &&
            color.x == rhs.color.x &&
            color.y == rhs.color.y &&
            color.z == rhs.color.z &&
            color.w == rhs.color.w &&
            radius == rhs.radius;
    }
};

void AirbrushFromState( graphics101::Image& airbrush_image, const BrushState& state ) {
    const graphics101::ColorRGBA8 c(
        clamp( 0, 255, 255*state.color.x ),
        clamp( 0, 255, 255*state.color.y ),
        clamp( 0, 255, 255*state.color.z ),
        clamp( 0, 255, 255*state.color.w )
        );
    graphics101::create_airbrush( airbrush_image, state.shape, state.radius, c );
}

SDL_Texture* CreateTextureForImage( SDL_Renderer* renderer, const graphics101::Image& image ) {
    // TODO: Why does SDL_PIXELFORMAT_ABGR8888 work? Our data is SDL_PIXELFORMAT_RGBA8888.
    SDL_Texture* tex = SDL_CreateTexture( renderer, SDL_PIXELFORMAT_ABGR8888, SDL_TEXTUREACCESS_STATIC, image.width(), image.height() );
    if( SDL_SetTextureBlendMode( tex, SDL_BLENDMODE_BLEND ) != 0 ) SDL_Log( "Error: %s", SDL_GetError() );
    return tex;
}
int UploadImageToTexture( const graphics101::Image& image, SDL_Texture* tex ) {
    return SDL_UpdateTexture( tex, nullptr, image.data(), sizeof(graphics101::ColorRGBA8)*( image.scanline(1)-image.scanline(0) ) );
}

}

// Declaring argv const makes this fail to work on Windows.
// Declaring it with C linkage so that SDL finds it.
extern "C" int main( int argc, char* argv[] ) {
    // Setup SDL
    // (Some versions of SDL before <2.0.10 appears to have performance/stalling issues on a minority of Windows systems,
    // depending on whether SDL_INIT_GAMECONTROLLER is enabled or disabled.. updating to latest version of SDL is recommended!)
    if( SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER) != 0 ) {
        SDL_Log( "Error: %s", SDL_GetError() );
        return -1;
    }
    
    // Setup window
    const SDL_WindowFlags window_flags = (SDL_WindowFlags)( SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI );
    SDL_Window* window = SDL_CreateWindow( "Airbrush", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1280, 720, window_flags );
    
    // Setup SDL_Renderer instance
    SDL_Renderer* renderer = SDL_CreateRenderer( window, -1, SDL_RENDERER_PRESENTVSYNC | SDL_RENDERER_ACCELERATED );
    if( renderer == nullptr ) {
        SDL_Log("ERROR: Could not create SDL_Renderer.");
        return -1;
    }
    SDL_RendererInfo info;
    SDL_GetRendererInfo( renderer, &info );
    SDL_Log( "Current SDL_Renderer: %s", info.name );
    
    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    //io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    //io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    // Setup Dear ImGui style
    // ImGui::StyleColorsDark();
    ImGui::StyleColorsLight();

    // Setup Platform/Renderer backends
    ImGui_ImplSDL2_InitForSDLRenderer( window, renderer );
    ImGui_ImplSDLRenderer_Init( renderer );

    // Load Fonts
    // - If no fonts are loaded, dear imgui will use the default font. You can also load multiple fonts and use ImGui::PushFont()/PopFont() to select them.
    // - AddFontFromFileTTF() will return the ImFont* so you can store it if you need to select the font among multiple.
    // - If the file cannot be loaded, the function will return NULL. Please handle those errors in your application (e.g. use an assertion, or display an error and quit).
    // - The fonts will be rasterized at a given size (w/ oversampling) and stored into a texture when calling ImFontAtlas::Build()/GetTexDataAsXXXX(), which ImGui_ImplXXXX_NewFrame below will call.
    // - Read 'docs/FONTS.md' for more instructions and details.
    // - Remember that in C/C++ if you want to include a backslash \ in a string literal you need to write a double backslash \\ !
    //io.Fonts->AddFontDefault();
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/Roboto-Medium.ttf", 16.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/Cousine-Regular.ttf", 15.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/DroidSans.ttf", 16.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/ProggyTiny.ttf", 10.0f);
    //ImFont* font = io.Fonts->AddFontFromFileTTF("c:\\Windows\\Fonts\\ArialUni.ttf", 18.0f, NULL, io.Fonts->GetGlyphRangesJapanese());
    //IM_ASSERT(font != NULL);

    // Our state
    int flow_rate = 66;
    int mouse_last_x(-1), mouse_last_y(-1);
    Uint64 lastPaintTicks = SDL_GetTicks64() - flow_rate;
    // Where to save
    char save_path[2048] = "artwork.png";
    
    // The airbrush
    BrushState last_state;
    BrushState new_state;
    graphics101::Image airbrush_image;
    // Create the airbrush image.
    AirbrushFromState( airbrush_image, new_state );
    // Create the texture.
    SDL_Texture* airbrush_tex = CreateTextureForImage( renderer, airbrush_image );
    if( UploadImageToTexture( airbrush_image, airbrush_tex ) != 0 ) SDL_Log( "Error: %s", SDL_GetError() );
    
    // The canvas
    graphics101::Image canvas_image;
    {
        int w, h;
        SDL_GetWindowSize( window, &w, &h );
        canvas_image.resize( w, h, graphics101::ColorRGBA8( 255, 255, 255, 255 ) );
    }
    SDL_Texture* canvas_tex = CreateTextureForImage( renderer, canvas_image );
    if( UploadImageToTexture( canvas_image, canvas_tex ) != 0 ) SDL_Log( "Error: %s", SDL_GetError() );
    
    // Main loop
    bool done = false;
    while( !done ) {
        // Poll and handle events (inputs, window resize, etc.)
        // You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
        // - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application, or clear/overwrite your copy of the mouse data.
        // - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application, or clear/overwrite your copy of the keyboard data.
        // Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
        SDL_Event event;
        while( SDL_PollEvent( &event ) ) {
            ImGui_ImplSDL2_ProcessEvent( &event );
            if( event.type == SDL_QUIT ) { done = true; }
            if( event.type == SDL_WINDOWEVENT && event.window.event == SDL_WINDOWEVENT_CLOSE && event.window.windowID == SDL_GetWindowID(window) ) { done = true; }
            // Resize canvas upon resize event.
            if( event.type == SDL_WINDOWEVENT && event.window.event ==  SDL_WINDOWEVENT_SIZE_CHANGED ) {
                SDL_Log( "New window size: %d x %d", event.window.data1, event.window.data2 );
                canvas_image.resize( event.window.data1, event.window.data2, graphics101::ColorRGBA8(255,255,255,255) );
                // Re-create the texture.
                SDL_DestroyTexture( canvas_tex );
                canvas_tex = CreateTextureForImage( renderer, canvas_image );
                if( UploadImageToTexture( canvas_image, canvas_tex ) != 0 ) SDL_Log( "Error: %s", SDL_GetError() );
            }
        }
        
        // Start the Dear ImGui frame
        ImGui_ImplSDLRenderer_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();
        
        // 1. Show the big demo window (Most of the sample code is in ImGui::ShowDemoWindow()! You can browse its code to learn more about Dear ImGui!).
        // static bool show_demo_window = true;
        // ImGui::ShowDemoWindow(&show_demo_window);
        
        // 2. Our window.
        {
            ImGui::Begin("Airbrush Parameters"); // Create a window for the airbrush parameters.
            
            ImGui::Combo( "Shape", reinterpret_cast<int*>(&new_state.shape), "Constant\0Linear\0Quadratic\0Special\0\0" );
            ImGui::ColorPicker4("Color", (float*)&new_state.color, ImGuiColorEditFlags_AlphaBar | ImGuiColorEditFlags_PickerHueWheel | ImGuiColorEditFlags_NoDragDrop );
            ImGui::SliderInt("Radius", &new_state.radius, 1, 100 );
            ImGui::SliderInt("Flow rate", &flow_rate, 0, 300 );
            ImGui::Image( airbrush_tex, ImVec2(airbrush_image.width(), airbrush_image.height()), ImVec2(0.0f, 0.0f), ImVec2(1.0f, 1.0f), ImVec4(1.0f, 1.0f, 1.0f, 1.0f), ImVec4(1.0f, 1.0f, 1.0f, 0.0f) );
            
            if( ImGui::Button("Save") ) {
                canvas_image.save( save_path );
                SDL_Log( "Saved image to: %s", save_path );
            }
            ImGui::SameLine();
            ImGui::InputTextWithHint( "##", "artwork.png", save_path, IM_ARRAYSIZE(save_path) );
            
            ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
            ImGui::End();
        }
        
        // Rendering
        ImGui::Render();
        SDL_SetRenderDrawColor( renderer, 255, 255, 255, 255 );
        // Clear to white
        SDL_RenderClear( renderer );
        
        // Draw the canvas
        if( !io.WantCaptureMouse ) {
            // If the mouse is down and moved or enough time elapsed, deposit paint.
            int mouse_x, mouse_y;
            const Uint32 buttons = SDL_GetMouseState( &mouse_x, &mouse_y );
            Uint64 nowPaintTicks = SDL_GetTicks64();
            // Draw if the pressed mouse has moved or enough time has passed.
            if(
                (buttons & SDL_BUTTON_LMASK) != 0
                &&
                ( mouse_x != mouse_last_x || mouse_y != mouse_last_y || nowPaintTicks - lastPaintTicks > flow_rate )
                ) {
                // Draw into the canvas.
                graphics101::Rect dirty = graphics101::paint_at( canvas_image, airbrush_image, mouse_x, mouse_y );
                // Update the dirty region of the canvas.
                SDL_Rect dirty_tex = { dirty.x, dirty.y, dirty.width, dirty.height };
                SDL_UpdateTexture( canvas_tex, &dirty_tex, canvas_image.scanline(dirty.y) + dirty.x, sizeof(graphics101::ColorRGBA8)*( canvas_image.scanline(1)-canvas_image.scanline(0) ) );
                
                // Update our mouse tracking state.
                mouse_last_x = mouse_x;
                mouse_last_y = mouse_y;
                lastPaintTicks = nowPaintTicks;
            }
        }
        
        // Draw the canvas.
        SDL_RenderCopy( renderer, canvas_tex, nullptr, nullptr );
        
        // Draw ImGui
        ImGui_ImplSDLRenderer_RenderDrawData( ImGui::GetDrawData() );
        // Swap buffers
        SDL_RenderPresent( renderer );
        
        // Update the airbrush image after we finish drawing, since we might destroy the airbrush_tex we passed to ImGui.
        if(!(last_state == new_state)) {
            // SDL_Log( "Updating airbrush." );
            // Re-create the airbrush image.
            AirbrushFromState( airbrush_image, new_state );
            // If the brush changed size, re-create the texture.
            if( last_state.radius != new_state.radius ) {
                SDL_DestroyTexture( airbrush_tex );
                airbrush_tex = CreateTextureForImage( renderer, airbrush_image );
            }
            if( UploadImageToTexture( airbrush_image, airbrush_tex ) != 0 ) SDL_Log( "Error: %s", SDL_GetError() );
            // Upload the texture data.
            last_state = new_state;
        }
    }
    
    // Save the image
    canvas_image.save( "last_canvas.png" );
    SDL_Log( "Saved image to: %s", "last_canvas.png" );
    
    // Cleanup
    ImGui_ImplSDLRenderer_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();
    
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    
    return 0;
}

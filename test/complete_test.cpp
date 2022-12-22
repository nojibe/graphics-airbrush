#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include <cmath> // std::abs
#include <vector>
#include "airbrush.h"

#include <iostream>

namespace graphics101 {
bool operator==( const ColorRGBA8& lhs, const ColorRGBA8& rhs ) {
    return
        lhs.r == rhs.r &&
        lhs.g == rhs.g &&
        lhs.b == rhs.b &&
        lhs.a == rhs.a
        ;
}
bool CloseColors( const ColorRGBA8& lhs, const ColorRGBA8& rhs, int threshold = 2 ) {
    return
        std::abs( lhs.r - rhs.r ) < threshold &&
        std::abs( lhs.g - rhs.g ) < threshold &&
        std::abs( lhs.b - rhs.b ) < threshold &&
        std::abs( lhs.a - rhs.a ) < threshold
        ;
}
int MaxChannelDifference( const ColorRGBA8& lhs, const ColorRGBA8& rhs ) {
    return std::max( std::abs( lhs.r - rhs.r ), std::max( std::abs( lhs.g - rhs.g ), std::max( std::abs( lhs.b - rhs.b ), std::abs( lhs.a - rhs.a ) ) ) );
}
int MaxImageChannelDifference( const Image& lhs, const Image& rhs ) {
    CHECK( lhs.width() == rhs.width() );
    CHECK( lhs.height() == rhs.height() );
    
    int maxdiff = 0;
    for( int x = 0; x < lhs.width(); x++ ) {
        for( int y = 0; y < lhs.height(); y++ ) {
            const int diff = MaxChannelDifference( lhs.pixel(x,y), rhs.pixel(x,y) );
            if( diff > maxdiff ) maxdiff = diff;
        }
    }
    
    return maxdiff;
}

bool operator==( const Rect& lhs, const Rect& rhs ) {
    return
        lhs.x == rhs.x &&
        lhs.y == rhs.y &&
        lhs.width == rhs.width &&
        lhs.height == rhs.height
        ;
}
}

using namespace graphics101;

TEST_CASE( "Complete Test" ) {
    Image canvas( 400, 300, ColorRGBA8( 255, 255, 255, 255 ) );
    Image brush;
    
    // Let's store all of our rects.
    std::vector< Rect > rects;
    
    // Let's paint at various places.
    
    // Constant blue-ish brush
    create_airbrush( brush, AirBrushShape::Constant, 145, ColorRGBA8( 25, 77, 210, 100 ) );
    
    // Top left
    rects.push_back( paint_at( canvas, brush, 1, 3 ) );
    // Top right
    rects.push_back( paint_at( canvas, brush, 398, 10 ) );
    // Bottom left
    rects.push_back( paint_at( canvas, brush, 4, 295 ) );
    // Bottom right
    rects.push_back( paint_at( canvas, brush, 396, 294 ) );
    // Top center
    rects.push_back( paint_at( canvas, brush, 170, 3 ) );
    // Right center
    rects.push_back( paint_at( canvas, brush, 398, 150 ) );
    // Bottom center
    rects.push_back( paint_at( canvas, brush, 200, 299 ) );
    // Left center
    rects.push_back( paint_at( canvas, brush, 5, 150 ) );
    // Center somewhere
    rects.push_back( paint_at( canvas, brush, 100, 100 ) );
    
    
    // Linear yellow-ish brush
    create_airbrush( brush, AirBrushShape::Linear, 60, ColorRGBA8( 150, 125, 20, 150 ) );
    
    // Top left
    rects.push_back( paint_at( canvas, brush, 10, 13 ) );
    // Top right
    rects.push_back( paint_at( canvas, brush, 380, 05 ) );
    // Bottom left
    rects.push_back( paint_at( canvas, brush, 9, 285 ) );
    // Bottom right
    rects.push_back( paint_at( canvas, brush, 390, 290 ) );
    // Top center
    rects.push_back( paint_at( canvas, brush, 210, 20 ) );
    // Right center
    rects.push_back( paint_at( canvas, brush, 380, 120 ) );
    // Bottom center
    rects.push_back( paint_at( canvas, brush, 230, 280 ) );
    // Left center
    rects.push_back( paint_at( canvas, brush, 0, 190 ) );
    // Center somewhere
    rects.push_back( paint_at( canvas, brush, 100, 200 ) );
    
    
    // Quadratic cyan-ish brush
    create_airbrush( brush, AirBrushShape::Linear, 30, ColorRGBA8( 20, 200, 230, 200 ) );
    
    // Top left
    rects.push_back( paint_at( canvas, brush, 0, 0 ) );
    // Top right
    rects.push_back( paint_at( canvas, brush, 399, 0 ) );
    // Bottom left
    rects.push_back( paint_at( canvas, brush, 0, 299 ) );
    // Bottom right
    rects.push_back( paint_at( canvas, brush, 399, 299 ) );
    // Top center
    rects.push_back( paint_at( canvas, brush, 200, 0 ) );
    // Right center
    rects.push_back( paint_at( canvas, brush, 399, 150 ) );
    // Bottom center
    rects.push_back( paint_at( canvas, brush, 200, 299 ) );
    // Left center
    rects.push_back( paint_at( canvas, brush, 0, 150 ) );
    // Center somewhere
    rects.push_back( paint_at( canvas, brush, 200, 150 ) );
    
#define GENERATE_SOLUTION 0
#if GENERATE_SOLUTION
    // Process:
    /*
    # define GENERATE_SOLUTION 1
    git checkout solution
    make
    ./test/complete_test &> ../test/complete_test_solution.cpp
    # trim the top and bottom of "../test/complete_test_solution.cpp"
    # Uncomment "#include "complete_test_solution.cpp""
    */
    
    // Generate the correct output on a solution build.
    canvas.save("complete_test.png");
    
    std::cerr << "    Image canvas_check( " << canvas.width() << ", " << canvas.height() << " );\n";
    for( int x = 0; x < canvas.width(); x++ ) {
        for( int y = 0; y < canvas.height(); y++ ) {
            std::cerr << "    canvas_check.pixel(" << x << "," << y << ") = ColorRGBA8( "
                << int(canvas.pixel(x,y).r) << ", "
                << int(canvas.pixel(x,y).g) << ", "
                << int(canvas.pixel(x,y).b) << ", "
                << int(canvas.pixel(x,y).a) << " );\n";
        }
    }
    std::cerr << "    CHECK( MaxImageChannelDifference( canvas, canvas_check ) < 2 );\n\n";
    std::cerr << "    for( const auto& rect : rects ) {\n";
    for( const auto& rect : rects ) {
        std::cerr << "        CHECK( rect == Rect( " << rect.x << ", " << rect.y << ", " << rect.width << ", " << rect.height << " ) );\n";
    }
    std::cerr << "    }\n";
#endif
    
// #include "complete_test_solution.cpp"
}

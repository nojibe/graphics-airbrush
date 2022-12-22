#ifndef __airbrush__h__
#define __airbrush__h__

#include "image.h"
#include <string>

namespace graphics101
{
    enum class AirBrushShape : int {
        Constant = 0,
        Linear,
        Quadratic,
        Special,
        NumAirBrushShapes
    };
    std::string StringFromAirBrushShape( AirBrushShape type );
    AirBrushShape AirBrushShapeFromString( const std::string& str );
    
    struct Rect {
        int x = -1;
        int y = -1;
        int width = 0;
        int height = 0;
        
        Rect( int x_, int y_, int width_, int height_ ) : x( x_ ), y( y_ ), width( width_ ), height( height_ ) {}
    };
    
    /*
     * Given:
     *      an AirBrushShape `shape`
     *      a non-zero `radius`
     *      an RGBA `color`
     * saves an RGBA airbrush image with dimensions (1+2*radius)-by-(1+2*radius)
     * into output parameter `airbrush_image_out`.
     */
    void create_airbrush( Image& airbrush_image_out, AirBrushShape shape, int radius, ColorRGBA8 color );
    /*
     * Given:
     *     `image_to_modify` (input/output parameter): an Image to paint into
     *     `airbrush_image`: an Image with an RGBA airbrush image (guaranteed to be square and have odd dimensions).
     *     `center_x`, `center_y`: an integer x,y position in the image.
     * Modifies `image_to_modify` by spraying the airbrush into it.
     * Returns:
     *     Rect: the rectangle in the image that was modified.
     */
    Rect paint_at( Image& image_to_modify,
                    const Image& airbrush_image,
                    int center_x,
                    int center_y
                    );
};

#endif /* __airbrush__h__ */

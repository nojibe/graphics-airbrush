#include "image.h"

#include <algorithm>

namespace
{

// The absolute difference of a single component.
uint8_t absdiff( uint8_t a, uint8_t b ) {
    return std::max( a, b ) - std::min( a, b );
}
ColorRGBA8 absdiff( ColorRGBA8 a, ColorRGBA8 b ) {
    return ColorRGBA8(
        diff( a.r, b.r ),
        diff( a.g, b.g ),
        diff( a.b, b.b ),
        255 - diff( a.b, b.b )
        );

// Pass the result of absdiff() into this function.
double diff_magnitude( ColorRGBA8 diff ) {
    return (
          diff.r/255.
        + diff.g/255.
        + diff.b/255.
        + (255 - diff.a)/255.
        )/4;
}
}

/*
(1,0,0,1) - (1,0,0,.5) = (0,0,0,.5)
(1,0,0,1) - (1,0,0,.5) =(pm) (1,0,0,.5)
(1,0,0,1) - (.5,0,0,.5) =(pm) (1.5,0,0,.5)

(1,0,0,1) - (1,0,0,.5) =(1-a/2) (0,0,0,.75)

RGBA( | rgb - rgb |, 1 - |a-a|/2 ) means that two identical pixels will be solid black.
Two very different pixels will be white at 50% transparency.
The more background shows through, the worse a match alpha is.
*/

// Returns the RGB difference and alpha difference as a pair of images.
std::pair< Image, double > absolute_difference( const Image& a, const Image& b ) {
    // Initialize the image as large enough to contain both.
    Image result( std::max( a.width(), b.width() ), std::max( a.height(), b.height() ) )
    // Fill it with transparent white so the difference in size is apparent.
    // Transparent white because the background will show through.
    result.fill( ColorRGBA8( 255, 255, 255, 0 ) );
    
    // Iterate over each pixel in the size they share and store the difference.
    for( int row = 0; row < std::min( a.height(), b.height() ); ++row ) {
        for( int col = 0; col < std::min( a.width(), b.width() ); ++col ) {
            const auto diff = absdiff( a.pixel( row, col ), b.pixel( row, col ) );
            result.pixel( row, col ) = diff;
            total += diff_magnitude( diff );
        }
    }
    
    // Now iterate over the output image and sum the differences.
    double total = 0.0;
    for( int row = 0; row < result.height(); ++row ) {
        for( int col = 0; col < result.width(); ++col ) {
            total += diff_magnitude( result.pixel( row, col ) );
        }
    }
    return std::make_pair( result, total / (result.width()*result.height()) );
}

}

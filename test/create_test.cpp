#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include <cmath> // std::abs
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
bool SameRGBIgnoreA( const ColorRGBA8& lhs, const ColorRGBA8& rhs ) {
    return
        lhs.r == rhs.r &&
        lhs.g == rhs.g &&
        lhs.b == rhs.b
        ;
}
}

using namespace graphics101;

TEST_CASE( "Create Airbrush Constant Test" ) {
    const ColorRGBA8 color( 100, 150, 200, 30 );
    const int radius = 50;
    Image airbrush_image;
    
    create_airbrush( airbrush_image, AirBrushShape::Constant, radius, color );
    
    // Check the dimensions of the output.
    CHECK( airbrush_image.width() == 2*radius + 1 );
    CHECK( airbrush_image.height() == 2*radius + 1 );
    
    // The corner should be transparent.
    CHECK( airbrush_image.pixel( 0, 0 ).a == 0 );
    
    // The center should be color.
    CHECK( airbrush_image.pixel( radius, radius ) == color );
    
    // Another point inside should be color.
    CHECK( airbrush_image.pixel( radius/5, radius ) == color );
}

TEST_CASE( "Create Airbrush Linear Test" ) {
    const ColorRGBA8 color( 100, 150, 200, 30 );
    const int radius = 50;
    Image airbrush_image;
    
    create_airbrush( airbrush_image, AirBrushShape::Linear, radius, color );
    
    // Check the dimensions of the output.
    CHECK( airbrush_image.width() == 2*radius + 1 );
    CHECK( airbrush_image.height() == 2*radius + 1 );
    
    // The corner should be transparent.
    CHECK( airbrush_image.pixel( 0, 0 ).a == 0 );
    
    // The center should be color.
    CHECK( airbrush_image.pixel( radius, radius ) == color );
    
    // Another point inside should have color's RGB.
    CHECK( SameRGBIgnoreA( airbrush_image.pixel( radius/2, radius ), color ) );
    // Alpha should be scaled down.
    // std::cerr << "airbrush_image.pixel( radius/5, radius ).a: " << int(airbrush_image.pixel( radius/5, radius ).a) << std::endl;
    // 5 is 2% of the range of values.
    CHECK( std::abs( airbrush_image.pixel( radius/5, radius ).a - 6 ) <= 5 );
}

TEST_CASE( "Create Airbrush Quadratic Test" ) {
    const ColorRGBA8 color( 100, 150, 200, 30 );
    const int radius = 50;
    Image airbrush_image;
    
    create_airbrush( airbrush_image, AirBrushShape::Quadratic, radius, color );
    
    // Check the dimensions of the output.
    CHECK( airbrush_image.width() == 2*radius + 1 );
    CHECK( airbrush_image.height() == 2*radius + 1 );
    
    // The corner should be transparent.
    CHECK( airbrush_image.pixel( 0, 0 ).a == 0 );
    
    // The center should be color.
    CHECK( airbrush_image.pixel( radius, radius ) == color );
    
    // Another point inside should have color's RGB.
    CHECK( SameRGBIgnoreA( airbrush_image.pixel( radius/2, radius ), color ) );
    // Alpha should be scaled down.
    // std::cerr << "airbrush_image.pixel( radius/5, radius ).a: " << int(airbrush_image.pixel( radius/5, radius ).a) << std::endl;
    // 5 is 2% of the range of values.
    CHECK( std::abs( airbrush_image.pixel( radius/5, radius ).a - 2 ) <= 5 );
}

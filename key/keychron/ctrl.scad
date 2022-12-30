// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

use <../src/key.scad>

include <../src/settings.scad>
include <../src/key_sizes.scad>
include <../src/key_profiles.scad>
include <../src/key_types.scad>
include <../src/key_transformations.scad>


//$has_brim=true;

$inverted_dish = true;
$stem_type = "rounded_cherry";
$total_depth = 4.5;
$dish_depth = 1;
//$stem_inset = -1.0;
$stabilizers = [[11.25, -1.0]];
$stem_positions = [[-8.25, -0.0]];
$keytop_thickness = 1;
$wall_thickness = 2;
$key_length = 2.0;

$bottom_key_width = 16.5;
$bottom_key_height = 16.5;
$width_difference = 2;
$height_difference = 2;


$top_tilt = -3;
$top_skew = 0;

$stabilizer_type = "fatten_cherry"; // [cherry, rounded_cherry, alps, disable]
$support_type = "flared";
$fatten_cherry_stem_d = 6.0;
$stem_support_type = "disable";
//dsa_row(5) {}
$dish_type =  "sideways cylindrical";
// $dish_depth = 0.1;
key();

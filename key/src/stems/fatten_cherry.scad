include <../functions.scad>
include <cherry.scad>

// .005 purely for aesthetics, to get rid of that ugly crosshatch
function cherry_cross2(slop, off, extra_vertical = 0) = [
  // horizontal tine
  [4.03 + slop + off, 1.15 + slop / 3 + off],
  // vertical tine
  [1.25 + slop / 3 + off, 4.23 + extra_vertical + slop / 3 + .005 + off],
];

module fatten_cherry_stem(depth, slop) {
  difference(){
    $cross = cherry_cross2(slop, 0.8, extra_vertical = 0.6);

    linear_extrude(height = $stem_throw) {
      square($cross[0], center=true);
      square($cross[1], center=true);
    }

    // inside cross
    // translation purely for aesthetic purposes, to get rid of that awful lattice
    inside_cherry_cross(slop);
  }
}

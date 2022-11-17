$fn=100;
difference() {
    linear_extrude(4) import("cheeseknife_outer.svg", dpi=96);
    translate([0, 0, 1.175]) linear_extrude(1.65) import("cheeseknife_inner.svg", dpi=96);
}


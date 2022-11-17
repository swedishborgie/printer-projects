$fn=100;
difference() {
    linear_extrude(6) import("breadknife_outer.svg", dpi=96);
    translate([0, 0, 1.95]) linear_extrude(2.1) import("breadknife_inner.svg", dpi=96);
}


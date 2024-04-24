$fn=100;

difference() {
    linear_extrude(12) square([40*3,40*3]);
    scale([0.95, 0.95, 0.95]) translate([52.5, 52.5, 5]) rotate_extrude(angle=360, convexity=0) {
        translate([52.5005, 0, 0]) rotate([180,0,180]) import("measuringcup.svg");
    }
}
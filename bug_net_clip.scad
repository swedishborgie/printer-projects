width = 20;
depth = 24;
headMaxRadius = (0.279 * 25.4) / 2;
headMinRadius = (0.138 * 25.4) / 2;
headHeight = (0.083 * 25.4);
headOffset = 2;

$fn=100;

difference() {
    union() {
        cube([depth, width, 2]);
        translate([0, 0, 2]) cube([2, width, 2]);
        translate([depth-3, 0, 2]) cube([3, width, 2]);
        translate([4, 0, 3]) cube([20, width, 3]);
    }
    union() {
        translate([(depth/2)+headOffset,width/2,4]) cylinder(headHeight, headMinRadius, headMaxRadius);
        translate([(depth/2)+headOffset,width/2,-1]) cylinder(6, headMinRadius, headMinRadius);
    }
}
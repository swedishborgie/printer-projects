$fn=100;
/*
// Latch Plate
radius=25.4*0.25;
width=30;
height=2.25*25.4;
*/

radius=15.9;
width=28;
height=4*25.4;

linear_extrude(2) union() {
    difference() {
        union() {
            translate([radius, radius, 0]) circle(r=radius);
            translate([radius, height-radius, 0]) circle(r=radius);
        }
        translate([width, 0, 0]) square([width, height]);
    }
    translate([0, radius, 0]) square([width, height-(radius*2)]);
    translate([radius, 0, 0]) square([width-radius, height]);
}
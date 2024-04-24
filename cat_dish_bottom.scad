$fn=100;

translate([0, 0, 3]) {
    translate([0,     0, 0]) standoff();
    translate([0,   112, 0]) standoff();
    translate([232,   0, 0]) standoff();
    translate([231, 111, 0]) standoff();
}
translate([-5, -5, 0]) linear_extrude(3) square([242,124]);
translate([-5, 124-5, 0]) difference() {
    cube([242, 3, 25]);
    translate([30, 3.1, 12.5+1.5]) rotate([90, 0, 0]) cylinder(3.2, 1.5, 4);
    translate([242-30, 3.1, 12.5+1.5]) rotate([90, 0, 0]) cylinder(3.2, 1.5, 4);
}


module standoff() {
    difference() {
        cylinder(h=8, r=4);
        translate([0,0,-0.5]) cylinder(h=9, r=2.5);
    }
}

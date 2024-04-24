$fn=100;

union() {
    difference() {
        cylinder(d=10, h=30);
        translate([0, 0, -0.5]) cylinder(d=5, h=31);
        translate([-5, -10, -0.5]) cube([10, 10, 31]);
        translate([0, 0, 10]) rotate([0, 90, 0]) cylinder(d=5, h=20);
    }
    translate([0, 0, 10]) rotate([0, 90, 0]) difference() {
        cylinder(d=10, h=20);
        translate([-5, 0, 0]) rotate([0, 90, 0]) cylinder(d=5, h=20);
        translate([-5, -10, -0.5]) cube([10, 10, 21]);
        translate([0, 0, -0.5]) cylinder(d=5, h=21);
    }
    difference() {
        translate([2.5, 0, 12.5]) cube([17.5, 3, 17.5]);
        translate([12.5, -0.5, 21.5]) rotate([270, 0, 0]) cylinder(r=1.5, h=4);
        translate([12.5, 2, 21.5]) rotate([270, 0, 0]) cylinder(r1=1.5, r2=3, h=1.1);
    }
}




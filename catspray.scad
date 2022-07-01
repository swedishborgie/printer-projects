$fn=100;

topCone();
translate([18, 19.5, 53]) rotate([0, 0, 90]) pirPegs();
translate([-20, -12, 55]) rotate([90, 0, 0]) color("green") cube([40, 25, 10]);

translate([-45/2, -45/2, 53]) difference() {
    cube([45, 45, 45]);
    union() {
        translate([1.5, 1.5, 2]) cube([42, 42, 50]);
        translate([1.5, 43, 2]) cube([42, 3, 48]);
    }
}

//translate([0,6.5,0]) cube([4,23,23]);

module pirPegs() {
    difference() {
        linear_extrude(24) {
            square([3,6]);
            translate([0, 30, 0]) square([3,6]);
        }
        translate([0, 3, 0]) union() {
            translate([-1, 0, 12]) rotate([0, 90, 0]) cylinder(h=5, d=1.5);
            translate([-1, 30, 12]) rotate([0, 90, 0]) cylinder(h=5, d=1.5);
        }
    }
}


module topCone() {
    difference() {
        difference() {
            cylinder(h=53, d1=48, d2=38);
            translate([0, 0, -1]) cylinder(h=51, d1=45, d2=35);
        }
        translate([-7.5, 0, -1]) cube([15,40,41]);
    }
}
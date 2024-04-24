$fn=100;



module base() {
    linear_extrude(3) difference() {
        square([100,18]);
        translate([2+4, 2+7]) circle(d=4);
        translate([2+100-8, 2+7]) circle(d=4);
    }

    translate([6, 9, -3]) linear_extrude(3) difference() {
        circle(d=8);
        circle(d=4);
    }
        
    translate([94, 9, -3]) linear_extrude(3) difference() {
        circle(d=8);
        circle(d=4);
    }
}

bracket2();

module bracket1() {
    base();

    linear_extrude(3) translate([0, -50, 0]) difference() {
        union() {
            square([20, 50]);
            translate([10, 0, 0]) circle(d=20);
        }
        translate([8, 2, 0]) square([4,30]);
    }
}

module bracket2() {
    translate([100, 0, 3]) rotate([0, 180, 0]) base();

    linear_extrude(3) translate([0, -50, 0]) difference() {
        square([20, 50]);
    }
    difference() {
        translate([0, -50, 0]) linear_extrude(30) square([20, 3]);
        translate([5, -45, 10]) rotate([90, 0, 0]) cylinder(d=4,h=10);
        translate([15, -45, 22]) rotate([90, 0, 0]) cylinder(d=4,h=10);
    }
}
$fn=100;
//shaft();


difference() {
    union() {
        translate([-7, 0, 0]) rotate([90, -90, 90]) union() {
            linear_extrude(4) union() {
                circle(5);
                polygon([[0,-5],[0,5],[30-4.5,2.5],[30-4.5,-2.5]]);
                translate([30-4.5,0]) circle(2.5);
                translate([28,2.5]) circle(1.5);
                polygon([
                    [29.5, 2.5],
                    [28.25, 4],
                    [20,0],
                    [30-2,0]
                ]);
            }
            translate([28, 0, -4]) rotate([0, 0, 90]) linear_extrude(4) union() {
                translate([-4+1.5, 0]) circle(1.5);
                translate([-2.5, -1.5]) square([5,3]);
                translate([4-1.5, 0]) circle(1.5);
            }
        }
        rotate([90, 30, 90]) cylinder(h=15, r=4, center=true);
        translate([-0.5, 0, 8]) rotate([90, 30, 90]) cylinder(h=5, d=3.25, center=true);
    }
    rotate([90, 30, 90]) cylinder(h=115, d=4.7, center=true, $fn=6);
}

module shaft() {
    color("blue") rotate([90, 0, 90]) cylinder(h=115, r=2, center=true, $fn=6);
}
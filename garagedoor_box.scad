$fn=100;


color("black") linear_extrude(1) square([80, 100]);
//translate([9, 2, 7]) boards();
color("#303030") translate([22, 5, 1]) standoff();
color("#303030") translate([76, 49, 1]) standoff();
color("#303030") translate([76, 94, 1]) standoff();
color("#303030") translate([15, 62, 1]) standoff();

color("black") translate([0, 0, 1]) difference() {
    linear_extrude(25) square([80,100]);
    translate([1, 1, -3]) linear_extrude(30) square([78,98]);
    translate([78.5, 21.75, 6.5]) linear_extrude(5) square([2,8]);
    translate([70, 40, 15]) rotate([90, 0, 90]) {
    for (x=[0:5]) {
        for (y=[0:1]) {
            translate([x*2.54,y*2.54,0]) linear_extrude(20) circle(d=.65);
        }
    }
}
}






module standoff() {
    linear_extrude(6) difference() {
        circle(d=6);
        circle(d=4);
    }
}

module boards () {
    color("#000040") translate([0, 55, 0]) difference() {
        linear_extrude(1.5) square([70, 40]);
        translate([6.5,5,-.25]) linear_extrude(2) circle(d=3);
        translate([70-3,40-3,-.25]) linear_extrude(2) circle(d=3);
    }

    translate([10, 0, 0]) union() {
        color("#000040") difference() {
            linear_extrude(1.5) square([60,50]);
            translate([3,3,-.25]) linear_extrude(2) circle(d=3);
            translate([60-3,3,-.25]) linear_extrude(2) circle(d=3);
            translate([3,50-3,-.25]) linear_extrude(2) circle(d=3);
            translate([60-3,50-3,-.25]) linear_extrude(2) circle(d=3);
        }

        color("blue") translate([9,2,1.5]) linear_extrude(15) square([19,15]);

        color("silver") translate([60-6.5, 20, 1.5])linear_extrude(3) square([6.5,7.5]);
    }
}
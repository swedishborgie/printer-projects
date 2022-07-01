// 13, 26
$fn=100;

difference() {
    cylinder(h=30,d=16);
    translate([0,0,-0.5]) cylinder(h=31,d=13);
}
rotate([90,0,0]) translate([-6-15, 15, -5]) difference() {
    difference() {
        cylinder(h=10, d=28);
        translate([0,0,-0.5]) cylinder(h=11, d=26);
    }
    translate([-14,-14, -0.5]) cube([20,28,14]);
}
translate([-20, 2.5, 15]) rotate([90,0,0]) linear_extrude(5) difference() {
    difference() {
        translate([-13.5,-15]) square([27,30]);
        circle(d=26);
    }
    translate([-26,-26]) square([31,52]);
}
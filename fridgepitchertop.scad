$fn=100;

linear_extrude(1.5) import(file="/home/mpowers/fridgepitcher.svg");
translate([0,0,1.5]) linear_extrude(6) import(file="/home/mpowers/fridgepitcher2.svg");

translate([102-7,26,0]) rotate([0, 0, 90]) difference() {
    cube([27,13,8]);
    translate([2.5, 1.5, -1]) cube([22,10,10]);
}
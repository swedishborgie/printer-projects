// 10x3x1
$fn=20;
include<C:\\Users\\swedi\\Downloads\\hinge.scad>;

width = 240;
height = 3 * 25.4;
depth = 25.4;
cutoutSize = 20;
sideDepth = 3;

totalWidth = width+(sideDepth*2);


difference() {
    boxWithHinge();
    translate([(totalWidth*.25), depth+(sideDepth*2)+1, -(height/2)])
    rotate([90, 0, 0])
    cylinder(depth+(sideDepth*2)+2, 2, 2);
    translate([(totalWidth*.75), depth+(sideDepth*2)+1, -(height/2)])
    rotate([90, 0, 0])
    cylinder(depth+(sideDepth*2)+2, 2, 2);
    translate([(totalWidth*.25), depth+(sideDepth*2)-10, -(height/2)])
    rotate([90, 0, 0])
    cylinder(depth+(sideDepth*2)+2, 10, 10);
    translate([(totalWidth*.75), depth+(sideDepth*2)-10, -(height/2)])
    rotate([90, 0, 0])
    cylinder(depth+(sideDepth*2)+2, 10, 10);
    translate([depth, -(depth+(sideDepth*2)), -1])
    cylinder(sideDepth+2, 10, 10);
}

module boxWithHinge() {
        applyHinges([[0,0,0]], [0], sideDepth/2,sideDepth/2, width+(sideDepth*2), 24, 0.5)
    applyExtraAngle([[0,0,0]], [0], sideDepth, sideDepth/2, width+(sideDepth*2), 24, 0.5, 90)
    union() {
        box();
        translate([0, -(depth+(sideDepth*2))-0.5, 0]) cube([width+(sideDepth*2), depth+(sideDepth*2), sideDepth]);
    };
}



module box() {
    translate([0, 0.5, sideDepth-(height+sideDepth)])
    difference() {
        difference() {
            cube([width+(sideDepth*2), depth+(sideDepth*2), height+(sideDepth)]);
            translate([sideDepth, sideDepth, sideDepth]) cube([width, depth, height+1]);
        }
        translate([-1, (depth+sideDepth*2)/2, height/2-(sideDepth*2)]) cutout();
    }
}

module cutout() {
    translate([0, 0, cutoutSize/2])
    rotate([90, 0, 90])
    linear_extrude(sideDepth+2)
    union() {
        circle(cutoutSize/2);
        translate([-cutoutSize/2, 0, 0]) square([cutoutSize, height/2]);
    }
}
// 10x3x1
$fn=10;
include</home/mpowers/hinge.scad>;

width = 240;
height = 3 * 25.4;
depth = 25.4*1.5;
cutoutSize = 20;
sideDepth = 3;

totalHeight = height+(sideDepth*2);
totalWidth = width+(sideDepth*2);
totalDepth = depth+(sideDepth*2);


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
    translate([totalWidth-depth, -(depth+(sideDepth*2)), -1])
    cylinder(sideDepth+2, 10, 10);
}

translate([width/24+1.5, .5, 0]) cube([(width/24)-2, sideDepth/2, sideDepth/2]);


module boxWithHinge() {
    applyHinges([[0,0,0]], [0], sideDepth/2,sideDepth/2, width+(sideDepth*2), 24, 0.5)
    //applyExtraAngle([[0,0,0]], [0], sideDepth, sideDepth/2, width+(sideDepth*2), 24, 0.5, 90)
    union() {
        difference() {
            box();
            translate([-1, -1, 0]) cube([totalWidth+2, totalDepth+2, sideDepth+1]);
        }
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
        translate([-1, totalDepth/2, height/2-(sideDepth*2)]) cutout();
        translate([totalWidth-sideDepth-1, totalDepth/2, height/2-(sideDepth*2)]) cutout();
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
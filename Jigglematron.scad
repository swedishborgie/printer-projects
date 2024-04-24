//25.5x38

//20mm between centers 2.5mm holes
//33mm between centers
//28x17mm 23mm between centers

$fn=100;

boxHeight=60;
boxWidth=50;
boxDepth=20;
wallSize=1;

difference() {
    cube([boxWidth, boxHeight, 20]);
    translate([wallSize, wallSize, wallSize]) cube([boxWidth-(wallSize*2), boxHeight-(wallSize*2), boxDepth]);
    translate([43, -1, 10]) rotate([0, 90, 90]) cylinder(h=3, d=8);
    translate([33, -1, 10]) rotate([0, 90, 90]) cylinder(h=3, d=8);
    translate([4.8, -1, 6]) cube([8,4,3]);
}




translate([6, boxHeight-6, 1]) standoff();
translate([6, boxHeight-6-33, 1]) standoff();
translate([6+20, boxHeight-6, 1]) standoff();
translate([6+20, boxHeight-6-33, 1]) standoff();

translate([boxWidth-6, boxHeight-6, 1]) standoff();
translate([boxWidth-6, boxHeight-6-23, 1]) standoff();

translate([3+1.2,     3+9-1.25, 1]) standoff();
translate([3+1.2+8.9, 3+9-1.25, 1]) standoff();




module standoff () {
    difference() {
        cylinder(h=4,d=6);
        cylinder(h=5,d=3.5);
    }
}
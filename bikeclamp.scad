$fn=1000;

diameter=32;
height=20;
wallSize=3;

difference() {
    difference() {
        union() {
            cylinder(h=height,d=diameter+(wallSize*2));
            translate([-(height/2), height/2, 0]) cube([height,height,height]);
        }
        translate([0,0,-1]) cylinder(h=height+3,d=diameter);
        translate([-11, 22, 10]) rotate([0,90,0]) cylinder(h=22,d=8);
    }
    translate([-40,-40,-1]) cube([40, 80, 40]);
   translate([-wallSize/2,-wallSize-17,-1]) cube([wallSize*1.5,wallSize*2,height+2]);
}

translate([0,-17.23,0]) clip();
translate([0,-17.23,10]) clip();




module clip () {
    difference() {
        union() {
            translate([0,-1.5,0]) cube([3,3,5]);
            cylinder(h=5,d=3);
        }
        translate([0,0,-1])cylinder(h=7,d=1.8);
    }
}
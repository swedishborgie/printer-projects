$fn=100;

linear_extrude(2.5) import("ironman.svg", dpi=300);
translate([77,1.5,0]) cube([30,2.5,15]);
translate([77,4-60,15]) cube([30,60,2.5]);
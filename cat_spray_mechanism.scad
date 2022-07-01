$fn=100;

$bottomStrawHeight = 30;
$tubeOuterWidth = 6;
$tubeInnerWidth = 4;

/*
difference() {
    //cylinder(h=$bottomStrawHeight, d=6);
    translate([-3, -3, 0]) cube([6,6,$bottomStrawHeight]);
    translate([0,0,-0.5]) cylinder(h=$bottomStrawHeight+1, d=4);
}
*/
translate([-$tubeOuterWidth/2,-$tubeOuterWidth/2,0]) 
    cube([$tubeOuterWidth,$tubeOuterWidth, 10]);
rotate([90,0,0])
    translate([-8, 0, 0]) 
    rotate_extrude(angle=90) 
    translate([8,0,0])
    circle(d=4);
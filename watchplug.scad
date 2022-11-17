$fn=100;

margin=0.2;
radius=2.5-margin;
innerRadiusPad=0.3;
innerRadius=(2.5/2)+innerRadiusPad;
width=5-(margin*2);
extra=0.4;
length=10;
height=2;

difference() {
    translate([0, 0, -1]) linear_extrude(height+1) union() {
        translate([radius, 0, 0]) circle(r=radius);
        translate([radius, -radius, 0]) square([length-(radius*2), width], false);
        translate([length-radius, 0, 0]) circle(r=radius);
    }
    translate([0, 0, -height/2]) linear_extrude(height) union() {
        translate([innerRadius*2, 0, 0]) circle(r=innerRadius);
        translate([innerRadius*2+innerRadiusPad, -(innerRadius), 0]) square([(length+innerRadiusPad)-(innerRadius*4)+extra, innerRadius*2], false);
        translate([length-innerRadius*2+innerRadiusPad+extra, 0, 0]) circle(r=innerRadius);
    }
    translate([0, 0, -height/2]) cylinder(h=height+2, r=1.5);
    translate([0, -radius, -height]) cube([radius+innerRadiusPad, width, height+1]);
}
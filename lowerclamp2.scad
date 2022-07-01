$fn=200;

translate([0, in2mm(4.3)/2, 0]) 
    pipeWrap(in2mm(4.0), in2mm(0.1), in2mm(0.5), in2mm(1), in2mm(0.25), in2mm(1));
rotate([0, 90, 180]) 
    translate([0, in2mm(1.5)/2, 0]) 
    pipeWrap(in2mm(1.2), in2mm(0.1), in2mm(0.5), in2mm(1), in2mm(0.25), in2mm(1));


module pipeWrap(diameter, width, innerHeight, outerHeight, padding, clipLength) {
    maxDiameter = (diameter+(width*3));
    
    translate([0, 0, -outerHeight/2]) difference() {
        difference() {
            union() {
                translate([0,0,(outerHeight-(innerHeight+(padding*2)))/2]) difference() {
                    cylinder(h=innerHeight+(padding*2), d=maxDiameter);
                    translate([0,0,-1]) cylinder(h=innerHeight+(padding*2)+2, d=(diameter+width));
                }
                difference() {
                    cylinder(h=outerHeight, d=(diameter+width));
                    translate([0,0,-1]) cylinder(h=outerHeight+2, d=diameter);
                }
            }
            translate([0,0,-1]) union() {
                translate([clipLength/2, -(maxDiameter)/2, 0]) cube([maxDiameter, maxDiameter,outerHeight+2]);
                translate([-maxDiameter-(clipLength/2), -(maxDiameter)/2, 0]) cube([maxDiameter, maxDiameter,outerHeight+2]);
                translate([-maxDiameter/2, 0, 0]) cube([maxDiameter, maxDiameter,outerHeight+2]);
            }
        }
        translate([0,0,(outerHeight-innerHeight)/2]) difference() {
            cylinder(h=innerHeight, d=diameter+(width*2));
            translate([0,0,-1]) cylinder(h=innerHeight+2, d=(diameter+width));
        }
    }
    
    difference() {
        translate([-(clipLength/2), -(maxDiameter/2), -(innerHeight+(padding*2))/2]) cube([clipLength, width*3, innerHeight+(padding*2)]);
        translate([0, 0, -2-((innerHeight+(padding*2))/2)]) cylinder(h=outerHeight+2, d=maxDiameter);
    }
}

function in2mm(value) = value*25.4;
$fn=200;



difference() {
    difference() {
        union() {
            translate([0,0,in2mm(0.2)]) difference() {
                cylinder(h=in2mm(0.6), d=in2mm(4.3));
                translate([0,0,-11]) cylinder(h=in2mm(1.5), d=in2mm(4.1));
            }
            difference() {
                cylinder(h=in2mm(1), d=in2mm(4.1));
                translate([0,0,-11]) cylinder(h=in2mm(1.5), d=in2mm(4));
            }
        }
        translate([0,0,-1]) union() {
            translate([in2mm(0.5), in2mm(-4.5/2), 0]) cube([in2mm(4.5), in2mm(4.5),in2mm(1.2)]);
            translate([-in2mm(4.5)-in2mm(0.5), in2mm(-4.5/2), 0]) cube([in2mm(4.5), in2mm(4.5),in2mm(1.2)]);
            translate([-in2mm(1), -in2mm(1), 0]) cube([in2mm(4.5), in2mm(4.5),in2mm(1.2)]);
        }
    }
    translate([0,0,in2mm(0.25)]) difference() {
        cylinder(h=in2mm(0.5), d=in2mm(4.2));
        translate([0,0,-11]) cylinder(h=in2mm(1.5), d=in2mm(4.1));
    }
}


function in2mm(value) = value*25.4;
$fn=200;

$cupSize = in2mm(5.1);

difference() {
    union() {
        translate([0,0,-in2mm(4)]) {
            cylinder(d1=in2mm(2.8), d2=in2mm(3.25), h=in2mm(4));
            translate([in2mm(3.25+1.5),0,0]) 
                cylinder(d1=in2mm(2.8), d2=in2mm(3.25), h=in2mm(4));
        }

        cylinder(d=in2mm(4),h=5);
        translate([in2mm(3.25+1.5),0,0]) cylinder(d=in2mm(4),h=5);
        translate([in2mm(3.25/2),-in2mm(1.5/2),0]) cube([in2mm(1.5),in2mm(1.5),5]);

        translate([0,0,5]) difference() {
            cylinder(d=$cupSize+5, h=in2mm(2));
            translate([0,0,5]) cylinder(d=$cupSize, h=in2mm(2));
        }
    }
    translate([in2mm(3.25+1.5),0,6-in2mm(4)]) 
                cylinder(d1=in2mm(2.8)-2, d2=in2mm(3.25)-2, h=in2mm(4));
    translate([0,0,11-in2mm(4)]) 
                cylinder(d1=in2mm(2.8)-2, d2=in2mm(3.25)-2, h=in2mm(4));
}

function in2mm(inches) = inches*25.4;
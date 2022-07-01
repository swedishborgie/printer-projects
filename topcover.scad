$fn=200;

difference() {
    translate([0, 0, -2]) union() {
        cylinder(d=115, h=2);
        translate([0, 0, -in2mm(1.2)]) difference() {
            translate([0, 0, 3]) cylinder(d=115, h=in2mm(1.2)-2);
            translate([0, 0, -1]) cylinder(d=113, h=in2mm(1.2)+2);
        }
    }
    translate([-in2mm(0.5), 95/2, -in2mm(1.2+.3)]) cube([in2mm(1), in2mm(1), in2mm(1.2)]);
}



function in2mm(value) = value*25.4;
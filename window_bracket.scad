$fn=100;
translate([4.25+2.5, -26+4.25+2.5, 3.5]) cylinder(10-3.5, r=6.3/2, true);
translate([4.25+2.5, -26+4.25+2.5, 2]) cylinder(1.5, r=4.25, true);

translate([0, -26, 0]) linear_extrude(2) {
    polygon([[0,0], [12, 0], [40,26], [0, 26]]);
}

translate([0, -26, 8]) linear_extrude(2) {
    difference() {
        polygon([[0,0], [12, 0], [40,26], [0, 26]]);
        translate([4.25+2.5, 6.75]) circle(3.6);
    }
}

union() {
    cube([75, 2, 10]);
    difference() {
        cube([75,15,2]);
        union() {
            translate([5.5+2.875, 5.5+2.875, 1.1]) cylinder(2.3, 8.5/2, 5.75/2, true);
            translate([75-(5.5+2.875), 5.5+2.875, 1.1]) cylinder(2.3, 8.5/2, 5.75/2, true);
        }
    }
}


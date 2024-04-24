$fn=100;



difference() {
    union() {
        cube([60,50,1]);
        translate([1,1,1]) cube([58,48,3]);
    }
    union() {
        translate([2,2,1]) cube([56,46,4]);
        translate([30, 30, 5.5])
        rotate([0, 180, 0])
        linear_extrude(5) 
            text(text="Jigglematron", size=5, halign="center", valign="center");
        translate([30, 20, 5.5])
        rotate([0, 180, 0])
        linear_extrude(5) 
            text(text="2.0", size=5, halign="center", valign="center");
    }
    
}

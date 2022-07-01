$fn=100;
cylinder(5, d1=34, d2=32);
translate([0, 0, 10])
union() {
    translate([-10, 2, 0])
        rotate([90, 0, 0]) 
        linear_extrude(4) 
        polygon([[0, 0], [20, 0], [25, 5], [-5, 5]]);
        
    translate([-2, -10, 0])
        rotate([90, 0, 90]) 
        linear_extrude(4) 
        polygon([[0, 0], [20, 0], [25, 5], [-5, 5]]);
}
translate([0, 0, 5]) linear_extrude(5) union() {
    translate([-10, -2, 0]) square([20,4]);
    translate([-2, -10, 0]) square([4,20]);
}

translate([0,0,15]) linear_extrude(55) union() {
    translate([-15, -2, 0]) square([30,4]);
    translate([-2, -15, 0]) square([4,30]);
}
translate([0,0,75])
translate([0,0,5])
rotate([180,0,0])
union() {
    translate([-4.5, 2, 0])
        rotate([90, 0, 0]) 
        linear_extrude(4) 
        polygon([[0, 0], [9, 0], [15+4.5, 10], [-15+4.5, 10]]);
        
    translate([-2, -4.5, 0])
        rotate([90, 0, 90]) 
        linear_extrude(4) 
        polygon([[0, 0], [9, 0], [15+4.5, 10], [-15+4.5, 10]]);
}
translate([0, 0, 80]) cylinder(9, d1=9, d2=16);
translate([-8, 0, 86]) linear_extrude(3) square([16, 8]);
translate([0, 8, 96]) rotate([90, 180, 0]) linear_extrude(4) difference() {
    union() {
        circle(8);
        translate([-8, 0, 0]) square([16, 8]);
    }
    circle(4.5);
}
//linear_extrude(4) square(16);
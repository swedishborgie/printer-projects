$fn=100;

height = 2.6*25.4*1.6;

difference() {
    translate([0, -6, 0])
    linear_extrude(5)
        heart(height / (3 * sin(45) + 1), true);
    union() {
        translate([-(2.2*25.4)/2, -1, 0]) linear_extrude(3.2) square([2.2*25.4, 2]);
        translate([-1, -(2.2*25.4)/2, 0]) linear_extrude(3.2) square([2, 2.2*25.4]);
        translate([-10,-17.5,0]) linear_extrude(3.2) square([20, 35]);
        linear_extrude(3.2) difference() {
            circle(d=2.7*25.4);
            circle(d=1.9*25.4);
        }
    }
}




module heart_sub_component(radius) {
    rotated_angle = 45;
    diameter = radius * 2;
    $fn = 48;

    translate([-radius * cos(rotated_angle), 0, 0]) 
        rotate(-rotated_angle) union() {
            circle(radius);
            translate([0, -radius, 0]) 
                square(diameter);
        }
}

module heart(radius, center = false) {
    offsetX = center ? 0 : radius + radius * cos(45);
    offsetY = center ? 1.5 * radius * sin(45) - 0.5 * radius : 3 * radius * sin(45);

    translate([offsetX, offsetY, 0]) union() {
        heart_sub_component(radius);
        mirror([1, 0, 0]) heart_sub_component(radius);
    }

}



$fn=100; 

bird_feeder_top(5);

module bird_feeder_top(inlets)  {
    inlet_hole_depth = 48;
    inlet_hole_radius = 4;
    top_svg_size = 41;
    inner_hole_radius = 25;
    
    difference() {
        rotate_extrude(angle=360) translate([-inner_hole_radius-top_svg_size,0,0]) import(file="hummingbird_feeder_top.svg");
        union() {
            for(i = [0:inlets-1]) {
                rotate(i * (360/inlets)) translate([inlet_hole_depth, 0, 0]) cylinder(h=50, r=inlet_hole_radius);
            }
        }
    }
    
    for(i = [0:inlets-1]) {
        bird_stand(i * (360/inlets), top_svg_size+inner_hole_radius);
    }
}

module bird_stand(angle, feeder_radius) {
    stand_outer_radius=16;
    stand_size=2;
    shrink=5;
    linear_extrude(stand_size) {
        difference() {
            rotate(angle) translate([feeder_radius-shrink, 0, 0]) difference() {
                circle(stand_outer_radius);
                circle(stand_outer_radius-stand_size);
            }
            circle(feeder_radius);
        }
    }
}

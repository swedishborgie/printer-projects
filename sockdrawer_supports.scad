depth=3;
size=15;
$fn=100;


//cornerSupport();
centerSupport();


module centerSupport() {
    difference() {
        union() {
            linear_extrude(depth) square([size,size*2]);
            translate([depth, 0, 0]) 
                rotate([0, -90, 0]) 
                linear_extrude(depth) 
                square([size,size*2]);
            
            translate([size, depth, depth]) 
                rotate([90, -90, 0]) 
                linear_extrude(depth) 
                polygon([[0,0],[0, size-depth], [size-depth,size-depth]]);
            
            translate([size, (size*2), depth])
                rotate([90, -90, 0]) 
                linear_extrude(depth) 
                polygon([[0,0],[0, size-depth], [size-depth,size-depth]]);
        }
        
        translate([depth+.1, (size/2)+depth/2, (size/2)+depth/2]) 
            rotate([-180, 90, 0])
            cylinder(depth+.2, 4, 2);
        
        translate([depth+.1, (size*2)-(size/2)-(depth/2), (size/2)+depth/2]) 
            rotate([-180, 90, 0])
            cylinder(depth+.2, 4, 2);
    }
}

module cornerSupport() {
    difference() {
        union() {
            linear_extrude(depth) square(size);
            translate([0, depth, 0]) rotate([90, 0, 0]) linear_extrude(depth) square(size);
            translate([depth, 0, 0]) rotate([0, -90, 0]) linear_extrude(depth) square(size);
        }
        translate([depth+.1, (size/2)+depth/2, (size/2)+depth/2]) 
            rotate([-180, 90, 0])
            cylinder(depth+.2, 4, 2);
        
        translate([(size/2)+depth/2, depth+.1, (size/2)+depth/2]) 
            rotate([-180, 90, 90])
            cylinder(depth+.2, 4, 2);
    }
}
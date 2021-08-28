clip();

 translate([30, 100, 0]) rotate([90, 0, 270]) linear_extrude(60) polygon([[0,0],[100, 20], [100, 0]]);

module clip() {
    translate([-5, -34, 0]) {
        translate([0, 0, 5]) topClip();
        translate([3, 14, 3]) cube([4, 20, 2]);
        translate([-2.5, 6, 0]) cube([15, 28, 3]);
        translate([2.5, 30, 9]) cube([5, 4, 3]);
    }
}

module topClip() {
    difference() {
        cube([10,34,4]);
        translate([11, 15, 0]) rotate([90, 0, 270]) linear_extrude(12) polygon([[-1,-1],[13,2],[13,-1]]);
    }
}


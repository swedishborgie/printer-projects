// 21cm 88mm 11mm

translate([-5,0,0]) side();
translate([5+62,0,0]) mirror([1,0,0]) side();
cube([62,7,11]);
translate([0,203,0]) cube([62,7,11]);
translate([67,0,0]) cube([15,210,11]);

module side() {
difference() {
    cube([10,210,11]);
    union() {
        for(i=[0:50]) {
            translate([5,7+3.88*i,-0.5]) cube([6,2,12]);
        }
    }
}
}
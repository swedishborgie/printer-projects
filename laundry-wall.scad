overhang=15;
depth=20;
innerOverhang=25;
innerWidth=213;
innerHeight=192;
wallThickness=2;

union() {
    translate([0,0,wallThickness])
    linear_extrude(depth)
    difference() {
        square([innerWidth+wallThickness,innerHeight+wallThickness], true);
        square([innerWidth,innerHeight], true);
    }
    
    translate([0,0,wallThickness])
    linear_extrude(depth)
    difference() {
        square([(innerWidth-innerOverhang)+wallThickness,(innerHeight-innerOverhang)+wallThickness], true);
        square([(innerWidth-innerOverhang),(innerHeight-innerOverhang)], true);
    }

    linear_extrude(wallThickness)
    difference() {
        square([innerWidth+overhang,innerHeight+overhang], true);
        square([innerWidth,innerHeight], true);
    }
    
    linear_extrude(wallThickness)
    difference() {
        square([innerWidth,innerHeight], true);
        square([innerWidth-innerOverhang,innerHeight-innerOverhang], true);
    }
}

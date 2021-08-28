$fn=100;

boltLength=30;
boltInside=5;
boltRadius=3;
boltHeadDepth=4.2;
bottomCapDepth=0.5;
bottomCapSize=(boltLength - boltInside)+bottomCapDepth+5;
ribDepth=3;
ribWidth=7;
handleTopDepth=10;
handleOuterRadius=45/2;
handleInnerRadius=40/2;
handleCornerRadius=5;
handleInnerDepth=5;
coreDepth=30;
coreOuterRadius=10;
coreInnerRadius=8;

// Disposable Sheath
union() {
    linear_extrude(bottomCapDepth) circle(boltRadius+1);
    linear_extrude(bottomCapSize) difference() {
        circle(boltRadius+1.5);
        circle(boltRadius+1);
    }
}

translate([0, 0, 35+bottomCapSize]) rotate([0, 180, 0]) union() {
    //Handle Top
    difference() {
        linear_extrude(handleTopDepth) minkowski() {
            circle(handleOuterRadius, $fn=6);
            circle(handleCornerRadius);
        }
        translate([0, 0, handleInnerDepth]) linear_extrude(handleInnerDepth*2) minkowski() {
            circle(handleInnerRadius, $fn=6);
            circle(handleCornerRadius);
        }
    }
    
    //Ribs
    rotate([0, 0, 30]) translate([0, 0, handleInnerDepth]) linear_extrude(ribDepth) square([ribWidth, 50], true);
    rotate([0, 0, 90]) translate([0, 0, handleInnerDepth]) linear_extrude(ribDepth) square([ribWidth, 50], true);
    rotate([0, 0, 150]) translate([0, 0, handleInnerDepth]) linear_extrude(ribDepth) square([ribWidth, 50], true);
    
    // Center Core
    difference() {
        translate([0, 0, handleInnerDepth]) cylinder(coreDepth, coreOuterRadius, coreInnerRadius);
        union() {
            translate([0, 0, coreDepth+handleInnerDepth-boltInside]) cylinder(boltInside+1, boltRadius, boltRadius);
            translate([0, 0, coreDepth+handleInnerDepth-boltInside-boltHeadDepth]) linear_extrude(boltHeadDepth) circle(d=11.5, $fn=6);
        }
    }
}


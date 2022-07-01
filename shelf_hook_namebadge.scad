$fn=200;
rackHeight=38.75;
rackPinInnerDiameter=6.5;
rackBackLength=10;
hookDepth=4;
hookWidth=35;
endHookScale=3;


linear_extrude(5) {
    difference() {
        difference() {
            circle(d=rackPinInnerDiameter+(hookDepth*2));
            circle(d=rackPinInnerDiameter);
        }
        translate([0,-(rackPinInnerDiameter+(hookDepth*2))/2,0]) square(rackPinInnerDiameter+(hookDepth*2), true);
    }
    translate([rackPinInnerDiameter/2,-rackHeight,0]) square([hookDepth, rackHeight]);
    translate([-(rackPinInnerDiameter/2 + hookDepth),-rackBackLength,0]) square([hookDepth, rackBackLength]);
    translate([0,-(rackHeight+(hookDepth/2)),0]) square([rackPinInnerDiameter+(hookDepth*2), hookDepth], true);
    translate([0,rackPinInnerDiameter/2, 0]) square([rackPinInnerDiameter/2+hookDepth, hookDepth]);
    translate([rackPinInnerDiameter/2, 0, 0]) square([hookDepth, hookDepth+1]);
    
    translate([rackPinInnerDiameter/2+7, -42.75]) rotate(90) badgeAcceptor();
}


//badgeEnd();

module badgeEnd() {
    translate([0,-2.5]) square([50,2.5]);
    translate([7, 0]) badgeClasp();
    translate([7+14+11, 0]) badgeClasp();
}

module badgeClasp() {
    translate([0,0]) square([11,1.5]);
    translate([-2, 1.5]) square([3,1]);
    translate([11-1, 1.5]) square([3,1]);
    translate([-2, 1]) square([0.5,0.5]);
    translate([12.5, 1]) square([0.5,0.5]);
}

module badgeAcceptor() {
    translate([0,0]) square([7,1]);
    translate([6,1]) square([1,0.5]);

    translate([7+11, 0]) square([14,1]);
    translate([7+11,1]) square([1,0.5]);
    translate([7+11+13,1]) square([1,0.5]);

    translate([7+11+14+11,0]) square([7,1]);
    translate([7+11+14+11,1]) square([1,0.5]);

    translate([0,0]) square([4,3]);
    translate([7+11+14+11+3,0]) square([4,3]);
    translate([7+11+3, 0]) square([8,3]);
}

//1.5mm 1mm
//14.50mm outer 11.5 inner 11mm split

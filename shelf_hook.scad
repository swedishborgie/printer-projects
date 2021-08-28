$fn=200;
rackHeight=33;
rackPinInnerDiameter=6.5;
rackBackLength=10;
hookDepth=4;
hookWidth=35;
endHookScale=3;


linear_extrude(10) {
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
    translate([rackPinInnerDiameter/2+hookDepth,rackPinInnerDiameter/2,0]) union() {
        square([hookWidth, hookDepth]);
        polygon([
            [hookWidth-hookDepth,0], 
            [hookWidth, 0], 
            [0, -rackHeight-hookDepth-(rackPinInnerDiameter/2)],
            [0, -rackHeight-(rackPinInnerDiameter/2)]
        ]);
    }
    translate([hookWidth+((rackPinInnerDiameter/2)*endHookScale+(hookDepth))+hookDepth, (rackPinInnerDiameter/2)+hookDepth, 0]) difference() {
        difference() {
            circle(d=(rackPinInnerDiameter*endHookScale)+(hookDepth*2));
            circle(d=(rackPinInnerDiameter*endHookScale));
        }
        translate([0,((rackPinInnerDiameter*endHookScale)+(hookDepth*2))/2,0]) square((rackPinInnerDiameter*endHookScale)+(hookDepth*2), true);
    }
}
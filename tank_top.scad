$fn=100;

innerSize = 153;
outerSize = 156;
depth = 15;

holeRadius = 4;
holesX = 10;
holesY = 10;


difference() {
    topBox();
    topHoles();
    translate([-8,(outerSize/2)-11,0]) cube([16,19+5,10]);
}

translate([4,(outerSize/2),-3]) cube([4,13,3]);
translate([-8,(outerSize/2),-3]) cube([4,13,3]);
translate([-8,(outerSize/2)+13,-3]) cube([16,4,3]);
translate([-12,(outerSize/2),-3]) cube([4,17,3+1.5]);
translate([8,(outerSize/2),-3]) cube([4,17,3+1.5]);
translate([-12,(outerSize/2)+17,-3]) cube([24,4,3+1.5]);


module topBox() {
    translate([0,0,-(depth/2)+((outerSize-innerSize)/2)]) difference() {
        cube([outerSize,outerSize,depth],true);
        translate([0,0,(innerSize-outerSize)/2]) cube([innerSize,innerSize,depth],true);
    }
}

module topHoles() {
    translate([0, 0, -0.5]) linear_extrude(outerSize-innerSize+1) {
        for (x = [0:holesX]) {
            for (y = [0:holesY]) {
                adjWidth = (innerSize - holeRadius-5);
                adjX = (-1*adjWidth/2) + (x*(adjWidth/holesX));
                adjY = (-1*adjWidth/2) + (y*(adjWidth/holesY));
                translate([adjX, adjY, 0]) circle(holeRadius);
            }
        }
    }
}
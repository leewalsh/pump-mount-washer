// Washer for attaching down-tube pump mount
difference(){
    union(){
        cylinder(h=4, r=12, center=true);
        translate([0,-10,-2]){
            cube([16, 20, 4], center=true);
        }
    }
    union(){
        cylinder(h=12, r=6, center=true);
        difference(){
            cylinder(h=12, r=24, center=true);
            cylinder(h=16, r=12, center=true);
        }
    }
}

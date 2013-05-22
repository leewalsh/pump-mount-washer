// Washer for attaching down-tube pump mount

tube_r = 30;
washer_t = 4;
inner_r = 4;
outer_r = 12;
sink_d = 3;
sink_r = 6;

difference(){
    union(){
        cylinder(h=washer_t, r=outer_r, center=true);
        difference() {
            translate([0,-10,-2]){ cube([16, 20, 8], center=true); }
            translate([0,0,-(tube_r+washer_t/2)]){ rotate([0,90,0]){ cylinder(h=2*outer_r, r=tube_r, center=true); } }
        }
    }
    union(){
        translate([0,0,sink_d+washer_t/2]){ cylinder(h=10, r=sink_r, center=true);}
        cylinder(h=4*washer_t, r=inner_r, center=true);
        difference(){
            cylinder(h=4*washer_t, r=2*outer_r, center=true);
            cylinder(h=5*washer_t, r=outer_r, center=true);
        }
    }
}

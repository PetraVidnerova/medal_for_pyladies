$fn = 100;

// medaile
module medaile_telo() {
    cylinder(h=1, r=10);
}

module krouzek() {
    difference() {
       cylinder(h=1, r=10);
       translate([0, 0, -1]) cylinder(h=3, r=9);
    }
}

module ousko() {
    difference() {
        cylinder(h=1, r=3);
        translate([0, 0, -1]) cylinder(h=3, r=2);
    }
}

module logo() {
    scale([0.25, 0.25, 0.25])
    color("blue")
    translate([-500, -500, -130]) 
    import("Python_badge.stl");
}

module medaile() {
    union() {
         translate([10, 0, 0]) ousko();
         medaile_telo();
         translate([0, 0, 1]) krouzek(); 
         translate([0.5, -1.5, 0]) 
         rotate([0,0,90])
         logo();
    }
}

scale([4, 4, 2]) medaile();

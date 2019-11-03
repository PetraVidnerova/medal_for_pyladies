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
    scale([0.1, 0.1, 0.07])
    color("blue")
    //translate([-500, -500, -130]) 
    import("T-PythonTOP-blue.stl");     

    scale([0.1, 0.1, 0.07])
    color("yellow")
    rotate(180)
    translate([-145, 143, -0]) 
    import("T-PythonTOP-blue.stl");     
}

module medaile() {
    union() {
         translate([10, 0, 0]) ousko();
         medaile_telo();
         translate([0, 0, 1]) krouzek();
        
         rotate(-90)
         translate([-7, 7, 1]) 
         logo();
    }
}


scale([4, 4, 2]) medaile();

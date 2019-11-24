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
    scale([0.1, 0.1, 0.1])
    color("blue")
    translate([0, 0, 1]) 
    import("T-PythonTOP-blue.stl");     

    scale([0.1, 0.1, 0.1])
    color("yellow")
    rotate(180)
    translate([-145, 143, 1]) 
    import("T-PythonTOP-blue.stl");     
}

module napis() {
    linear_extrude(height=1)
    rotate(-90)
    scale([1, 1, 2]) 
    color("red") 
    text("PyMum", font="Dejavu Sans:style=Bold");
}

module medaile() {
    union() {
         translate([10, 0, 0]) ousko();
         medaile_telo();
         translate([0, 0, 1]) krouzek();
        
         rotate(-90)
         translate([-7, 7, 1]) 
         logo();
        
         scale([0.3, 0.3, 1])
         translate([-10, 28, 1.4])
         napis();
    }
}

scale([4, 4, 2]) medaile();

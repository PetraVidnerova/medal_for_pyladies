// medaile
module medaile_telo() {
    circle(10);
}

module krouzek() {
    difference() {
       circle(10);
       circle(9);
    }
}

module ousko() {
    difference() {
        circle(3);
        circle(2);
    }
}

module logo() {
    scale([0.25, 0.25, 0.25])
    color("blue")
    translate([-500, -500, -130]) 
    import("Python_badge.stl");
}


union() {
     translate([10, 0, 0]) ousko();
     medaile_telo();
     translate([0, 0, 1]) krouzek(); 
     translate([0.5, -1.5, -1]) 
     rotate([0,0,90])
     logo();
}
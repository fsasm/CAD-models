// Generic funnel
$fa = 1.0;

// outside diameter
diameter_top = 80;
diameter_mid = 30;
diameter_bot = 30;

height_top = 50;
height_bot = 35;

thickness = 1;

// Note: model is upside down for easier printing

// top half
difference() {
    cylinder(height_top, diameter_top / 2, diameter_mid / 2);
    cylinder(height_top, diameter_top / 2 - thickness, diameter_mid / 2 - thickness);
}

// bottom half
translate([0, 0, height_top])
difference() {
    cylinder(height_bot, diameter_mid / 2, diameter_bot / 2);
    cylinder(height_bot, diameter_mid / 2 - thickness, diameter_bot / 2 - thickness);
}
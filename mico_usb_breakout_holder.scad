USB_PCB_SIZE_X = 14.9;
USB_PCB_SIZE_Y = 13.5;
USB_PCB_SIZE_Z =  2.5;

USB_CONN_X = 6.1;
USB_CONN_Y = 8.0;
USB_CONN_Z = 2.3;

module mico_usb_breakout_holder() {
    union() {
        difference() {
            translate([0, -1.5, 0]) cube([17, 16, 6]);
            translate([-0.1, 0, -0.1]) {
                cube([USB_PCB_SIZE_X + 0.1, USB_PCB_SIZE_Y, USB_PCB_SIZE_Z + 0.1]);
            }
            BOX_A = USB_PCB_SIZE_Y / 2 - USB_CONN_Y /2;
            translate([-0.1, BOX_A, USB_PCB_SIZE_Z - 0.1]) {
                cube([USB_CONN_X + 0.1, USB_CONN_Y, USB_CONN_Z + 0.1]);
            }
        }
        translate([7.5, 2, -0.5]) {
            cylinder(d=2.5, h=4, $fn=80);
        }
        translate([7.5, USB_PCB_SIZE_Y - 2.5, -0.5]) {
            cylinder(d=2.5, h=4, $fn=80);
        }
    }
}

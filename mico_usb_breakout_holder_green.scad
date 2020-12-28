USB_PCB_SIZE_X = 15;
USB_PCB_SIZE_Y = 14.6;
USB_PCB_SIZE_Z =  2.5;

HOLDER_SIZE_X = USB_PCB_SIZE_X + 2;
HOLDER_SIZE_Y = USB_PCB_SIZE_Y + 4;

USB_CONN_X = 5.0;
USB_CONN_Y = 8.0;
USB_CONN_Z = 3.0;

module _pcb_micro_usb_breakout_green() {
    difference() {
        union() {
            cube([USB_PCB_SIZE_X, USB_PCB_SIZE_Y, USB_PCB_SIZE_Z]);
            translate([0, (USB_PCB_SIZE_Y-USB_CONN_Y)/2, USB_PCB_SIZE_Z]) {
                cube([USB_CONN_X, USB_CONN_Y, USB_CONN_Z]);
            }
        }
        translate([9, 3.0, -1])
            cylinder(d=2.7, h=100, $fn=180);
        translate([9, USB_PCB_SIZE_Y- 3.0, -1])
            cylinder(d=2.7, h=100, $fn=180);
    }
}


module mico_usb_breakout_holder_green() {
    difference() {
        cube([HOLDER_SIZE_X, HOLDER_SIZE_Y, 7]);
        rotate([180, 0, 0])
        translate([0, -HOLDER_SIZE_Y +2 , -7]) _pcb_micro_usb_breakout_green();
    }
 
}

module tp4056_breakout_holder() {
    TP4056_PCB_Y = 18;
    TP4056_PCB_X = 22.5;

    TP4056_PCB_CASE_Y = TP4056_PCB_Y + 1.2 + 1.2;
    TP4056_PCB_CASE_X = TP4056_PCB_X + 1.2;

    USB_CONN_Y = 7.5;
    USB_CONN_X = 4.5;
    USB_CONN_Z = 3.5;
    
    difference() {
        cube([TP4056_PCB_CASE_X, TP4056_PCB_CASE_Y, 5]);
        translate([-1, TP4056_PCB_CASE_Y/ 2 - USB_CONN_Y/2, -1]) {
            cube([USB_CONN_X +1 , USB_CONN_Y, USB_CONN_Z + 1 + 1 ]);
        }
        translate([0, 1.2, -1]) {
            cube([TP4056_PCB_X, TP4056_PCB_Y, 2.2]);
        }
        translate([8, 1.2, 0.8]) {
            cube([TP4056_PCB_X - 8, TP4056_PCB_Y, 1.8]);
        }
    }
}
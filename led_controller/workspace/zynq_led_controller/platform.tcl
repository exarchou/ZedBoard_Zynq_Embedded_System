# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Dimitris\Desktop\ZedBoard_Zynq_Embedded_System\led_controller\workspace\zynq_led_controller\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Dimitris\Desktop\ZedBoard_Zynq_Embedded_System\led_controller\workspace\zynq_led_controller\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynq_led_controller}\
-hw {C:\Users\Dimitris\Desktop\ZedBoard_Zynq_Embedded_System\led_controller\zynq_led_controller.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/Dimitris/Desktop/ZedBoard_Zynq_Embedded_System/led_controller/workspace}

platform write
platform generate -domains 
platform write
platform active {zynq_led_controller}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload

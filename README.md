# Embedded System with ZedBoard

This project involves the building of AXI peripherals and the handling of GPIOs with a Xilinx ZYNQ FPGA placed on a ZedBoard.



## ZedBoard

<img src="/images/zedboard.png" width='60%'>



## ZYNQ Schematic

<img src="/images/custom-ip.png" >





## Buttons and Switches AXI GPIOs

Two AXI GPIO IPs where used for the driving of the onboard buttons and switches. The signals were associated with the corresponding pins using constraints. ARM Cortex-A9 MCU of ZYNQ was programmed using Xilinx SDK tool, and a custom script in C was



<img src="images/AXI_GPIO.png" width='80%'>



<img src="images/zynq_axi_gpios.png" >



### Synthesis, Implementation and Bitstream Generation

The block design was wrapped, constraints were added and the synthesis, implementation and programming flow was followed. The post implementation device was generated:



<img src="images/device.png" width='70%'>



### MCU programming

A custom C script was written for the programing of Cortex-A9 MCU. The purpose of the test was to read the buttons and switches values and print them in a local terminal:



<img src="images/dip_switch_test.png" width='50%'>



## AXI LED Controller

An AXI GPIO IP was added in the block design and it was modified to have an 8-bit output for the led pins.



<img src="images/custom_led_controller_and_zynq.png" >



The MCU was again programmed using SDK, to set the value of the corresponding LEDs in a while loop.
# Embedded System with ZedBoard

This project involves the building of AXI peripherals and the handling of GPIOs with a Xilinx ZYNQ FPGA placed on a ZedBoard.



## ZedBoard

<img src="/images/zedboard.png" width='55%'>



## ZYNQ Schematic

<img src="/images/custom-ip.png" >



## Buttons and Switches AXI GPIOs

Two AXI GPIO IPs where used for the driving of the onboard buttons and switches. The signals were associated with the corresponding pins using constraints. ARM Cortex-A9 MCU of ZYNQ was programmed using Xilinx SDK tool, and a custom script in C was written.



<img src="images/axi_inter.png" width='45%'>



<img src="images/AXI_GPIO.png" width='70%'>



<img src="images/zynq_axi_gpios.png" >



### Synthesis, Implementation and Bitstream Generation

The block design was wrapped, constraints were added and the synthesis, implementation and programming flow was followed. The post implementation device was generated:



<img src="images/device.png" width='70%'>



### MCU programming

A custom C script was written for the programing of Cortex-A9 MCU. The purpose of the test was to read the buttons and switches values and print them in a local terminal:



<img src="images/dip_switch_test.png" width='50%'>



## AXI IP Creation

A custom AXI LED IP was added and packaged. The package was imported from Vivado IP Catalog and added in the block design and it was modified to have an 8-bit output for the led pins.

<img src="images/custom_led_controller_and_zynq.png" >

An HDL wrapper was created with its constraints for ZedBoard.

The MCU was again programmed using SDK, to set the value of the corresponding LEDs in a while loop.



## Timer and BRAM

The buttons and switches AXI GPIOs were added to the previous design, as well as an AXI BRAM Controller. The block memory is used to restore some information.

<img src="images/all_peripherals.png" width="80%" >

<img src="images/zynq_and_peripherals.png" >



A software application was run on ARM Cortex-M9, aiming to the initialization of a timer and the update of the GPIO LEDs, whenever the timer expires.

```c++
   // Read dip switch values
   dip_check_prev = XGpio_DiscreteRead(&dip, 1);
   // Load timer with delay in multiple of ONE_TENTH
   XScuTimer_LoadTimer(TimerInstancePtr, ONE_TENTH*dip_check_prev);
   // Set AutoLoad mode
   XScuTimer_EnableAutoReload(TimerInstancePtr);
   // Start the timer
   XScuTimer_Start (TimerInstancePtr);
   while (1)
   {
	  // Read push buttons and break the loop if Center button pressed
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  if(psb_check > 0)
	  {
		  xil_printf("Push button pressed: Exiting\r\n");
		  XScuTimer_Stop(TimerInstancePtr);
		  break;
	  }
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  if (dip_check != dip_check_prev) {
		  xil_printf("DIP Switch Status %x, %x\r\n", dip_check_prev, dip_check);
		  dip_check_prev = dip_check;
	  	  // load timer with the new switch settings
		  XScuTimer_LoadTimer(TimerInstancePtr, ONE_TENTH*dip_check);
		  count = 0;
	  }
	  if(XScuTimer_IsExpired(TimerInstancePtr)) {
			  // clear status bit
		  	  XScuTimer_ClearInterruptStatus(TimerInstancePtr);
		  	  // output the count to LED and increment the count
		  	  LED_CONTROLLER_mWriteReg(XPAR_LED_CONTROLLER_0_S00_AXI_BASEADDR, 0, count);
		  	  count++;
	  }
```

After initializing the timer, the main function reads the initial value of the dip switch and sets the timer's load value to be a multiple of ONE_TENTH based on the dip switch value. It then enables the timer to automatically reload and starts it. The main then enters an infinite loop, where it continually reads the value of the push button and the dip switch. If the push button is pressed, the timer is stopped and the loop is exited. If the dip switch value changes, the timer's load value is updated with the new dip switch value multiplied by ONE_TENTH, and the count variable is reset to 0. Finally, if the timer has expired, meaning the specified delay has passed, the main clears the timer's interrupt status, outputs the count to the LED controller, and increments the count variable. Overall, this script demonstrates the use of the PS timer on the ZYNQ-7000 SoC to create a delay and synchronize with other hardware peripherals, such as the dip switches and LED controller. The push button is used to stop the program and exit the loop.



## High Level Synthesis	

The next step was the implementation of a counter in Verilog and VHDL by using Vitis HLS tool. Specifically, the tool generated the HDL code, by using as input the following C++ code:

```c++
#include<iostream>
#include<stdlib.h>
using namespace std;

int main()
{
    int count = 0;
    bool reset = false;
    while(1)
    {
        cout << ""<< count << endl;
        if(reset == true)
            count = 0;
        count++;
        if(count > 15)
            count = 0;
        for(int i=0; i<450000000; i++);
    }
    return 0;
}
```

Generated Verilog:

```verilog
// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="main_main,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=14,HLS_VERSION=2022_2}" *)

module main (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] ap_return;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_done = 1'b0;

assign ap_ready = 1'b0;

assign ap_return = 32'd0;

endmodule //main

```

VHDL:

```vhdl
-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of main is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "main_main,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=14,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

begin

    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_done <= ap_const_logic_0;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= ap_const_logic_0;
    ap_return <= ap_const_lv32_0;
end behav;

```


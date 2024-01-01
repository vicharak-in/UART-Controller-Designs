
// Efinity Top-level template
// Version: 2023.1.150
// Date: 2024-01-01 17:31

// Copyright (C) 2017 - 2023 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/Dual_TX_Controller.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  Dual_TX_Controller
//     #4)  Insert design content.


module Dual_TX_Controller
(
  input clk,
  input rst,
  input rx,
  input jtag_inst1_CAPTURE,
  input jtag_inst1_DRCK,
  input jtag_inst1_RESET,
  input jtag_inst1_RUNTEST,
  input jtag_inst1_SEL,
  input jtag_inst1_SHIFT,
  input jtag_inst1_TCK,
  input jtag_inst1_TDI,
  input jtag_inst1_TMS,
  input jtag_inst1_UPDATE,
  output tx1,
  output tx2,
  output led_command,
  output led_data,
  output jtag_inst1_TDO
);


endmodule


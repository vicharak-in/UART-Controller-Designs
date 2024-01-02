# UART Controller Designs

This repository contains Verilog designs for a UART (Universal Asynchronous Receiver-Transmitter) controller that facilitates the transfer of control and data between devices. The main Verilog file, `UART_Controller.v`, plays a crucial role in managing the communication process.

## UART_Controller.v

The `UART_Controller.v` file implements a communication protocol where the first byte serves as control data. The structure of the control byte is as follows:

- Bits 7-6: Transmitter Selection
  - `00`: Data sent via Transmitter 1
  - `01`: Data sent via Transmitter 2
- Bits 5-0: Data Length
  - The number of bytes to be received

Following the control byte, the subsequent bytes contain the actual data. Once the entire data is received, the controller resets and awaits the next control byte.

## own_term Script

The `own_term` script provides a user-friendly interface for interacting with the UART controller. It prompts the user to select a transmitter, input the data length, and displays the output from the chosen transmitter.

### Usage

```bash
./own_term

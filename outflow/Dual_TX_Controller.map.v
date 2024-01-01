
//
// Verific Verilog Description of module UART_Controller
//

module UART_Controller (clk, rx, tx1, tx2, led_command, led_data);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output tx1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output tx2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output led_command /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output led_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    wire n62_2;
    wire n61_2;
    wire n60_2;
    wire n59_2;
    wire n58_2;
    wire n57_2;
    
    wire \data[0] , DV, \i[0] , \transmitter_select[0] , \data_length[0] , 
        \uart_rx/r_Clock_Count[0] , RX_DV, \uart_rx/r_RX_Byte[0] , \uart_rx/r_Bit_Index[0] , 
        \uart_rx/r_SM_Main[0] , \uart_rx/r_Clock_Count[1] , \uart_rx/r_Clock_Count[2] , 
        \uart_rx/r_Clock_Count[3] , \uart_rx/r_Clock_Count[4] , \uart_rx/r_Clock_Count[5] , 
        \uart_rx/r_Clock_Count[6] , \uart_rx/r_Clock_Count[7] , \uart_rx/r_RX_Byte[1] , 
        \uart_rx/r_RX_Byte[2] , \uart_rx/r_RX_Byte[3] , \uart_rx/r_RX_Byte[4] , 
        \uart_rx/r_RX_Byte[5] , \uart_rx/r_RX_Byte[6] , \uart_rx/r_RX_Byte[7] , 
        \uart_rx/r_Bit_Index[1] , \uart_rx/r_Bit_Index[2] , \uart_rx/r_SM_Main[1] , 
        \clk~O , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] , 
        \data[6] , \data[7] , \i[1] , \i[2] , \i[3] , \i[4] , \i[5] , 
        \transmitter_select[1] , \data_length[1] , \data_length[2] , \data_length[3] , 
        \data_length[4] , \data_length[5] , \uart_tx1/r_Clock_Count[0] , 
        \uart_tx1/r_Bit_Index[0] , \uart_tx1/r_TX_Data[0] , \uart_tx1/r_SM_Main[0] , 
        \uart_tx1/r_Clock_Count[1] , \uart_tx1/r_Clock_Count[2] , \uart_tx1/r_Clock_Count[3] , 
        \uart_tx1/r_Clock_Count[4] , \uart_tx1/r_Clock_Count[5] , \uart_tx1/r_Clock_Count[6] , 
        \uart_tx1/r_Bit_Index[1] , \uart_tx1/r_Bit_Index[2] , \uart_tx1/r_TX_Data[1] , 
        \uart_tx1/r_TX_Data[2] , \uart_tx1/r_TX_Data[3] , \uart_tx1/r_TX_Data[4] , 
        \uart_tx1/r_TX_Data[5] , \uart_tx1/r_TX_Data[6] , \uart_tx1/r_TX_Data[7] , 
        \uart_tx1/r_SM_Main[1] , \uart_tx2/r_TX_Data[0] , \uart_tx2/r_TX_Data[1] , 
        \uart_tx2/r_TX_Data[2] , \uart_tx2/r_TX_Data[3] , \uart_tx2/r_TX_Data[4] , 
        \uart_tx2/r_TX_Data[5] , \uart_tx2/r_TX_Data[6] , \uart_tx2/r_TX_Data[7] , 
        \received_data[0] , ceg_net98, \state[1] , ceg_net127, \state[0] , 
        ceg_net130, n257, ceg_net133, ceg_net108, \equal_4/n3 , ceg_net120, 
        ceg_net138, \uart_rx/n376 , ceg_net78, \uart_rx/n407 , ceg_net153, 
        \uart_rx/n446 , \uart_rx/n383 , ceg_net146, \uart_rx/n373 , 
        \uart_rx/r_SM_Main[2] , \uart_rx/n312 , \uart_rx/n315 , \uart_rx/n318 , 
        \uart_rx/n321 , \uart_rx/n324 , \uart_rx/n327 , \uart_rx/n330 , 
        \uart_rx/n429 , \uart_rx/n431 , \uart_rx/n433 , \uart_rx/n435 , 
        \uart_rx/n437 , \uart_rx/n439 , \uart_rx/n441 , \uart_rx/n355 , 
        \uart_rx/n359 , \uart_rx/n369 , \uart_rx/n43 , \uart_rx/n427 , 
        \received_data[1] , \received_data[2] , \received_data[3] , \received_data[4] , 
        \received_data[5] , \received_data[6] , \received_data[7] , \equal_5/n3 , 
        \uart_tx1/n119 , \uart_tx1/n110 , \uart_tx1/select_38/Select_0/n3 , 
        \data_to_transmitter[0] , \uart_tx1/n340 , \uart_tx1/n138 , \uart_tx1/n118 , 
        \uart_tx1/n117 , \uart_tx1/n116 , \uart_tx1/n115 , \uart_tx1/n114 , 
        \uart_tx1/n113 , \uart_tx1/n122 , \uart_tx1/n121 , \data_to_transmitter[1] , 
        \data_to_transmitter[2] , \data_to_transmitter[3] , \data_to_transmitter[4] , 
        \data_to_transmitter[5] , \data_to_transmitter[6] , \data_to_transmitter[7] , 
        \uart_tx1/n137 , \uart_tx2/n110 , \data_to_transmitter[8] , \data_to_transmitter[9] , 
        \data_to_transmitter[10] , \data_to_transmitter[11] , \data_to_transmitter[12] , 
        \data_to_transmitter[13] , \data_to_transmitter[14] , \data_to_transmitter[15] , 
        n179, n180, n181, n182, n183, n184, n185, n186, n187, 
        n188, n189, n190, n191, n192, n193, n194, n195, n196, 
        n197, n198, n199, n200, n201, n202, n203, n204, n205, 
        n206, n207, n208, n210, n211, n212, n213, n214, n215, 
        n216, n217, n218, n219, n220, n221;
    
    EFX_LUT4 LUT__263 (.I0(\state[1] ), .I1(RX_DV), .O(ceg_net133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__263.LUTMASK = 16'hbbbb;
    EFX_FF \data[0]~FF  (.D(\received_data[0] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data[0]~FF .CE_POLARITY = 1'b0;
    defparam \data[0]~FF .SR_POLARITY = 1'b1;
    defparam \data[0]~FF .D_POLARITY = 1'b1;
    defparam \data[0]~FF .SR_SYNC = 1'b1;
    defparam \data[0]~FF .SR_VALUE = 1'b0;
    defparam \data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \DV~FF  (.D(\state[1] ), .CE(ceg_net127), .CLK(\clk~O ), .SR(1'b0), 
           .Q(DV)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \DV~FF .CLK_POLARITY = 1'b1;
    defparam \DV~FF .CE_POLARITY = 1'b0;
    defparam \DV~FF .SR_POLARITY = 1'b1;
    defparam \DV~FF .D_POLARITY = 1'b0;
    defparam \DV~FF .SR_SYNC = 1'b1;
    defparam \DV~FF .SR_VALUE = 1'b0;
    defparam \DV~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \led_command~FF  (.D(\state[0] ), .CE(ceg_net130), .CLK(\clk~O ), 
           .SR(1'b0), .Q(led_command)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \led_command~FF .CLK_POLARITY = 1'b1;
    defparam \led_command~FF .CE_POLARITY = 1'b0;
    defparam \led_command~FF .SR_POLARITY = 1'b1;
    defparam \led_command~FF .D_POLARITY = 1'b0;
    defparam \led_command~FF .SR_SYNC = 1'b1;
    defparam \led_command~FF .SR_VALUE = 1'b0;
    defparam \led_command~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \led_data~FF  (.D(n257), .CE(ceg_net133), .CLK(\clk~O ), .SR(1'b0), 
           .Q(led_data)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \led_data~FF .CLK_POLARITY = 1'b1;
    defparam \led_data~FF .CE_POLARITY = 1'b0;
    defparam \led_data~FF .SR_POLARITY = 1'b1;
    defparam \led_data~FF .D_POLARITY = 1'b1;
    defparam \led_data~FF .SR_SYNC = 1'b1;
    defparam \led_data~FF .SR_VALUE = 1'b0;
    defparam \led_data~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[0]~FF  (.D(n62_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[0]~FF .CLK_POLARITY = 1'b1;
    defparam \i[0]~FF .CE_POLARITY = 1'b0;
    defparam \i[0]~FF .SR_POLARITY = 1'b1;
    defparam \i[0]~FF .D_POLARITY = 1'b1;
    defparam \i[0]~FF .SR_SYNC = 1'b1;
    defparam \i[0]~FF .SR_VALUE = 1'b0;
    defparam \i[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \transmitter_select[0]~FF  (.D(\equal_4/n3 ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\transmitter_select[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \transmitter_select[0]~FF .CLK_POLARITY = 1'b1;
    defparam \transmitter_select[0]~FF .CE_POLARITY = 1'b0;
    defparam \transmitter_select[0]~FF .SR_POLARITY = 1'b1;
    defparam \transmitter_select[0]~FF .D_POLARITY = 1'b0;
    defparam \transmitter_select[0]~FF .SR_SYNC = 1'b1;
    defparam \transmitter_select[0]~FF .SR_VALUE = 1'b0;
    defparam \transmitter_select[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[0]~FF  (.D(\received_data[0] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[0]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[0]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[0]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[0]~FF .D_POLARITY = 1'b1;
    defparam \data_length[0]~FF .SR_SYNC = 1'b1;
    defparam \data_length[0]~FF .SR_VALUE = 1'b0;
    defparam \data_length[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[0]~FF  (.D(\state[0] ), .CE(ceg_net138), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \state[0]~FF .CE_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_POLARITY = 1'b1;
    defparam \state[0]~FF .D_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_SYNC = 1'b1;
    defparam \state[0]~FF .SR_VALUE = 1'b0;
    defparam \state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[0]~FF  (.D(\uart_rx/n376 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \RX_DV~FF  (.D(\uart_rx/n407 ), .CE(ceg_net153), .CLK(\clk~O ), 
           .SR(1'b0), .Q(RX_DV)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \RX_DV~FF .CLK_POLARITY = 1'b1;
    defparam \RX_DV~FF .CE_POLARITY = 1'b0;
    defparam \RX_DV~FF .SR_POLARITY = 1'b1;
    defparam \RX_DV~FF .D_POLARITY = 1'b1;
    defparam \RX_DV~FF .SR_SYNC = 1'b1;
    defparam \RX_DV~FF .SR_VALUE = 1'b0;
    defparam \RX_DV~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[0]~FF  (.D(rx), .CE(\uart_rx/n446 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Bit_Index[0]~FF  (.D(\uart_rx/n383 ), .CE(ceg_net146), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_SM_Main[0]~FF  (.D(\uart_rx/n373 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(\uart_rx/r_SM_Main[2] ), .Q(\uart_rx/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[1]~FF  (.D(\uart_rx/n312 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[2]~FF  (.D(\uart_rx/n315 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[3]~FF  (.D(\uart_rx/n318 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[4]~FF  (.D(\uart_rx/n321 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[5]~FF  (.D(\uart_rx/n324 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[6]~FF  (.D(\uart_rx/n327 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Clock_Count[7]~FF  (.D(\uart_rx/n330 ), .CE(ceg_net78), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Clock_Count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[1]~FF  (.D(rx), .CE(\uart_rx/n429 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[2]~FF  (.D(rx), .CE(\uart_rx/n431 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[3]~FF  (.D(rx), .CE(\uart_rx/n433 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[4]~FF  (.D(rx), .CE(\uart_rx/n435 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[5]~FF  (.D(rx), .CE(\uart_rx/n437 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[6]~FF  (.D(rx), .CE(\uart_rx/n439 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_RX_Byte[7]~FF  (.D(rx), .CE(\uart_rx/n441 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx/r_RX_Byte[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_RX_Byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_RX_Byte[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_RX_Byte[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_RX_Byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Bit_Index[1]~FF  (.D(\uart_rx/n355 ), .CE(ceg_net146), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_Bit_Index[2]~FF  (.D(\uart_rx/n359 ), .CE(ceg_net146), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_SM_Main[1]~FF  (.D(\uart_rx/n369 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(\uart_rx/r_SM_Main[2] ), .Q(\uart_rx/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx/r_SM_Main[2]~FF  (.D(\uart_rx/n43 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(\uart_rx/n427 ), .Q(\uart_rx/r_SM_Main[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_RX.v(118)
    defparam \uart_rx/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[1]~FF  (.D(\received_data[1] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data[1]~FF .CE_POLARITY = 1'b0;
    defparam \data[1]~FF .SR_POLARITY = 1'b1;
    defparam \data[1]~FF .D_POLARITY = 1'b1;
    defparam \data[1]~FF .SR_SYNC = 1'b1;
    defparam \data[1]~FF .SR_VALUE = 1'b0;
    defparam \data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[2]~FF  (.D(\received_data[2] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data[2]~FF .CE_POLARITY = 1'b0;
    defparam \data[2]~FF .SR_POLARITY = 1'b1;
    defparam \data[2]~FF .D_POLARITY = 1'b1;
    defparam \data[2]~FF .SR_SYNC = 1'b1;
    defparam \data[2]~FF .SR_VALUE = 1'b0;
    defparam \data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[3]~FF  (.D(\received_data[3] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data[3]~FF .CE_POLARITY = 1'b0;
    defparam \data[3]~FF .SR_POLARITY = 1'b1;
    defparam \data[3]~FF .D_POLARITY = 1'b1;
    defparam \data[3]~FF .SR_SYNC = 1'b1;
    defparam \data[3]~FF .SR_VALUE = 1'b0;
    defparam \data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[4]~FF  (.D(\received_data[4] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data[4]~FF .CE_POLARITY = 1'b0;
    defparam \data[4]~FF .SR_POLARITY = 1'b1;
    defparam \data[4]~FF .D_POLARITY = 1'b1;
    defparam \data[4]~FF .SR_SYNC = 1'b1;
    defparam \data[4]~FF .SR_VALUE = 1'b0;
    defparam \data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[5]~FF  (.D(\received_data[5] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data[5]~FF .CE_POLARITY = 1'b0;
    defparam \data[5]~FF .SR_POLARITY = 1'b1;
    defparam \data[5]~FF .D_POLARITY = 1'b1;
    defparam \data[5]~FF .SR_SYNC = 1'b1;
    defparam \data[5]~FF .SR_VALUE = 1'b0;
    defparam \data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[6]~FF  (.D(\received_data[6] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \data[6]~FF .CE_POLARITY = 1'b0;
    defparam \data[6]~FF .SR_POLARITY = 1'b1;
    defparam \data[6]~FF .D_POLARITY = 1'b1;
    defparam \data[6]~FF .SR_SYNC = 1'b1;
    defparam \data[6]~FF .SR_VALUE = 1'b0;
    defparam \data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data[7]~FF  (.D(\received_data[7] ), .CE(ceg_net98), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \data[7]~FF .CE_POLARITY = 1'b0;
    defparam \data[7]~FF .SR_POLARITY = 1'b1;
    defparam \data[7]~FF .D_POLARITY = 1'b1;
    defparam \data[7]~FF .SR_SYNC = 1'b1;
    defparam \data[7]~FF .SR_VALUE = 1'b0;
    defparam \data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[1]~FF  (.D(n61_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[1]~FF .CLK_POLARITY = 1'b1;
    defparam \i[1]~FF .CE_POLARITY = 1'b0;
    defparam \i[1]~FF .SR_POLARITY = 1'b1;
    defparam \i[1]~FF .D_POLARITY = 1'b1;
    defparam \i[1]~FF .SR_SYNC = 1'b1;
    defparam \i[1]~FF .SR_VALUE = 1'b0;
    defparam \i[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[2]~FF  (.D(n60_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[2]~FF .CLK_POLARITY = 1'b1;
    defparam \i[2]~FF .CE_POLARITY = 1'b0;
    defparam \i[2]~FF .SR_POLARITY = 1'b1;
    defparam \i[2]~FF .D_POLARITY = 1'b1;
    defparam \i[2]~FF .SR_SYNC = 1'b1;
    defparam \i[2]~FF .SR_VALUE = 1'b0;
    defparam \i[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[3]~FF  (.D(n59_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[3]~FF .CLK_POLARITY = 1'b1;
    defparam \i[3]~FF .CE_POLARITY = 1'b0;
    defparam \i[3]~FF .SR_POLARITY = 1'b1;
    defparam \i[3]~FF .D_POLARITY = 1'b1;
    defparam \i[3]~FF .SR_SYNC = 1'b1;
    defparam \i[3]~FF .SR_VALUE = 1'b0;
    defparam \i[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[4]~FF  (.D(n58_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[4]~FF .CLK_POLARITY = 1'b1;
    defparam \i[4]~FF .CE_POLARITY = 1'b0;
    defparam \i[4]~FF .SR_POLARITY = 1'b1;
    defparam \i[4]~FF .D_POLARITY = 1'b1;
    defparam \i[4]~FF .SR_SYNC = 1'b1;
    defparam \i[4]~FF .SR_VALUE = 1'b0;
    defparam \i[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i[5]~FF  (.D(n57_2), .CE(ceg_net108), .CLK(\clk~O ), .SR(1'b0), 
           .Q(\i[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \i[5]~FF .CLK_POLARITY = 1'b1;
    defparam \i[5]~FF .CE_POLARITY = 1'b0;
    defparam \i[5]~FF .SR_POLARITY = 1'b1;
    defparam \i[5]~FF .D_POLARITY = 1'b1;
    defparam \i[5]~FF .SR_SYNC = 1'b1;
    defparam \i[5]~FF .SR_VALUE = 1'b0;
    defparam \i[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \transmitter_select[1]~FF  (.D(\equal_5/n3 ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\transmitter_select[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \transmitter_select[1]~FF .CLK_POLARITY = 1'b1;
    defparam \transmitter_select[1]~FF .CE_POLARITY = 1'b0;
    defparam \transmitter_select[1]~FF .SR_POLARITY = 1'b1;
    defparam \transmitter_select[1]~FF .D_POLARITY = 1'b0;
    defparam \transmitter_select[1]~FF .SR_SYNC = 1'b1;
    defparam \transmitter_select[1]~FF .SR_VALUE = 1'b0;
    defparam \transmitter_select[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[1]~FF  (.D(\received_data[1] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[1]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[1]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[1]~FF .D_POLARITY = 1'b1;
    defparam \data_length[1]~FF .SR_SYNC = 1'b1;
    defparam \data_length[1]~FF .SR_VALUE = 1'b0;
    defparam \data_length[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[2]~FF  (.D(\received_data[2] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[2]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[2]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[2]~FF .D_POLARITY = 1'b1;
    defparam \data_length[2]~FF .SR_SYNC = 1'b1;
    defparam \data_length[2]~FF .SR_VALUE = 1'b0;
    defparam \data_length[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[3]~FF  (.D(\received_data[3] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[3]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[3]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[3]~FF .D_POLARITY = 1'b1;
    defparam \data_length[3]~FF .SR_SYNC = 1'b1;
    defparam \data_length[3]~FF .SR_VALUE = 1'b0;
    defparam \data_length[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[4]~FF  (.D(\received_data[4] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[4]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[4]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[4]~FF .D_POLARITY = 1'b1;
    defparam \data_length[4]~FF .SR_SYNC = 1'b1;
    defparam \data_length[4]~FF .SR_VALUE = 1'b0;
    defparam \data_length[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_length[5]~FF  (.D(\received_data[5] ), .CE(ceg_net120), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\data_length[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \data_length[5]~FF .CLK_POLARITY = 1'b1;
    defparam \data_length[5]~FF .CE_POLARITY = 1'b0;
    defparam \data_length[5]~FF .SR_POLARITY = 1'b1;
    defparam \data_length[5]~FF .D_POLARITY = 1'b1;
    defparam \data_length[5]~FF .SR_SYNC = 1'b1;
    defparam \data_length[5]~FF .SR_VALUE = 1'b0;
    defparam \data_length[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[0]~FF  (.D(\uart_tx1/n119 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx1~FF  (.D(\uart_tx1/n110 ), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(tx1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \tx1~FF .CLK_POLARITY = 1'b1;
    defparam \tx1~FF .CE_POLARITY = 1'b1;
    defparam \tx1~FF .SR_POLARITY = 1'b1;
    defparam \tx1~FF .D_POLARITY = 1'b1;
    defparam \tx1~FF .SR_SYNC = 1'b1;
    defparam \tx1~FF .SR_VALUE = 1'b0;
    defparam \tx1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Bit_Index[0]~FF  (.D(\uart_tx1/select_38/Select_0/n3 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[0]~FF  (.D(\data_to_transmitter[0] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_SM_Main[0]~FF  (.D(\uart_tx1/n138 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_tx1/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[1]~FF  (.D(\uart_tx1/n118 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[2]~FF  (.D(\uart_tx1/n117 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[3]~FF  (.D(\uart_tx1/n116 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[4]~FF  (.D(\uart_tx1/n115 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[5]~FF  (.D(\uart_tx1/n114 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Clock_Count[6]~FF  (.D(\uart_tx1/n113 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Bit_Index[1]~FF  (.D(\uart_tx1/n122 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_Bit_Index[2]~FF  (.D(\uart_tx1/n121 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[1]~FF  (.D(\data_to_transmitter[1] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[2]~FF  (.D(\data_to_transmitter[2] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[3]~FF  (.D(\data_to_transmitter[3] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[4]~FF  (.D(\data_to_transmitter[4] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[5]~FF  (.D(\data_to_transmitter[5] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[6]~FF  (.D(\data_to_transmitter[6] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_TX_Data[7]~FF  (.D(\data_to_transmitter[7] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx1/r_TX_Data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_TX_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_TX_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_TX_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_TX_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx1/r_SM_Main[1]~FF  (.D(\uart_tx1/n137 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_tx1/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx1/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx1/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx1/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx1/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx2~FF  (.D(\uart_tx2/n110 ), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(tx2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \tx2~FF .CLK_POLARITY = 1'b1;
    defparam \tx2~FF .CE_POLARITY = 1'b1;
    defparam \tx2~FF .SR_POLARITY = 1'b1;
    defparam \tx2~FF .D_POLARITY = 1'b1;
    defparam \tx2~FF .SR_SYNC = 1'b1;
    defparam \tx2~FF .SR_VALUE = 1'b0;
    defparam \tx2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[0]~FF  (.D(\data_to_transmitter[8] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[1]~FF  (.D(\data_to_transmitter[9] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[2]~FF  (.D(\data_to_transmitter[10] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[3]~FF  (.D(\data_to_transmitter[11] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[4]~FF  (.D(\data_to_transmitter[12] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[5]~FF  (.D(\data_to_transmitter[13] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[6]~FF  (.D(\data_to_transmitter[14] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx2/r_TX_Data[7]~FF  (.D(\data_to_transmitter[15] ), .CE(\uart_tx1/n340 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx2/r_TX_Data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Documents/Dual_TX_Controll/UART_TX.v(122)
    defparam \uart_tx2/r_TX_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx2/r_TX_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx2/r_TX_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx2/r_TX_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[1]~FF  (.D(n257), .CE(ceg_net138), .CLK(\clk~O ), .SR(\state[1] ), 
           .Q(\state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/amritansh/Downloads/efinity/2023.1/project/Dual_TX_Controller/UART_Controller.v(100)
    defparam \state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \state[1]~FF .CE_POLARITY = 1'b0;
    defparam \state[1]~FF .SR_POLARITY = 1'b1;
    defparam \state[1]~FF .D_POLARITY = 1'b1;
    defparam \state[1]~FF .SR_SYNC = 1'b1;
    defparam \state[1]~FF .SR_VALUE = 1'b0;
    defparam \state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__264 (.I0(ceg_net133), .I1(\state[0] ), .O(ceg_net108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__264.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__265 (.I0(\i[4] ), .I1(\data_length[4] ), .I2(\data_length[3] ), 
            .I3(\i[3] ), .O(n179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd4dd */ ;
    defparam LUT__265.LUTMASK = 16'hd4dd;
    EFX_LUT4 LUT__266 (.I0(\data_length[2] ), .I1(\i[2] ), .O(n180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__266.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__267 (.I0(\i[1] ), .I1(\i[0] ), .I2(\data_length[1] ), 
            .I3(\data_length[0] ), .O(n181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8eaf */ ;
    defparam LUT__267.LUTMASK = 16'h8eaf;
    EFX_LUT4 LUT__268 (.I0(\i[4] ), .I1(\data_length[4] ), .I2(\i[3] ), 
            .I3(\data_length[3] ), .O(n182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__268.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__269 (.I0(\i[5] ), .I1(\data_length[5] ), .I2(\i[2] ), 
            .I3(\data_length[2] ), .O(n183)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__269.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__270 (.I0(n181), .I1(n180), .I2(n182), .I3(n183), .O(n184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__270.LUTMASK = 16'he000;
    EFX_LUT4 LUT__271 (.I0(\i[5] ), .I1(\data_length[5] ), .I2(n179), 
            .I3(n184), .O(n185)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00d4 */ ;
    defparam LUT__271.LUTMASK = 16'h00d4;
    EFX_LUT4 LUT__272 (.I0(ceg_net108), .I1(n185), .O(ceg_net98)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__272.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__273 (.I0(ceg_net133), .I1(n185), .I2(\state[1] ), .I3(\state[0] ), 
            .O(ceg_net127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbb0f */ ;
    defparam LUT__273.LUTMASK = 16'hbb0f;
    EFX_LUT4 LUT__274 (.I0(n185), .I1(\state[0] ), .I2(ceg_net133), .O(ceg_net130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__274.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__275 (.I0(\state[0] ), .I1(n185), .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__275.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__276 (.I0(\i[0] ), .I1(n185), .O(n62_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__276.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__277 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[6] ), .O(\received_data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__277.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__278 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[7] ), .O(\received_data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__278.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__279 (.I0(\received_data[6] ), .I1(\received_data[7] ), 
            .O(\equal_4/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__279.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__280 (.I0(\state[0] ), .I1(ceg_net133), .O(ceg_net120)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__280.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__281 (.I0(RX_DV), .I1(\state[1] ), .O(ceg_net138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__281.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__282 (.I0(\uart_rx/r_Clock_Count[4] ), .I1(\uart_rx/r_Clock_Count[6] ), 
            .I2(\uart_rx/r_Clock_Count[5] ), .I3(\uart_rx/r_Clock_Count[3] ), 
            .O(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__282.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__283 (.I0(\uart_rx/r_Clock_Count[0] ), .I1(\uart_rx/r_Clock_Count[1] ), 
            .O(n187)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__283.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__284 (.I0(\uart_rx/r_Clock_Count[2] ), .I1(\uart_rx/r_Clock_Count[7] ), 
            .I2(n186), .I3(n187), .O(n188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__284.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__285 (.I0(\uart_rx/r_Clock_Count[2] ), .I1(\uart_rx/r_Clock_Count[1] ), 
            .I2(\uart_rx/r_Clock_Count[3] ), .O(n189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__285.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__286 (.I0(\uart_rx/r_Clock_Count[6] ), .I1(\uart_rx/r_Clock_Count[5] ), 
            .I2(\uart_rx/r_Clock_Count[7] ), .O(n190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__286.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__287 (.I0(n189), .I1(\uart_rx/r_Clock_Count[6] ), .I2(\uart_rx/r_Clock_Count[4] ), 
            .I3(n190), .O(\uart_rx/n43 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__287.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__288 (.I0(n188), .I1(\uart_rx/r_SM_Main[0] ), .I2(\uart_rx/n43 ), 
            .I3(\uart_rx/r_SM_Main[1] ), .O(n191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__288.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__289 (.I0(\uart_rx/r_Clock_Count[0] ), .I1(n191), .O(\uart_rx/n376 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__289.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__290 (.I0(rx), .I1(\uart_rx/r_SM_Main[0] ), .O(n192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__290.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__291 (.I0(\uart_rx/r_SM_Main[1] ), .I1(n188), .I2(n192), 
            .I3(\uart_rx/r_SM_Main[2] ), .O(ceg_net78)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__291.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__292 (.I0(\uart_rx/r_SM_Main[2] ), .I1(\uart_rx/r_SM_Main[1] ), 
            .O(\uart_rx/n407 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__292.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__293 (.I0(\uart_rx/r_SM_Main[0] ), .I1(\uart_rx/n407 ), 
            .O(\uart_rx/n427 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__293.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__294 (.I0(\uart_rx/n43 ), .I1(\uart_rx/n427 ), .I2(\uart_rx/r_SM_Main[0] ), 
            .I3(\uart_rx/r_SM_Main[1] ), .O(ceg_net153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__294.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__295 (.I0(\uart_rx/r_SM_Main[0] ), .I1(\uart_rx/n43 ), 
            .I2(\uart_rx/n407 ), .O(n193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__295.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__296 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .I3(n193), .O(\uart_rx/n446 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__296.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__297 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_SM_Main[1] ), 
            .O(\uart_rx/n383 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__297.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__298 (.I0(\uart_rx/n43 ), .I1(\uart_rx/r_SM_Main[1] ), 
            .I2(\uart_rx/r_SM_Main[2] ), .I3(\uart_rx/r_SM_Main[0] ), .O(ceg_net146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__298.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__299 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .O(n194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__299.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__300 (.I0(\uart_rx/n43 ), .I1(n194), .I2(rx), .I3(\uart_rx/r_SM_Main[1] ), 
            .O(n195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__300.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__301 (.I0(n195), .I1(n191), .I2(\uart_rx/r_SM_Main[0] ), 
            .O(\uart_rx/n373 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__301.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__302 (.I0(n191), .I1(\uart_rx/r_Clock_Count[0] ), .I2(\uart_rx/r_Clock_Count[1] ), 
            .O(\uart_rx/n312 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__302.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__303 (.I0(n191), .I1(\uart_rx/r_Clock_Count[2] ), .I2(n187), 
            .O(\uart_rx/n315 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__303.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__304 (.I0(\uart_rx/r_Clock_Count[2] ), .I1(n187), .I2(n191), 
            .I3(\uart_rx/r_Clock_Count[3] ), .O(\uart_rx/n318 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__304.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__305 (.I0(\uart_rx/r_Clock_Count[2] ), .I1(\uart_rx/r_Clock_Count[3] ), 
            .I2(n187), .O(n196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__305.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__306 (.I0(n191), .I1(\uart_rx/r_Clock_Count[4] ), .I2(n196), 
            .O(\uart_rx/n321 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__306.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__307 (.I0(\uart_rx/r_Clock_Count[4] ), .I1(n196), .I2(n191), 
            .I3(\uart_rx/r_Clock_Count[5] ), .O(\uart_rx/n324 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__307.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__308 (.I0(\uart_rx/r_Clock_Count[4] ), .I1(\uart_rx/r_Clock_Count[5] ), 
            .I2(n196), .O(n197)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__308.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__309 (.I0(n191), .I1(\uart_rx/r_Clock_Count[6] ), .I2(n197), 
            .O(\uart_rx/n327 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__309.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__310 (.I0(\uart_rx/r_Clock_Count[6] ), .I1(n197), .I2(n191), 
            .I3(\uart_rx/r_Clock_Count[7] ), .O(\uart_rx/n330 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__310.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__311 (.I0(\uart_rx/r_Bit_Index[1] ), .I1(\uart_rx/r_Bit_Index[2] ), 
            .I2(\uart_rx/r_Bit_Index[0] ), .I3(n193), .O(\uart_rx/n429 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__311.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__312 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[2] ), 
            .I2(\uart_rx/r_Bit_Index[1] ), .I3(n193), .O(\uart_rx/n431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__312.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__313 (.I0(\uart_rx/r_Bit_Index[2] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[0] ), .I3(n193), .O(\uart_rx/n433 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__313.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__314 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .I3(n193), .O(\uart_rx/n435 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__314.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__315 (.I0(\uart_rx/r_Bit_Index[1] ), .I1(\uart_rx/r_Bit_Index[0] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .I3(n193), .O(\uart_rx/n437 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__315.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__316 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .I3(n193), .O(\uart_rx/n439 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__316.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__317 (.I0(n193), .I1(n194), .O(\uart_rx/n441 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__317.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__318 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_SM_Main[1] ), .O(\uart_rx/n355 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__318.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__319 (.I0(\uart_rx/r_Bit_Index[0] ), .I1(\uart_rx/r_Bit_Index[1] ), 
            .I2(\uart_rx/r_Bit_Index[2] ), .I3(\uart_rx/r_SM_Main[1] ), 
            .O(\uart_rx/n359 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__319.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__320 (.I0(rx), .I1(\uart_rx/r_SM_Main[0] ), .I2(n188), 
            .O(n198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__320.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__321 (.I0(\uart_rx/n43 ), .I1(\uart_rx/r_SM_Main[0] ), 
            .I2(n198), .I3(\uart_rx/r_SM_Main[1] ), .O(\uart_rx/n369 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__321.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__322 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[1] ), .O(\received_data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__322.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__323 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[2] ), .O(\received_data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__323.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__324 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[3] ), .O(\received_data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__324.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__325 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[4] ), .O(\received_data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__325.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__326 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[5] ), .O(\received_data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__326.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__327 (.I0(\i[0] ), .I1(\i[1] ), .I2(n185), .O(n61_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__327.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__328 (.I0(\i[0] ), .I1(\i[1] ), .O(n199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__328.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__329 (.I0(\i[2] ), .I1(n199), .I2(n185), .O(n60_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__329.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__330 (.I0(\i[2] ), .I1(n199), .I2(\i[3] ), .I3(n185), 
            .O(n59_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__330.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__331 (.I0(\i[2] ), .I1(\i[3] ), .I2(n199), .O(n200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__331.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__332 (.I0(\i[4] ), .I1(n200), .I2(n185), .O(n58_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__332.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__333 (.I0(\i[4] ), .I1(n200), .I2(\i[5] ), .I3(n185), 
            .O(n57_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__333.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__334 (.I0(\received_data[7] ), .I1(\received_data[6] ), 
            .O(\equal_5/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__334.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__335 (.I0(\uart_tx1/r_Clock_Count[2] ), .I1(\uart_tx1/r_Clock_Count[1] ), 
            .I2(\uart_tx1/r_Clock_Count[3] ), .I3(\uart_tx1/r_Clock_Count[4] ), 
            .O(n201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__335.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__336 (.I0(n201), .I1(\uart_tx1/r_Clock_Count[5] ), .I2(\uart_tx1/r_Clock_Count[6] ), 
            .O(n202)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__336.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__337 (.I0(\uart_tx1/r_SM_Main[1] ), .I1(\uart_tx1/r_SM_Main[0] ), 
            .I2(n202), .O(n203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__337.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__338 (.I0(\uart_tx1/r_Clock_Count[0] ), .I1(n203), .O(\uart_tx1/n119 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__338.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__339 (.I0(\uart_tx1/r_TX_Data[7] ), .I1(\uart_tx1/r_TX_Data[5] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(\uart_tx1/r_Bit_Index[1] ), 
            .O(n204)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__339.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__340 (.I0(\uart_tx1/r_TX_Data[6] ), .I1(\uart_tx1/r_TX_Data[4] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(n204), .O(n205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__340.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__341 (.I0(\uart_tx1/r_TX_Data[3] ), .I1(\uart_tx1/r_TX_Data[1] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(\uart_tx1/r_Bit_Index[1] ), 
            .O(n206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__341.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__342 (.I0(\uart_tx1/r_TX_Data[2] ), .I1(\uart_tx1/r_TX_Data[0] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(n206), .O(n207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__342.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__343 (.I0(n207), .I1(n205), .I2(\uart_tx1/r_Bit_Index[2] ), 
            .O(n208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__343.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__344 (.I0(n208), .I1(\uart_tx1/r_SM_Main[0] ), .I2(\uart_tx1/r_SM_Main[1] ), 
            .O(\uart_tx1/n110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__344.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__345 (.I0(\uart_tx1/r_SM_Main[0] ), .I1(\uart_tx1/r_Bit_Index[0] ), 
            .I2(n202), .I3(\uart_tx1/r_SM_Main[1] ), .O(\uart_tx1/select_38/Select_0/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__345.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__347 (.I0(\uart_tx1/r_SM_Main[0] ), .I1(\uart_tx1/r_SM_Main[1] ), 
            .I2(DV), .O(\uart_tx1/n340 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__347.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__349 (.I0(\transmitter_select[1] ), .I1(\transmitter_select[0] ), 
            .O(n210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__349.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__350 (.I0(\data[0] ), .I1(n210), .O(\data_to_transmitter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__350.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__351 (.I0(n201), .I1(\uart_tx1/r_Clock_Count[5] ), .I2(\uart_tx1/r_Clock_Count[6] ), 
            .I3(\uart_tx1/r_Bit_Index[0] ), .O(n211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__351.LUTMASK = 16'he000;
    EFX_LUT4 LUT__352 (.I0(\uart_tx1/r_Bit_Index[1] ), .I1(\uart_tx1/r_Bit_Index[2] ), 
            .I2(\uart_tx1/r_SM_Main[1] ), .I3(n211), .O(n212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__352.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__353 (.I0(\uart_tx1/n340 ), .I1(n212), .I2(n202), .I3(\uart_tx1/r_SM_Main[0] ), 
            .O(\uart_tx1/n138 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fee */ ;
    defparam LUT__353.LUTMASK = 16'h0fee;
    EFX_LUT4 LUT__354 (.I0(\uart_tx1/r_Clock_Count[0] ), .I1(\uart_tx1/r_Clock_Count[1] ), 
            .I2(n203), .O(\uart_tx1/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__354.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__355 (.I0(\uart_tx1/r_Clock_Count[0] ), .I1(\uart_tx1/r_Clock_Count[1] ), 
            .O(n213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__355.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__356 (.I0(\uart_tx1/r_Clock_Count[2] ), .I1(n213), .I2(n203), 
            .O(\uart_tx1/n117 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__356.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__357 (.I0(\uart_tx1/r_Clock_Count[2] ), .I1(n213), .I2(\uart_tx1/r_Clock_Count[3] ), 
            .I3(n203), .O(\uart_tx1/n116 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__357.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__358 (.I0(\uart_tx1/r_Clock_Count[2] ), .I1(\uart_tx1/r_Clock_Count[3] ), 
            .I2(n213), .O(n214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__358.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__359 (.I0(\uart_tx1/r_Clock_Count[4] ), .I1(n214), .I2(n203), 
            .O(\uart_tx1/n115 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__359.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__360 (.I0(\uart_tx1/r_Clock_Count[4] ), .I1(n214), .O(n215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__360.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__361 (.I0(\uart_tx1/r_Clock_Count[5] ), .I1(n215), .I2(n203), 
            .O(\uart_tx1/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__361.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__362 (.I0(\uart_tx1/r_Clock_Count[5] ), .I1(n215), .I2(\uart_tx1/r_Clock_Count[6] ), 
            .I3(n203), .O(\uart_tx1/n113 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__362.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__363 (.I0(\uart_tx1/r_SM_Main[0] ), .I1(n211), .I2(\uart_tx1/r_SM_Main[1] ), 
            .I3(\uart_tx1/r_Bit_Index[1] ), .O(\uart_tx1/n122 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;
    defparam LUT__363.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__364 (.I0(\uart_tx1/r_Bit_Index[1] ), .I1(n211), .O(n216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__364.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__365 (.I0(\uart_tx1/r_SM_Main[0] ), .I1(n216), .I2(\uart_tx1/r_SM_Main[1] ), 
            .I3(\uart_tx1/r_Bit_Index[2] ), .O(\uart_tx1/n121 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hba40 */ ;
    defparam LUT__365.LUTMASK = 16'hba40;
    EFX_LUT4 LUT__366 (.I0(\data[1] ), .I1(n210), .O(\data_to_transmitter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__366.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__367 (.I0(\data[2] ), .I1(n210), .O(\data_to_transmitter[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__367.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__368 (.I0(\data[3] ), .I1(n210), .O(\data_to_transmitter[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__368.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__369 (.I0(\data[4] ), .I1(n210), .O(\data_to_transmitter[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__369.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__370 (.I0(\data[5] ), .I1(n210), .O(\data_to_transmitter[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__370.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__371 (.I0(\data[6] ), .I1(n210), .O(\data_to_transmitter[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__371.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__372 (.I0(\data[7] ), .I1(n210), .O(\data_to_transmitter[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__372.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__373 (.I0(\uart_tx1/r_SM_Main[0] ), .I1(n202), .I2(\uart_tx1/r_SM_Main[1] ), 
            .O(\uart_tx1/n137 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__373.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__374 (.I0(\uart_tx2/r_TX_Data[7] ), .I1(\uart_tx2/r_TX_Data[5] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(\uart_tx1/r_Bit_Index[1] ), 
            .O(n217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__374.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__375 (.I0(\uart_tx2/r_TX_Data[6] ), .I1(\uart_tx2/r_TX_Data[4] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(n217), .O(n218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__375.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__376 (.I0(\uart_tx2/r_TX_Data[3] ), .I1(\uart_tx2/r_TX_Data[1] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(\uart_tx1/r_Bit_Index[1] ), 
            .O(n219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__376.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__377 (.I0(\uart_tx2/r_TX_Data[2] ), .I1(\uart_tx2/r_TX_Data[0] ), 
            .I2(\uart_tx1/r_Bit_Index[0] ), .I3(n219), .O(n220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__377.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__378 (.I0(n220), .I1(n218), .I2(\uart_tx1/r_Bit_Index[2] ), 
            .O(n221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__378.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__379 (.I0(n221), .I1(\uart_tx1/r_SM_Main[0] ), .I2(\uart_tx1/r_SM_Main[1] ), 
            .O(\uart_tx2/n110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__379.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__380 (.I0(n210), .I1(\data[0] ), .O(\data_to_transmitter[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__380.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__381 (.I0(n210), .I1(\data[1] ), .O(\data_to_transmitter[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__381.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__382 (.I0(n210), .I1(\data[2] ), .O(\data_to_transmitter[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__382.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__383 (.I0(n210), .I1(\data[3] ), .O(\data_to_transmitter[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__383.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__384 (.I0(n210), .I1(\data[4] ), .O(\data_to_transmitter[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__384.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__385 (.I0(n210), .I1(\data[5] ), .O(\data_to_transmitter[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__385.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__386 (.I0(n210), .I1(\data[6] ), .O(\data_to_transmitter[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__386.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__387 (.I0(n210), .I1(\data[7] ), .O(\data_to_transmitter[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__387.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__262 (.I0(RX_DV), .I1(\uart_rx/r_RX_Byte[0] ), .O(\received_data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__262.LUTMASK = 16'h8888;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ad5fe354_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ad5fe354_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ad5fe354_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_ad5fe354_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_ad5fe354_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_ad5fe354_0
// module not written out since it is a black box. 
//


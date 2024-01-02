module UART_Controller (
  input wire clk,
  //input wire rst,
  input wire rx,
  output wire tx1,
  output wire tx2,
  output led_command,
  output led_data
);

  wire [7:0] received_data;
  // reg [1:0] transmitter_select;
  // reg [5:0] data_length;
  // reg [7:0] data;
  // reg [5:0] i=0;
  wire RX_DV;
  // reg DV = 0;
  // reg [1:0] state = 2'd0;
 // reg [1:0] next_state = 2'd0;
  // parameter   one = 2'd1;
  // parameter two = 2'd2;
  // parameter  three = 2'd3;
  
  wire [15:0] data_to_transmitter;

  UART_RX #(
	  .CLKS_PER_BIT(1041)
  ) uart_rx (
    .i_Clock(clk),
    .i_RX_Serial(rx),
    .o_RX_DV(RX_DV),
    .o_RX_Byte(received_data)
  );
    /*
    always @ (posedge clk or negedge rst) begin
    if(rst==0) begin
    state <= three;
    end
    else begin
    state <= next_state;
    end
    end*/
    
  // always @(posedge clk) begin
  //   /*if (~rst) begin
  //     // Reset logic here if needed
  //   end else begin*/
  //     // Process received data
  //     
  //     case (state)
  //     
  //     2'b00: begin
  //     if (RX_DV) begin
  //       led_command <= 1'b1;
  //       led_data <= 1'b0;
  //       case (received_data[7:6])
  //         2'b00: transmitter_select <= 2'd1; // Select transmitter 1
  //         2'b01: transmitter_select <= 2'd2; // Select transmitter 2
  //         default: transmitter_select <= 2'd0; // Invalid selection, default to none
  //       endcase
  //       state<=one;
  //       data_length <= received_data[5:0];
  //      end
  //       
  //        // Reset data

  //       // Start collecting data bytes
  //      end
  //      
  //      2'b01: begin
  //      if(RX_DV)
  //      begin
  //              if(i < data_length) 
  //              begin
  //              led_command <= 1'b0;
  //              led_data <= 1'b1;
  //              
  //              data<=received_data;
  //               DV <= 1'b1;
  //               i <= i+1;
  //               state <=two;
  //               end
  //      else begin
  //      led_data <= 1'b0;
  //      i <= 0;
  //      state <= 2'b00;
  //      
  //      end
  //      end
  //      end
  //      2'b10: begin
  //                  DV <= 0;
  //                 state <= one;
  //              end
  //      
  //      
  //         
  //      
  //      default: state<=0;
  //      endcase
  //      
  //     end
      
	reg [2:0] st = 0;
	reg [1:0] sel = 0;
	reg [5:0] length = 0;
	reg [7:0] data_to_sent = 0;
	reg valid = 0;
      
	always @(posedge clk) begin
		case (st)
			0: begin
				if (RX_DV) begin
					sel <= received_data[7:6];
					length <= received_data[5:0];
					st <= 1;
				end
			end
				
			1: begin
				if (RX_DV) begin
					st <= 2;
					length <= length - 1;
					data_to_sent <= received_data;
				end
			end

			2: begin
				if (~busy) begin
					valid <= 1;
					st <= 3;
				end
			end

			3: begin
				valid <= 0;
				if (length == 0)
					st <= 0;
				else
					st <= 1;
			end
		endcase
	end

  

  // Multiplex data to the selected transmitter
  // assign data_to_transmitter = (transmitter_select == 2'd1) ? {8'd0,data} : {data, 8'd0};

  wire tx_dv1, tx_dv2;

  assign tx_dv1 = (sel == 2'b00);
  assign tx_dv2 = (sel == 2'b01);

  assign led_data = rx;
  assign led_command = sel[1];

  wire tx_slave1_busy;
  wire tx_slave2_busy;

  wire busy;
  assign busy = tx_slave1_busy | tx_slave2_busy;

  // Connect data to transmitters
  UART_TX #(
	  .CLKS_PER_BIT(1041)
  ) uart_tx1 (
    .i_Rst_L(1'b1),
    .i_Clock(clk),
    .i_TX_DV(tx_dv1 & valid),
    .i_TX_Byte(data_to_sent),
    .o_TX_Active(tx_slave1_busy),
    .o_TX_Serial(tx1),
    .o_TX_Done()
  );

  UART_TX #(
	  .CLKS_PER_BIT(1041)
  ) uart_tx2 (
    .i_Rst_L(1'b1),
    .i_Clock(clk),
    .i_TX_DV(tx_dv2 & valid),
    .i_TX_Byte(data_to_sent),
    .o_TX_Active(tx_slave2_busy),
    .o_TX_Serial(tx2),
    .o_TX_Done()
  );

endmodule

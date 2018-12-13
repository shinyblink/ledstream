// SMI. Secondary Memory Interface.
// High speed bus of the Raspberry Pi.
// Attach some I/O's of an FPGA to it and enjoy speed.
//
// The Pi is always gonna be the master.
// It dictates when to do what.

`default_nettype none

module smi
	#(parameter DATA_WIDTH = 8)
	(
	 input 									 clk,
	 input 									 reset,
	 inout [DATA_WIDTH-1:0]  smi_data,
	 input 									 smi_oe,
	 input 									 smi_we,
	 input [DATA_WIDTH-1:0]  din,
	 output [DATA_WIDTH-1:0] dout,
	 output 								 read,
	 output 								 write,
	 );

	 // Detect read/write cycle
	 wire 	re, we;
	 assign re = !smi_oe;
	 assign we = !smi_we;

	 reg 		re_state;
	 reg 		we_state;
	 initial re_state = 1'b0;
	 initial we_state = 1'b0;

	 wire 	piwrite;
	 wire 	piread;
	 assign piwrite = re & ~re_state;
	 assign piread = we & ~we_state;
	 assign read = piread;


	 // State switching
	 reg 		out;
 	 initial out <= 1'b0;

	 // Buffering.
	 wire [DATA_WIDTH-1:0] wout;
	 reg 		rwlast;
	 reg 		rwrite;
	 reg [DATA_WIDTH-1:0] rout;
	 assign write = rwrite;

	 assign dout = rout;

	 initial rwrite <= 1'b0;
	 initial rwlast <= 1'b0;
	 initial rout <= 1'b0;

	 // The tristate I/O block.
	 // See the Lattice ICE Technology Library for info.
	 SB_IO
		 #(
			 .PIN_TYPE(6'b1010_00),
			 .PULLUP(1'b0),
			 ) smi_io [DATA_WIDTH-1:0]
			 (
				.PACKAGE_PIN(smi_data),
				.INPUT_CLK(clk),
				.OUTPUT_CLK(clk),
				.OUTPUT_ENABLE(out),
				.D_OUT_0(din),
				.D_IN_0(wout),
				);

	 always @(posedge clk) begin
			if (reset) begin
				 re_state <= 1'b0;
				 we_state <= 1'b0;
				 rout <= 1'b0;
				 rout <= 1'b0;
				 rwlast <= 1'b0;
				 rwrite <= 1'b0;
			end else begin
				 // save state so we can compare it.
				 re_state <= re;
				 we_state <= we;

				 if (rwlast) begin
						rout <= wout;
						rwlast <= 1'b0;
						rwrite = 1'b1;
				 end else begin
						rwrite = 1'b0;
				 end

				 if (piwrite) begin
						rwlast <= 1'b1;
						out <= 1'b0;
				 end else if (piread) begin
						out <= 1'b1; // write our data until pi wants to write again
				 end
			end // else: !if(reset)
	 end
endmodule // smi

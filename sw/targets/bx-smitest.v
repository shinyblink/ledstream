// Small module to test SMI from the Pi.

`default_nettype none

`include "../src/smi.v"
`include "../src/pll.v"

module smitest
  (
   input CLK,
   inout PIN_1,  // SMI D5
   inout PIN_2,  // SMI D4
   input PIN_3,  // SMI OE
   input PIN_4,  // SMI WE
   inout PIN_5,  // SMI D0
   inout PIN_6,  // SMI D3
   inout PIN_7,  // SMI D1
   inout PIN_8,  // SMI D2
   inout PIN_9,  // SMI D7
   inout PIN_10, // SMI D6
   );

   // PLL
   wire  clk_64mhz;
   wire  locked;

   pll quad(CLK, clk_64mhz, locked);


   wire  smi_oe = PIN_3;
   wire  smi_we = PIN_4;
   wire [7:0] smi_data = {PIN_9, PIN_10, PIN_1, PIN_2, PIN_6, PIN_8, PIN_7, PIN_5};

   reg      reset;
   initial reset = 0;

   wire [7:0] smi_in;
   wire [7:0] smi_out;
   wire       read;
   wire       write;

   smi smi(clk_64mhz, reset, smi_data, smi_oe, smi_we, smi_in, smi_out, read, write);

   // Testing.
   reg        first;
   initial first = 1'b1;

   reg [7:0]  data;
   initial data = 1'b0;

   assign smi_in = data;

   always @(posedge clk_64mhz) begin
      if (write) begin
         // pi did a write, do something with the data in smi_out.
      end else if (read) begin
         // pi requests a read, write some data.
         if (first) begin
            data <= 7'b1000101; // E
            first <= 1'b0;
         end else begin
            data <= data ^ 7'b0100000; // case flip
         end
      end
   end
endmodule // top

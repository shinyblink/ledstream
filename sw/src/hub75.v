// HUB75 driver and related things.
// This probably does not work.

`default_nettype none
`include "ddr.v"

// Signal packing.
module hub75_pack
  #(parameter ROWBITS = 6)
   (
    output [8+ROWBITS-1:0] bus,
    input [0:0]            newframe,
    input [0:0]            endframe,
    input [4:0]            column,
    input [ROWBITS-1:0]    row);

   //assign bus = {clk, newframe, endframe, column, row};
   assign bus[0] = newframe;
   assign bus[1] = endframe;
   assign bus[6:2] = column[4:0];
   assign bus[7+ROWBITS-1:7] = row[ROWBITS-1:0];
endmodule // hub75_pack

module hub75_unpack
  #(parameter ROWBITS = 6)
   (
    input [8+ROWBITS-1:0] bus,
    output [0:0]          newframe,
    output [0:0]          endframe,
    output [4:0]          column,
    output [ROWBITS-1:0]  row);

   //assign {clk, newframe, endframe, column, row} = bus;
   assign newframe = bus[0];
   assign endframe = bus[1];
   assign column[4:0] = bus[6:2];
   assign row[ROWBITS-1:0] = bus[7+ROWBITS-1:7];
endmodule // hub75_unpack

// Driver, generates pulses.
module hub75_driver
  #(
    parameter COLS = 32,
    parameter ROWS = 64,
    parameter ROWBITS = 6)
   (
    input                  clk,
    input                  reset,
    output [8+ROWBITS-1:0] bus);

   reg                     newframe;
   reg                     endframe;
   reg [4:0]               column;
   reg [ROWBITS-1:0]       row;

   initial newframe = 1'b1;
   initial endframe = 1'b0;
   initial column = 1'b0;
   initial row = 1'b0;

   hub75_pack packer
     (
      .bus(bus),
      .newframe(newframe),
      .endframe(endframe),
      .column(column),
      .row(row));


   reg [4:0]               state;
   localparam S_START = 5'b00001;
   localparam S_SHIFT = 5'b00010;
   localparam S_NEXTR = 5'b00100;
   localparam S_END =   5'b01000;
   localparam S_PAD =   5'b10000;

   initial state = S_START;

   always @(posedge clk) begin
      if (reset) begin
         column <= 1'b0;
         row <= 1'b0;
         newframe <= 1'b0;
         endframe <= 1'b0;
      end else begin
         case (state)
           S_START:
             begin
                newframe <= 1'b1;
                column <= 1'b0;
                row <= 1'b0;
                state <= S_SHIFT;
             end
           S_SHIFT:
             begin
                newframe <= 1'b0;
                column <= column + 1;
                if (column == COLS - 2) // end of column..
                  state <= S_NEXTR;
             end
           S_NEXTR:
             begin
                column <= 1'b0;
                row <= row + 1;
                if (row == ROWS - 2) begin // end of matrix.
                   endframe <= 1'b1;
                   state <= S_END;
                end else begin
                   state <= S_SHIFT;
                end
             end
           S_END:
             begin
                endframe <= 1'b0;
                state <= S_PAD;
             end
           S_PAD:
             begin
                state <= S_START;
             end
         endcase // case (state)
      end // else: !if(reset)
   end // always @ (posedge clk)
endmodule // hub75_driver

module hub75_output
  #(parameter ROWBITS = 6)
   (
    input [0:0]           clk,
    input [0:0]           reset,
    input [2:0]           rgb1,
    input [2:0]           rgb2,
    input [8+ROWBITS-1:0] bus,
    output [4:0]          led_addr,
    output [0:0]          led_blank,
    output [0:0]          led_latch,
    output [0:0]          led_sclk,
    output [2:0]          led_rgb1,
    output [2:0]          led_rgb2);

   wire [0:0]             newframe;
   wire [0:0]             endframe;
   wire [4:0]             column;
   wire [ROWBITS-1:0]     row;

   hub75_unpack unpack
     (
      .bus(bus),
      .newframe(newframe),
      .endframe(endframe),
      .column(column),
      .row(row));

   reg [3:0]              state;
   localparam S_START =   4'b0001;
   localparam S_SHIFT =   4'b0010;
   localparam S_BLANK =   4'b0100;
   localparam S_UNBLANK = 4'b1000;
   initial state = S_START;

   reg [2:0]              reg_rgb1;
   reg [2:0]              reg_rgb2;
   reg [1:0]              blank;
   reg [1:0]              latch;
   reg [1:0]              sclk;
   initial blank = 2'b11;
   initial latch = 2'b00;
   initial sclk = 2'b00;

   assign led_rgb1 = reg_rgb1;
   assign led_rgb2 = reg_rgb2;
   assign led_addr = column;

   // Double the pulses so they match up.
   ddr ddr_sclk
     (
      .clk(clk),
      .data(sclk),
      .out(led_sclk));

   ddr ddr_blank
     (
      .clk(clk),
      .data(blank),
      .out(led_blank));

   ddr ddr_latch
     (
      .clk(clk),
      .data(latch),
      .out(led_latch));


   always @(posedge clk) begin
      if (reset) begin
         reg_rgb1 <= 1'b0;
         reg_rgb2 <= 1'b0;
         blank <= 2'b11;
         latch <= 2'b00;
         sclk <= 2'b10;
         state <= S_START;
      end else begin
         case (state)
           S_START:
             begin
                if (newframe) begin
                   state <= S_START;
                   blank <= 2'b00;
                   sclk <= 2'b10;

                   reg_rgb1 <= rgb1;
                   reg_rgb2 <= rgb2;
                end
             end
           S_SHIFT:
             begin
                sclk <= 2'b10;
                reg_rgb1 <= rgb1;
                reg_rgb2 <= rgb2;

                if (endframe) // last pixel
                  state <= S_BLANK;
             end
           S_BLANK:
             begin
                blank <= 2'b11;
                latch <= 2'b11;
                sclk <= 2'b00;

                state <= S_UNBLANK;
             end
           S_UNBLANK:
             begin
                blank <= 2'b10;
                latch <= 2'b00;

                state <= S_START;
             end
         endcase // case (state)
      end // else: !if(reset)
   end // always @ (posedge clk)
endmodule // hub75_output

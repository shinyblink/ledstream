// Top module to drive a HUB75 chain.

`default_nettype none

`include "../src/pll.v"
`include "../src/hub75.v"

module hub75test
  (
   input CLK,
   output PIN_1,  // OE
   output PIN_2,  // CLK
   output PIN_3,  // C
   output PIN_4,  // A
   output PIN_5,  // B2
   output PIN_6,  // R2
   output PIN_7,  // B1
   output PIN_8,  // R1
   output PIN_9,  // LAT
   output PIN_10, // D
   output PIN_11, // B
   output PIN_12, // G2
   output PIN_13, // G1
   output PIN_24, // E
   );


   localparam ROWBITS = 6;

   // PLL
   wire  clk_64mhz;
   wire  locked;
   reg  reset;
   initial reset = 1'b0;

   pll quad(CLK, clk_64mhz, locked);

   // HUB75 stuff.
   wire [4:0] led_addr;
   wire [2:0] led_rgb1;
   wire [2:0] led_rgb2;

   assign {PIN_24, PIN_10, PIN_3, PIN_11, PIN_4} = led_addr;
   assign {PIN_8, PIN_13, PIN_7} = led_rgb1;
   assign {PIN_6, PIN_12, PIN_5} = led_rgb2;


   reg [2:0] rgb1;
   reg [2:0] rgb2;


   wire [8+ROWBITS-1:0] bus_start;
   wire [8+ROWBITS-1:0] bus_end;

   hub75_driver #(.ROWBITS(ROWBITS)) h75d
     (
      .clk(CLK),
      .reset(reset),
      .bus(bus_start));

   hub75_output #(.ROWBITS(ROWBITS)) h75o
     (
      .clk(CLK),
      .bus(bus_end),
      .reset(reset),
      .led_rgb1(led_rgb1),
      .led_rgb2(led_rgb2),
      .led_addr(led_addr),
      .led_sclk(PIN_2),
      .led_blank(PIN_1),
      .led_latch(PIN_9),

      .rgb1(rgb1),
      .rgb2(rgb2));


   // Testing.
   assign bus_end = bus_start;
   initial rgb1 <= 3'b000;
   initial rgb2 <= 3'b000;

   always @(posedge CLK) begin
      if (locked)
        reset <= 1'b0;

      rgb1 <= {~rgb1[2], 2'b00};
      rgb2 <= {~rgb2[2], 2'b00};
   end
endmodule // top

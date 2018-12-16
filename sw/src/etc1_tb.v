`default_nettype none

module etc1_tb;
   // initial values
   reg                   clk;
   reg                   reset;
   //reg [63:0]            block = 64'h123456789abcdef;
   reg [63:0]            block = 64'hffffffffffffffff;
   reg [2:0]             x = 2'b00;
   reg [2:0]             y = 2'b00;
   wire [23:0]           pixel;
   wire [23:0]           base0_diff;
   wire [23:0]           base1_diff;
   wire [31:0]           palette;
   assign palette = block[63:32];

   reg [1023:0]          file;

   initial
     begin
        // vcd dump
        if ($value$plusargs("vcd=%s", file))
          $dumpfile(file);

        $dumpvars(0, pixel);

        #0 $display("%x", pixel);
        #1 $display("%x", pixel);
        // setting each elements values at each time interval, must finish with $finish
        #100 $finish;
     end

   etc1_decode decode(clk, reset, block, x, y, pixel);
endmodule

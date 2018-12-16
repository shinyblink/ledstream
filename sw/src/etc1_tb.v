`default_nettype none

module etc1_tb;
   // initial values
   reg                   clk = 1'b1;
   reg                   reset;
   reg [63:0]            block = 64'h123456789abcdef;
   //reg [63:0]            block = 64'hffffffffffffffff;
   reg [1:0]             x = 2'b00;
   reg [1:0]             y = 2'b00;
   wire [23:0]           pixel;
   wire [23:0]           base0_diff;
   wire [23:0]           base1_diff;
   wire [31:0]           palette;
   assign palette = block[63:32];

   reg [1023:0]          file;

   initial begin
      // vcd dump
      if ($value$plusargs("vcd=%s", file))
         $dumpfile(file);
         $dumpvars(0, etc1_tb);
   end

   always begin
      #1 clk = !clk;
   end

   always @(posedge clk) begin
      $display("%d,%d -> %x", x, y, pixel);
      x <= x + 1;

      if (x == 2'b11) begin
         if (y == 2'b11)
            $finish;
         y <= y + 1;
      end
   end

   etc1_decode decode(clk, reset, block, x, y, pixel);
endmodule

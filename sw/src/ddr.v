// DDR output module.
module ddr
  (
   input       clk,
   input [1:0] data,
   output      out
   );

   SB_IO
     #(
       .PIN_TYPE(6'b010001)
       ) it
       (
        .PACKAGE_PIN(out),
        .LATCH_INPUT_VALUE(1'b0),
        .INPUT_CLK(clk),
        .OUTPUT_CLK(clk),
        .D_OUT_0(data[0]),
        .D_OUT_1(data[1]));
endmodule // ddr

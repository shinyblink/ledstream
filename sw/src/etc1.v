`default_nettype none

module etc1_sat_add
  (
   input [4:0]  table_index,
   input [7:0]  colour_in,
   output [7:0] sum_out);

   reg [8:0]    table_colour;

   always @(*) begin
      case(table_index)
        5'd0: table_colour = 9'd2;
        5'd1: table_colour = 9'd8;
        5'd2: table_colour = 9'd510;
        5'd3: table_colour = 9'd504;
        5'd4: table_colour = 9'd5;
        5'd5: table_colour = 9'd17;
        5'd6: table_colour = 9'd507;
        5'd7: table_colour = 9'd495;
        5'd8: table_colour = 9'd9;
        5'd9: table_colour = 9'd29;
        5'd10: table_colour = 9'd503;
        5'd11: table_colour = 9'd483;
        5'd12: table_colour = 9'd13;
        5'd13: table_colour = 9'd42;
        5'd14: table_colour = 9'd499;
        5'd15: table_colour = 9'd470;
        5'd16: table_colour = 9'd18;
        5'd17: table_colour = 9'd60;
        5'd18: table_colour = 9'd494;
        5'd19: table_colour = 9'd452;
        5'd20: table_colour = 9'd24;
        5'd21: table_colour = 9'd80;
        5'd22: table_colour = 9'd488;
        5'd23: table_colour = 9'd432;
        5'd24: table_colour = 9'd33;
        5'd25: table_colour = 9'd106;
        5'd26: table_colour = 9'd479;
        5'd27: table_colour = 9'd406;
        5'd28: table_colour = 9'd47;
        5'd29: table_colour = 9'd183;
        5'd30: table_colour = 9'd465;
        5'd31: table_colour = 9'd329;
      endcase
   end

   wire [8:0] colour_in_ext;
   reg [8:0]  sums;
   reg [7:0]  sum;

   // 0 extend - colour_in is _unsigned_!
   assign colour_in_ext = { 1'b0, colour_in };

   always @(*) begin
      sums = colour_in_ext + table_colour; // 9+9 => 9 sum
      if (sums[8] == 1'b0) // as color_in is always 'positive', a 'negative' sum must be due to over/underflow.
        sum = sums[7:0];  // truncate sum back to 8 bits.
      else
        if (table_colour[8] == 1'b0)
          sum = 8'd255;
        else
          sum = 8'd0;
   end

   assign sum_out = sum;
endmodule


module etc1_decode
  (
   input         clk,
   input         reset,
   input [63:0]  block,
   input [2:0]   x,
   input [2:0]   y,
   output [23:0] pixel);

   wire [32:0]   palette;

   assign palette = block[63:32];

   // diffbit 0
   // 4:4:4 => 8:8:8
   wire [23:0]   base0_non_diff = { palette[31:28], palette[31:28], palette[23:20], palette[23:20], palette[15:12], palette[15:12] };
   wire [23:0]   base1_non_diff = { palette[27:24], palette[27:24], palette[19:16], palette[19:16], palette[11:8],  palette[11:8] };

   // diffbit 1
   // 5:5:5
   wire [14:0]   base0_diff = { palette[31:27], palette[23:19], palette[15:11] };
   wire [23:0]   base0_diff_expanded = { base0_diff[14:10], base0_diff[14:12], base0_diff[9:5], base0_diff[9:7], base0_diff[4:0], base0_diff[4:2] };

   wire [8:0]    weights = { palette[26:24], palette[18:16], palette[10:8] }; // maybe roll into base1_diff...
   wire [14:0]   base1_diff = { base0_diff[14:10] + { weights[8], weights[8], weights[8:6] },
                                base0_diff[9:5] + { weights[5], weights[5], weights[5:3] },
                                base0_diff[4:0] + { weights[2], weights[2], weights[2:0] } };
   wire [23:0]   base1_diff_expanded = { base1_diff[14:10], base1_diff[14:12], base1_diff[9:5], base1_diff[9:7], base1_diff[4:0], base1_diff[4:2] };

   wire [23:0]   base0 = palette[1] ? base0_diff_expanded : base0_non_diff;
   wire [23:0]   base1 = palette[1] ? base1_diff_expanded : base1_non_diff;

   wire [7:0]    palette0_r;
   wire [7:0]    palette0_g;
   wire [7:0]    palette0_b;

   wire [2:0]    index = {palette[0] ? y[1] : x[1], block[16 + y + (x << 2)], block[y + (x << 2)]};

   wire [4:0]    intensity_index = { index[2] ? palette[5:2] : palette[7:5], index[1:0] }; // 0,0 is actually j in c

   etc1_sat_add add0_r (intensity_index, index[2] ? base1[23:16] : base0[23:16], palette0_r);
   etc1_sat_add add0_g (intensity_index, index[2] ? base1[15:8] : base0[15:8], palette0_g);
   etc1_sat_add add0_b (intensity_index, index[2] ? base1[7:0] : base0[7:0], palette0_b);

   assign pixel = { palette0_r, palette0_g, palette0_b };
endmodule

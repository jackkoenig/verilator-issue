`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module BlackBoxWithParamsTester(
  input   clock,
  input   reset
);
  wire  blackBoxOne_out;
  wire [2:0] blackBoxFour_out;
  wire [31:0] blackBoxStringParamOne_out;
  wire [31:0] blackBoxStringParamTwo_out;
  wire [63:0] blackBoxRealParamOne_out;
  wire [63:0] blackBoxRealParamNeg_out;
  wire  blackBoxTypeParamBit_out;
  wire [31:0] blackBoxTypeParamWord_out;
  reg [1:0] cycles;
  reg [31:0] GEN_0;
  wire  T_5;
  wire [2:0] T_7;
  wire [1:0] T_8;
  wire  T_10;
  wire  T_11;
  wire  T_13;
  wire  T_15;
  wire  T_16;
  wire  T_18;
  wire  T_20;
  wire  T_21;
  wire  T_23;
  wire  T_25;
  wire  T_26;
  wire  T_28;
  wire  T_30;
  wire  T_31;
  wire  T_33;
  wire  T_35;
  wire  T_36;
  wire  T_38;
  wire  T_40;
  wire  T_41;
  wire  T_43;
  wire  T_45;
  wire  T_46;
  wire  T_48;
  wire  T_50;
  BlackBoxConstant #(.VALUE(1), .WIDTH(1)) blackBoxOne (
    .out(blackBoxOne_out)
  );
  BlackBoxConstant #(.VALUE(4), .WIDTH(3)) blackBoxFour (
    .out(blackBoxFour_out)
  );
  BlackBoxStringParam #(.STRING("one")) blackBoxStringParamOne (
    .out(blackBoxStringParamOne_out)
  );
  BlackBoxStringParam #(.STRING("two")) blackBoxStringParamTwo (
    .out(blackBoxStringParamTwo_out)
  );
  BlackBoxRealParam #(.REAL(1.0)) blackBoxRealParamOne (
    .out(blackBoxRealParamOne_out)
  );
  BlackBoxRealParam #(.REAL(-1.0)) blackBoxRealParamNeg (
    .out(blackBoxRealParamNeg_out)
  );
  BlackBoxTypeParam #(.T(bit)) blackBoxTypeParamBit (
    .out(blackBoxTypeParamBit_out)
  );
  BlackBoxTypeParam #(.T(bit [31:0])) blackBoxTypeParamWord (
    .out(blackBoxTypeParamWord_out)
  );
  assign T_5 = cycles == 2'h3;
  assign T_7 = cycles + 2'h1;
  assign T_8 = T_7[1:0];
  assign T_10 = blackBoxOne_out;
  assign T_11 = T_10 | reset;
  assign T_13 = T_11 == 1'h0;
  assign T_15 = blackBoxFour_out == 3'h4;
  assign T_16 = T_15 | reset;
  assign T_18 = T_16 == 1'h0;
  assign T_20 = blackBoxStringParamOne_out == 32'h1;
  assign T_21 = T_20 | reset;
  assign T_23 = T_21 == 1'h0;
  assign T_25 = blackBoxStringParamTwo_out == 32'h2;
  assign T_26 = T_25 | reset;
  assign T_28 = T_26 == 1'h0;
  assign T_30 = blackBoxRealParamOne_out == 64'h3ff0000000000000;
  assign T_31 = T_30 | reset;
  assign T_33 = T_31 == 1'h0;
  assign T_35 = blackBoxRealParamNeg_out == 64'hbff0000000000000;
  assign T_36 = T_35 | reset;
  assign T_38 = T_36 == 1'h0;
  assign T_40 = blackBoxTypeParamBit_out;
  assign T_41 = T_40 | reset;
  assign T_43 = T_41 == 1'h0;
  assign T_45 = blackBoxTypeParamWord_out == 32'hdeadbeef;
  assign T_46 = T_45 | reset;
  assign T_48 = T_46 == 1'h0;
  assign T_50 = reset == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_0 = {1{$random}};
  cycles = GEN_0[1:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if (reset) begin
      cycles <= 2'h0;
    end else begin
      cycles <= T_8;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_13) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:125 assert(blackBoxOne.io.out  === UInt(1))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_13) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_18) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:126 assert(blackBoxFour.io.out === UInt(4))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_18) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_23) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:127 assert(blackBoxStringParamOne.io.out === UInt(1))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_23) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_28) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:128 assert(blackBoxStringParamTwo.io.out === UInt(2))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_28) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_33) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:129 assert(blackBoxRealParamOne.io.out === UInt(0x3ff0000000000000L))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_33) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_38) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:130 assert(blackBoxRealParamNeg.io.out === UInt(BigInt(\"bff0000000000000\", 16)))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_38) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_43) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:131 assert(blackBoxTypeParamBit.io.out === UInt(1))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_43) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (T_48) begin
          $fwrite(32'h80000002,"Assertion failed\n    at BlackBox.scala:132 assert(blackBoxTypeParamWord.io.out === UInt(\"hdeadbeef\", 32))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_48) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (T_5 & T_50) begin
          $finish;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif
  end
endmodule

;buildInfoPackage: chisel3, version: 3.1-SNAPSHOT, scalaVersion: 2.11.7, sbtVersion: 0.13.11, builtAtString: 2016-11-03 16:51:03.992, builtAtMillis: 1478191863992
circuit BlackBoxWithParamsTester : 
  extmodule BlackBoxConstant : 
    output out : UInt<1>
    
    defname = BlackBoxConstant
    parameter VALUE = 1
    parameter WIDTH = 1
    
  extmodule BlackBoxConstant_1 : 
    output out : UInt<3>
    
    defname = BlackBoxConstant
    parameter VALUE = 4
    parameter WIDTH = 3
    
  extmodule BlackBoxStringParam : 
    output out : UInt<32>
    
    defname = BlackBoxStringParam
    parameter STRING = "one"
    
  extmodule BlackBoxStringParam_1 : 
    output out : UInt<32>
    
    defname = BlackBoxStringParam
    parameter STRING = "two"
    
  extmodule BlackBoxRealParam : 
    output out : UInt<64>
    
    defname = BlackBoxRealParam
    parameter REAL = 1.0
    
  extmodule BlackBoxRealParam_1 : 
    output out : UInt<64>
    
    defname = BlackBoxRealParam
    parameter REAL = -1.0
    
  extmodule BlackBoxTypeParam : 
    output out : UInt<1>
    
    defname = BlackBoxTypeParam
    parameter T = 'bit'
    
  extmodule BlackBoxTypeParam_1 : 
    output out : UInt<32>
    
    defname = BlackBoxTypeParam
    parameter T = 'bit [31:0]'
    
  module BlackBoxWithParamsTester : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    io is invalid
    inst blackBoxOne of BlackBoxConstant @[BlackBox.scala 114:28]
    blackBoxOne.out is invalid
    inst blackBoxFour of BlackBoxConstant_1 @[BlackBox.scala 115:29]
    blackBoxFour.out is invalid
    inst blackBoxStringParamOne of BlackBoxStringParam @[BlackBox.scala 116:38]
    blackBoxStringParamOne.out is invalid
    inst blackBoxStringParamTwo of BlackBoxStringParam_1 @[BlackBox.scala 117:38]
    blackBoxStringParamTwo.out is invalid
    inst blackBoxRealParamOne of BlackBoxRealParam @[BlackBox.scala 118:36]
    blackBoxRealParamOne.out is invalid
    inst blackBoxRealParamNeg of BlackBoxRealParam_1 @[BlackBox.scala 119:36]
    blackBoxRealParamNeg.out is invalid
    inst blackBoxTypeParamBit of BlackBoxTypeParam @[BlackBox.scala 120:36]
    blackBoxTypeParamBit.out is invalid
    inst blackBoxTypeParamWord of BlackBoxTypeParam_1 @[BlackBox.scala 121:37]
    blackBoxTypeParamWord.out is invalid
    reg cycles : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Counter.scala 15:29]
    when UInt<1>("h01") : @[Counter.scala 59:17]
      node T_5 = eq(cycles, UInt<2>("h03")) @[Counter.scala 23:24]
      node T_7 = add(cycles, UInt<1>("h01")) @[Counter.scala 24:22]
      node T_8 = tail(T_7, 1) @[Counter.scala 24:22]
      cycles <= T_8 @[Counter.scala 24:13]
      skip @[Counter.scala 59:17]
    node end = and(UInt<1>("h01"), T_5) @[Counter.scala 60:20]
    node T_10 = eq(blackBoxOne.out, UInt<1>("h01")) @[BlackBox.scala 125:30]
    node T_11 = or(T_10, reset) @[BlackBox.scala 125:9]
    node T_13 = eq(T_11, UInt<1>("h00")) @[BlackBox.scala 125:9]
    when T_13 : @[BlackBox.scala 125:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:125 assert(blackBoxOne.io.out  === UInt(1))\n") @[BlackBox.scala 125:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 125:9]
      skip @[BlackBox.scala 125:9]
    node T_15 = eq(blackBoxFour.out, UInt<3>("h04")) @[BlackBox.scala 126:30]
    node T_16 = or(T_15, reset) @[BlackBox.scala 126:9]
    node T_18 = eq(T_16, UInt<1>("h00")) @[BlackBox.scala 126:9]
    when T_18 : @[BlackBox.scala 126:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:126 assert(blackBoxFour.io.out === UInt(4))\n") @[BlackBox.scala 126:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 126:9]
      skip @[BlackBox.scala 126:9]
    node T_20 = eq(blackBoxStringParamOne.out, UInt<1>("h01")) @[BlackBox.scala 127:40]
    node T_21 = or(T_20, reset) @[BlackBox.scala 127:9]
    node T_23 = eq(T_21, UInt<1>("h00")) @[BlackBox.scala 127:9]
    when T_23 : @[BlackBox.scala 127:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:127 assert(blackBoxStringParamOne.io.out === UInt(1))\n") @[BlackBox.scala 127:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 127:9]
      skip @[BlackBox.scala 127:9]
    node T_25 = eq(blackBoxStringParamTwo.out, UInt<2>("h02")) @[BlackBox.scala 128:40]
    node T_26 = or(T_25, reset) @[BlackBox.scala 128:9]
    node T_28 = eq(T_26, UInt<1>("h00")) @[BlackBox.scala 128:9]
    when T_28 : @[BlackBox.scala 128:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:128 assert(blackBoxStringParamTwo.io.out === UInt(2))\n") @[BlackBox.scala 128:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 128:9]
      skip @[BlackBox.scala 128:9]
    node T_30 = eq(blackBoxRealParamOne.out, UInt<62>("h03ff0000000000000")) @[BlackBox.scala 129:38]
    node T_31 = or(T_30, reset) @[BlackBox.scala 129:9]
    node T_33 = eq(T_31, UInt<1>("h00")) @[BlackBox.scala 129:9]
    when T_33 : @[BlackBox.scala 129:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:129 assert(blackBoxRealParamOne.io.out === UInt(0x3ff0000000000000L))\n") @[BlackBox.scala 129:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 129:9]
      skip @[BlackBox.scala 129:9]
    node T_35 = eq(blackBoxRealParamNeg.out, UInt<64>("h0bff0000000000000")) @[BlackBox.scala 130:38]
    node T_36 = or(T_35, reset) @[BlackBox.scala 130:9]
    node T_38 = eq(T_36, UInt<1>("h00")) @[BlackBox.scala 130:9]
    when T_38 : @[BlackBox.scala 130:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:130 assert(blackBoxRealParamNeg.io.out === UInt(BigInt(\"bff0000000000000\", 16)))\n") @[BlackBox.scala 130:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 130:9]
      skip @[BlackBox.scala 130:9]
    node T_40 = eq(blackBoxTypeParamBit.out, UInt<1>("h01")) @[BlackBox.scala 131:38]
    node T_41 = or(T_40, reset) @[BlackBox.scala 131:9]
    node T_43 = eq(T_41, UInt<1>("h00")) @[BlackBox.scala 131:9]
    when T_43 : @[BlackBox.scala 131:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:131 assert(blackBoxTypeParamBit.io.out === UInt(1))\n") @[BlackBox.scala 131:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 131:9]
      skip @[BlackBox.scala 131:9]
    node T_45 = eq(blackBoxTypeParamWord.out, UInt<32>("h0deadbeef")) @[BlackBox.scala 132:39]
    node T_46 = or(T_45, reset) @[BlackBox.scala 132:9]
    node T_48 = eq(T_46, UInt<1>("h00")) @[BlackBox.scala 132:9]
    when T_48 : @[BlackBox.scala 132:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at BlackBox.scala:132 assert(blackBoxTypeParamWord.io.out === UInt(\"hdeadbeef\", 32))\n") @[BlackBox.scala 132:9]
      stop(clock, UInt<1>(1), 1) @[BlackBox.scala 132:9]
      skip @[BlackBox.scala 132:9]
    when end : @[BlackBox.scala 134:13]
      node T_50 = eq(reset, UInt<1>("h00")) @[BlackBox.scala 134:19]
      when T_50 : @[BlackBox.scala 134:19]
        stop(clock, UInt<1>(1), 0) @[BlackBox.scala 134:19]
        skip @[BlackBox.scala 134:19]
      skip @[BlackBox.scala 134:13]
    

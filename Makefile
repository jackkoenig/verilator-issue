
default: run

DESIGN ?= BlackBoxWithParamsTester
SOURCES ?= _BlackBoxTest.v $(DESIGN).v $(DESIGN).fir top.cpp

CFLAGS ?= -Wno-undefined-bool-conversion -O0 -DTOP_TYPE=V$(DESIGN) -include V$(DESIGN).h
VFLAGS ?= --cc --assert -Wno-fatal -Wno-WIDTH -Wno-STMTDLY --trace 
BUILD_DIR ?= obj_dir
SIM_CPP ?= $(BUILD_DIR)/V$(DESIGN).cpp
SIM_BIN ?= $(BUILD_DIR)/V$(DESIGN)
VOPT ?= 1

$(SIM_CPP): $(SOURCES)
	verilator $(VFLAGS) $(DESIGN).v -v _BlackBoxTest.v -O$(VOPT) --top-module $(DESIGN) +define+TOP_TYPE=V$(DESIGN) +define+PRINTF_COND=!$(DESIGN).reset +define+STOP_COND=!$(DESIGN).reset -CFLAGS "$(CFLAGS)" --exe top.cpp -Mdir $(BUILD_DIR)

$(SIM_BIN): $(SIM_CPP)
	make -C $(BUILD_DIR) -f V$(DESIGN).mk V$(DESIGN)

run: $(SIM_BIN)
	$(BUILD_DIR)/V$(DESIGN)

clean:
	rm -rf $(BUILD_DIR) *.vcd

.PHONY: clean run


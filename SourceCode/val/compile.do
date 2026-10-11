# compile.do
# Usage (ModelSim transcript):  do compile.do
# Builds the UVM library once, then compiles the testbench in dependency order.

# ---------------- settings ----------------
set PROJ "C:/Users/peter/OneDrive/Desktop/RISCV-Multicycle/SourceCode/val"
set UVM  "C:/intelFPGA/20.1/modelsim_ase/verilog_src/uvm-1.2/src"
set TOP  tb_top
set REBUILD_UVM 0   ;# set to 1 to force a rebuild of uvm_lib
set RUN_SIM     1   ;# set to 0 to compile only

cd $PROJ

# End any running simulation so the work library can be rebuilt
catch {quit -sim}

# ---------------- UVM library (built once) ----------------
if {$REBUILD_UVM && [file exists uvm_lib]} {
    vdel -lib uvm_lib -all
}
if {![file exists uvm_lib]} {
    echo "Building uvm_lib ..."
    vlib uvm_lib
    vlog -sv -work uvm_lib +define+UVM_NO_DPI +incdir+$UVM $UVM/uvm_pkg.sv
}
vmap uvm_lib uvm_lib

# ---------------- work library (rebuilt every run) ----------------
if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

# ---------------- VHDL RTL (uncomment and edit when the DUT is in) ----------------
# vcom -2008 -work work C:/path/to/your/rtl/*.vhd

# ---------------- SystemVerilog testbench, in dependency order ----------------
set COMMON "-sv -work work -L uvm_lib +incdir+$UVM +incdir+sequences +incdir+env +incdir+tests"

# 1. Sequence-side package (exec_item, sequences)
vlog {*}$COMMON sequences/exec_pkg.sv

# 2. Env package (driver, monitor, predictor, scoreboard, agent, env)   [uncomment later]
# vlog {*}$COMMON env/exec_env_pkg.sv

# 3. Interface                                                           [uncomment later]
# vlog {*}$COMMON tb/exec_if.sv

# 4. Test package                                                        [uncomment later]
# vlog {*}$COMMON tests/exec_test_pkg.sv

# 5. Top level (imports the packages above)
vlog {*}$COMMON tb/tb_top.sv

# ---------------- run ----------------
if {$RUN_SIM} {
    vsim -L uvm_lib work.$TOP
    onfinish stop
    run -all
}

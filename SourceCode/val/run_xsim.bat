@echo off
REM run_xsim.bat - run from the project root:  .\run_xsim.bat

set VIVADO_BIN=C:\AMDDesignTools\2026.1\Vivado\bin
set RTL=C:\Users\peter\OneDrive\Desktop\RISCV-Multicycle\SourceCode\rtl

set TOP=tb_top
set SNAP=tb_snap
set INC=-i ..\sequences -i ..\env -i ..\tests

if not exist xsim_build mkdir xsim_build
cd xsim_build

REM ---- 1. VHDL RTL (dependencies first, ExecUnit last) ----
call %VIVADO_BIN%\xvhdl.bat -2008 %RTL%\BLAN.vhd %RTL%\BrentKungAdder.vhd %RTL%\LogicUnit.vhd %RTL%\ShiftUnit.vhd %RTL%\ExecUnit.vhd
if errorlevel 1 goto :fail

REM ---- 2. SystemVerilog, in dependency order ----
call %VIVADO_BIN%\xvlog.bat -sv -L uvm %INC% ..\tb\exec_if.sv
if errorlevel 1 goto :fail

call %VIVADO_BIN%\xvlog.bat -sv -L uvm %INC% ..\sequences\exec_pkg.sv
if errorlevel 1 goto :fail

call %VIVADO_BIN%\xvlog.bat -sv -L uvm %INC% ..\env\exec_env_pkg.sv
if errorlevel 1 goto :fail

call %VIVADO_BIN%\xvlog.bat -sv -L uvm %INC% ..\tests\exec_test_pkg.sv
if errorlevel 1 goto :fail

call %VIVADO_BIN%\xvlog.bat -sv -L uvm %INC% ..\tb\tb_top.sv
if errorlevel 1 goto :fail

REM ---- 3. Elaborate ----
call %VIVADO_BIN%\xelab.bat -L uvm -timescale 1ns/1ps -debug typical work.%TOP% -s %SNAP%
if errorlevel 1 goto :fail

REM ---- 4. Run in the GUI ----
call %VIVADO_BIN%\xsim.bat %SNAP% -gui -tclbatch ../gui.tcl
goto :end

:fail
echo.
echo *** Build failed - see the first error above ***

:end
cd ..
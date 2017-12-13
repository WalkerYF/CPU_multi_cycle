@echo off
set xv_path=D:\\Xilinx\\Vivado\\2015.3\\bin
call %xv_path%/xsim CPU_single_cycle_tb_behav -key {Behavioral:sim_1:Functional:CPU_single_cycle_tb} -tclbatch CPU_single_cycle_tb.tcl -view E:/code/CPU_multi_cycle/CPU_multi_cycle/Control_unit_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

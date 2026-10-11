
module tb_top;

import uvm_pkg::*;
`include "uvm_macros.svh"
import exec_pkg::*;
import exec_env_pkg::*;
import exec_test_pkg::*;

logic clk = 0;
always #5 clk = ~clk;

exec_if vif(clk);

ExecUnit #(.N(64)) u_dut (
    .A(vif.A), .B(vif.B), .LogicFN(vif.LogicFN), .ShiftFN(vif.ShiftFN),
    .FuncClass(vif.FuncClass), .ExtWord(vif.ExtWord), .AddNSub(vif.AddNSub),
    .Y(vif.Y), .Zero(vif.Zero), .AltB(vif.AltB), .AltBu(vif.AltBu));

initial begin
    exec_vif_config::set(null, "*", "vif", vif);
    run_test("exec_base_test");


end

endmodule : tb_top


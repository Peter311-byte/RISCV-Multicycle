interface exec_if #(parameter int N = 64)(input logic clk);

logic [N-1:0] A, B;
logic [1:0] LogicFN,ShiftFN,FuncClass;
logic ExtWord;
logic AddNSub;
logic [N-1:0] Y;
logic Zero;
logic AltB;
logic AltBu;
logic valid; //not used in the circuit, but for the monitor to know the outputs of the dut are valid
endinterface
class execution_simple_item extends uvm_sequence_item;

// randomizable inputs:
rand logic [63:0] A, B;
rand logic [1:0] LogicFN,ShiftFN,FuncClass;
rand logic ExtWord;
rand logic AddNSub;


// observed outputs only!
logic [63:0] Y = 0;
logic Zero = 0;
logic AltB = 0;
logic AltBu = 0;
rand int packet_delay; // how long after do we want to send the next sequence

`uvm_object_utils_begin(execution_simple_item)
    `uvm_field_int(A, UVM_ALL_ON | UVM_DEC)
    `uvm_field_int(B, UVM_ALL_ON | UVM_DEC)
    `uvm_field_int(LogicFN, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(ShiftFN, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(FuncClass, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(ExtWord, UVM_ALL_ON | UVM_BIN)
    `uvm_field_int(AddNSub, UVM_ALL_ON | UVM_BIN)

`uvm_object_utils_end

function new(string name = "execution_simple_item");
super.new(name);

endfunction:new



constraint default_ExtWord   {ExtWord == 0;} // force no extword types for now, just want to see if the 64 bit verison works for now
constraint default_delay     {packet_delay>=0; packet_delay <20;}
constraint default_FuncClass {FuncClass == 0;} // priortize additon or subtraction for now as a default sequence
constraint default_ShiftFN   {ShiftFN == 0;} // priortize additon or subtraction for now as a default sequence
constraint default_A_val     {A>=0; A<1000;} // numbers are more readable
constraint default_B_val     {B>=0; B<1000;} // numbers are more readable


endclass: execution_simple_item
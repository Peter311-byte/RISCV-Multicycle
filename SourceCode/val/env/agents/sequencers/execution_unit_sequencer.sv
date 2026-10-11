class execution_unit_sequencer extends uvm_sequencer #(execution_simple_item);

    execution_simple_item exec_item;

    `uvm_component_utils(execution_unit_sequencer)

    function new(string name, uvm_component parent);
        super.new(name,parent);
    endfunction:new


    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(),{"start of simulation for ", get_full_name()}, UVM_HIGH)
    endfunction




endclass
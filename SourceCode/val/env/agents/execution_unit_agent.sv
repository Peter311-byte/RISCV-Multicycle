class execution_unit_agent extends uvm_agent;

    `uvm_component_utils(execution_unit_agent)
    exec_tx_rx_monitor monitor;
    exec_tx_driver driver;
    execution_unit_sequencer sequencer;

    function new(string name, uvm_component parent);
        super.new(name,parent);
    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(get_is_active()) begin
            sequencer = execution_unit_sequencer::type_id::create("sequencer",this);
            driver    = exec_tx_driver::type_id::create("driver",this);
        end 
        
        monitor = exec_tx_rx_monitor::type_id::create("monitor",this);

    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);

        if(get_is_active()) begin
         driver.seq_item_port.connect(sequencer.seq_item_export);
        end

    endfunction : connect_phase

endclass : execution_unit_agent
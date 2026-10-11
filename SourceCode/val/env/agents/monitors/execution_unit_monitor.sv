class exec_tx_rx_monitor extends uvm_monitor;
    `uvm_component_utils(exec_tx_rx_monitor)

    exec_vif_t vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        if (!exec_vif_config::get(this, "", "vif", vif))
            `uvm_fatal("NOVIF", $sformatf("virtual interface not set for %s", get_full_name()))
    endfunction : connect_phase


    function void build_phase(uvm_phase phase);
        super.build_phase(phase);


    endfunction : build_phase

    task run_phase(uvm_phase phase);

        execution_simple_item item;

        forever begin
            @(posedge vif.clk);
                if(vif.valid) begin
                    item = execution_simple_item::type_id::create("item");
                     item.A         = vif.A;
                     item.B         = vif.B;
                     item.LogicFN   = vif.LogicFN;
                     item.ShiftFN   = vif.ShiftFN;
                     item.FuncClass = vif.FuncClass;
                     item.Y         = vif.Y;
                     item.Zero      = vif.Zero;
                     item.AltB      = vif.AltB;
                     item.AltBu     = vif.AltBu;
                end

        end



    endtask




endclass : exec_tx_rx_monitor
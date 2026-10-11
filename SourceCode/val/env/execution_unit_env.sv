class execution_unit_env extends uvm_env;

    `uvm_component_utils(execution_unit_env)

    execution_unit_agent agent;

    function new(string name, uvm_component parent);
        super.new(name,parent);
    endfunction : new


    function void build_phase(uvm_phase phase);

        super.build_phase(phase);
        uvm_config_db#(uvm_active_passive_enum)::set(this, "agent", "is_active", UVM_ACTIVE);
        agent = execution_unit_agent::type_id::create("agent",this);
    endfunction : build_phase


    // !IMPORTANT! need to add connect phase from monitor to scoreboard after 


endclass:execution_unit_env
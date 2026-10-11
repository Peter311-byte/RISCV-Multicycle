class execution_unit_env extends uvm_env;

    `uvm_component_utils(execution_unit_env)

    execution_unit_agent agent;
    execution_unit_scoreboard scoreboard;

    function new(string name, uvm_component parent);
        super.new(name,parent);
    endfunction : new


    function void build_phase(uvm_phase phase);

        super.build_phase(phase);
        uvm_config_db#(uvm_active_passive_enum)::set(this, "agent", "is_active", UVM_ACTIVE);
        agent = execution_unit_agent::type_id::create("agent",this);
        scoreboard = execution_unit_scoreboard::type_id::create("scoreboard",this);
    endfunction : build_phase


    // !IMPORTANT! need to add connect phase from monitor to scoreboard after 
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);

        agent.monitor.mod_analysis_port.connect(scoreboard.ap_imp);


    endfunction : connect_phase

endclass:execution_unit_env
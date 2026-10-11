

class exec_base_test extends uvm_test;

    `uvm_component_utils(exec_base_test)

    execution_unit_env env;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction:new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = execution_unit_env::type_id::create("env",this);

    endfunction:build_phase

    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        uvm_top.print_topology();
    endfunction : end_of_elaboration_phase

    task run_phase(uvm_phase phase);
        exec_base_seq s;
        s = exec_base_seq::type_id::create("s");
        phase.phase_done.set_drain_time(this, 200ns);
        phase.raise_objection(this);
            s.start(env.agent.sequencer);
        phase.drop_objection(this);



    endtask





endclass:exec_base_test
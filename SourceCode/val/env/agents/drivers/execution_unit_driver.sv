class exec_tx_driver extends uvm_driver#(execution_simple_item);

`uvm_component_utils(exec_tx_driver)

exec_vif_t vif;

function new(string name, uvm_component parent);
    super.new(name,parent);
endfunction 

function void connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  if (!exec_vif_config::get(this, "", "vif", vif))
    `uvm_fatal("NOVIF", $sformatf("virtual interface not set for %s", get_full_name()))
endfunction

function void build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction : build_phase


task run_phase (uvm_phase phase);

  // drive the inputs at the negative edge of the clock so they have time to settle before the dut
  // eventhough the clock is not needed for this purely combination circuit, it's good practice for the future circuits i will be testing (i.e the whole processor)
  vif.A         <= 0;
  vif.B         <= 0;
  vif.LogicFN   <= 0;
  vif.ShiftFN   <= 0;
  vif.FuncClass <= 0;
  vif.ExtWord   <= 0;
  vif.AddNSub   <= 0;
  vif.valid     <= 0;
  forever begin
  seq_item_port.get_next_item(req);
    @(negedge vif.clk);
      vif.A         <= req.A;
      vif.B         <= req.B;
      vif.LogicFN   <= req.LogicFN;
      vif.ShiftFN   <= req.ShiftFN;
      vif.FuncClass <= req.FuncClass;
      vif.ExtWord   <= req.ExtWord;
      vif.AddNSub   <= req.AddNSub;
      vif.valid     <= 1;
  seq_item_port.item_done();

    @(negedge vif.clk);
      vif.valid = 0;




  end 

endtask

endclass:exec_tx_driver
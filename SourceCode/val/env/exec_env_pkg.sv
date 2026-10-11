package exec_env_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import exec_pkg::*;

  `include "agents/drivers/execution_unit_driver.sv"
  `include "agents/sequencers/execution_unit_sequencer.sv"
  `include "agents/monitors/execution_unit_monitor.sv"
  `include "agents/execution_unit_agent.sv"
  `include "execution_unit_env.sv"
  // future files go below, one line each
endpackage
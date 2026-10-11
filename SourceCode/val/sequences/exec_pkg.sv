package exec_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
typedef virtual exec_if exec_vif_t;
typedef uvm_config_db#(virtual exec_if) exec_vif_config;
`include "execution_simple_item.sv"
`include "exec_base_sequence.sv"

endpackage
class exec_base_seq extends uvm_sequence #(execution_simple_item);
  `uvm_object_utils(exec_base_seq)

  int num_items = 10;

  function new(string name = "exec_base_seq");
    super.new(name);
  endfunction

  task body();
    execution_simple_item item;
    repeat (num_items) begin
      item = execution_simple_item::type_id::create("item");
      start_item(item);
      if (!item.randomize())
        `uvm_error("SEQ", "randomize failed")
      finish_item(item);
    end
  endtask
endclass
class execution_unit_scoreboard extends uvm_scoreboard;

    `uvm_component_utils(execution_unit_scoreboard)
    uvm_analysis_imp #(execution_simple_item, execution_unit_scoreboard) ap_imp;

    function new (string name, uvm_component parent);
        super.new(name,parent);

    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ap_imp = new("ap_imp", this);

    endfunction : build_phase

    // right now we only have addition case

    function void write(execution_simple_item item);
    // reparametrize these to a general N, fine for now since our current item is forced to be 64 bits
    logic [63:0] A, B;
    logic [1:0] LogicFN,ShiftFN,FuncClass;
    logic ExtWord;
    logic AddNSub;
    logic [63:0] Y;
    logic Zero;
    logic AltB;
    logic AltBu;
    bit pass;

    A = item.A;
    B = item.B;
    LogicFN = item.LogicFN;
    ShiftFN = item.ShiftFN;
    FuncClass = item.FuncClass;
    ExtWord = item.ExtWord;
    AddNSub = item.AddNSub;
    Y = item.Y;
    Zero = item.Zero;
    AltB = item.AltB;
    AltBu = item.AltBu;
    

    case(FuncClass)
        2'b00: begin // indicates either a shift function or addition
            case(ShiftFN)
                2'b00: pass = predict_check_arithmetic_function(A,B,AddNSub,Y);

                default: `uvm_error(get_type_name(),"not a possible combination for current item")
            endcase
        end  
        
        default: `uvm_error(get_type_name(), "not a possible combination for current item")

    endcase



    endfunction: write


    function bit predict_check_arithmetic_function(logic [63:0] A, logic[63:0] B, logic AddNSub, logic[63:0] Y);

        logic [63:0] predicted_y;

        predicted_y = 0;
        // first let's do a predict and then we will check
        case(AddNSub)
            1'b0: begin
                predicted_y = A + B;
            end
            1'b1: begin
                predicted_y = A - B;
            end
            default: `uvm_error(get_type_name(),"AddNSub is in a unknown state!!!")
        endcase


        // let's check if our predicted value is equal to the observed value now

        if( Y != predicted_y) begin
            `uvm_error(get_type_name(),"Arithemtic Mismatch!")
            return 0;
        end

        return 1;

    endfunction : predict_check_arithmetic_function



endclass : execution_unit_scoreboard
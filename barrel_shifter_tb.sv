// Code your testbench here

module tb_barrel_shifter;

    logic [7:0] data_in;
    logic [2:0] shift_amt;
    logic [1:0] shift_type;
    logic [7:0] data_out;

    barrel_shifter #(.WIDTH(8)) uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .shift_type(shift_type),
        .data_out(data_out)
    );

    initial begin
        data_in = 8'b10110011;

        // Logical Shift Left by 2
        shift_amt = 3'd2; shift_type = 2'b00;
        #10 $display("LSL 2: %b", data_out);

        // Logical Shift Right by 2
        shift_amt = 3'd2; shift_type = 2'b01;
        #10 $display("LSR 2: %b", data_out);

        // Rotate Left by 2
        shift_amt = 3'd2; shift_type = 2'b10;
        #10 $display("ROL 2: %b", data_out);

        // Rotate Right by 2
        shift_amt = 3'd2; shift_type = 2'b11;
        #10 $display("ROR 2: %b", data_out);

        $finish;
    end

endmodule

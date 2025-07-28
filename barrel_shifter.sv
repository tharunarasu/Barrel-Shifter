// Code your design here

module barrel_shifter #(
  parameter WIDTH = 8
)(
  input logic [WIDTH -1 : 0] data_in,
  input logic [$clog2(WIDTH) -1 :0] shift_amt,
  input logic [1:0] shift_type,
  output logic [WIDTH - 1 : 0] data_out
);
  
  always_comb begin
    case(shift_type)
      2'b00 : data_out = data_in << shift_amt;
      2'b01 : data_out = data_in >> shift_amt;
      2'b10: data_out =  (data_in >> shift_amt) | (data_in << (WIDTH - shift_amt));
      2'b11 : data_out = (data_in << shift_amt) | (data_in >> (WIDTH - shift_amt));
      default: data_out = data_in;
      endcase
   end
                                                    
endmodule
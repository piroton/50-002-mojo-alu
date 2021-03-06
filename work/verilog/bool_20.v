/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module bool_20 (
    input [5:0] opcode,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] actualbool
  );
  
  
  
  always @* begin
    
    case (opcode[0+3-:4])
      4'h8: begin
        actualbool = a & b;
      end
      4'he: begin
        actualbool = a | b;
      end
      4'h6: begin
        actualbool = a ^ b;
      end
      4'ha: begin
        actualbool = a;
      end
      4'hf: begin
        actualbool = ~(a | b);
      end
      4'h9: begin
        actualbool = ~(a & b);
      end
      4'h7: begin
        actualbool = ~(a ^ b);
      end
      default: begin
        actualbool = a;
      end
    endcase
  end
endmodule

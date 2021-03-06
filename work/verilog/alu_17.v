/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_17 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] opcode,
    output reg [15:0] out,
    output reg z,
    output reg v,
    output reg n,
    output reg overflow,
    output reg [15:0] getA,
    output reg [15:0] getB,
    output reg [5:0] getOpcode
  );
  
  
  
  wire [16-1:0] M_bool_actualbool;
  reg [6-1:0] M_bool_opcode;
  reg [16-1:0] M_bool_a;
  reg [16-1:0] M_bool_b;
  bool_20 bool (
    .opcode(M_bool_opcode),
    .a(M_bool_a),
    .b(M_bool_b),
    .actualbool(M_bool_actualbool)
  );
  
  wire [1-1:0] M_addr_zero;
  wire [1-1:0] M_addr_ver;
  wire [1-1:0] M_addr_neg;
  wire [16-1:0] M_addr_outsum;
  wire [1-1:0] M_addr_overflow;
  reg [6-1:0] M_addr_opcode;
  reg [16-1:0] M_addr_a;
  reg [16-1:0] M_addr_b;
  adder_21 addr (
    .opcode(M_addr_opcode),
    .a(M_addr_a),
    .b(M_addr_b),
    .zero(M_addr_zero),
    .ver(M_addr_ver),
    .neg(M_addr_neg),
    .outsum(M_addr_outsum),
    .overflow(M_addr_overflow)
  );
  
  wire [1-1:0] M_comp_comparator;
  reg [6-1:0] M_comp_opcode;
  reg [1-1:0] M_comp_z;
  reg [1-1:0] M_comp_n;
  reg [1-1:0] M_comp_v;
  comparator_22 comp (
    .opcode(M_comp_opcode),
    .z(M_comp_z),
    .n(M_comp_n),
    .v(M_comp_v),
    .comparator(M_comp_comparator)
  );
  
  wire [16-1:0] M_bits_z;
  reg [6-1:0] M_bits_opcode;
  reg [16-1:0] M_bits_a;
  reg [16-1:0] M_bits_b;
  bitshift_23 bits (
    .opcode(M_bits_opcode),
    .a(M_bits_a),
    .b(M_bits_b),
    .z(M_bits_z)
  );
  
  always @* begin
    getA = a;
    getB = b;
    getOpcode = opcode;
    M_bool_a = a;
    M_bool_b = b;
    M_bool_opcode = opcode;
    M_addr_a = a;
    M_addr_b = b;
    M_addr_opcode = opcode;
    M_comp_z = M_addr_zero;
    M_comp_v = M_addr_ver;
    M_comp_n = M_addr_neg;
    M_comp_opcode = opcode;
    M_bits_a = a;
    M_bits_b = b;
    M_bits_opcode = opcode;
    overflow = M_addr_overflow;
    
    case (opcode[4+1-:2])
      2'h0: begin
        out = M_addr_outsum;
        z = M_addr_zero;
        v = M_addr_ver;
        n = M_addr_neg;
      end
      2'h1: begin
        out = M_bool_actualbool;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      2'h2: begin
        out = M_bits_z;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      2'h3: begin
        out = M_comp_comparator;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      default: begin
        out = 1'h0;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
    endcase
  end
endmodule

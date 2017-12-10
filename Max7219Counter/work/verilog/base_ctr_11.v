/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     BASE = BASE
*/
module base_ctr_11 (
    input clk,
    input rst,
    input inc,
    output reg ovf,
    output reg [4:0] value
  );
  
  localparam BASE = 5'h10;
  
  
  reg [4:0] M_val_d, M_val_q = 1'h0;
  
  always @* begin
    M_val_d = M_val_q;
    
    value = M_val_q;
    ovf = M_val_q == 6'h0f && inc;
    if (inc) begin
      if (M_val_q == 6'h0f) begin
        M_val_d = 1'h0;
      end else begin
        M_val_d = M_val_q + 1'h1;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_val_q <= 1'h0;
    end else begin
      M_val_q <= M_val_d;
    end
  end
  
endmodule

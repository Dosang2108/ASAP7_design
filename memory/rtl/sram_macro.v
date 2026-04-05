`timescale 1ns / 1ps

module sram_macro #(
    parameter DATA_WIDTH        = 32,
    parameter ADDR_WIDTH        = 32,
    parameter MEM_DEPTH         = 1024,
    parameter INIT_FILE         = ""
)(
    input  wire                      clk,
    
    // C?ng Ghi (T? FSM AXI)
    input  wire                      bram_we,
    input  wire [ADDR_WIDTH-1:0]     bram_waddr,
    input  wire [DATA_WIDTH-1:0]     bram_wdata,
    input  wire [(DATA_WIDTH/8)-1:0] bram_wstrb, // Macro ASAP7 không h? tr? Byte Enable nên ta b? tr?ng
    
    // C?ng Ð?c (T? FSM AXI)
    input  wire                      bram_re,
    input  wire [ADDR_WIDTH-1:0]     bram_raddr,
    output wire [DATA_WIDTH-1:0]     bram_rdata_out 
);

    wire [9:0] sram_addr;
    
    // Vì SRAM dùng chung 1 c?ng d?a ch? (Single-Port), n?u dang ghi thì uu tiên d?a ch? ghi
    assign sram_addr = bram_we ? bram_waddr[9:0] : bram_raddr[9:0];

    // Tín hi?u kích ho?t Bank (banksel) c?a ASAP7 là Active-HIGH (M?c 1 là b?t)
    wire sram_banksel = bram_we | bram_re; 

    srambank_256x4x32_6t122 u_sram_macro (
        .clk        (clk),
        .ADDRESS    (sram_addr),      
        .wd         (bram_wdata),      // D? li?u ghi 32-bit
        .banksel    (sram_banksel),    
        .read       (bram_re),         // L?nh d?c (Active High)
        .write      (bram_we),         // L?nh ghi (Active High)
        .dataout    (bram_rdata_out)   // D? li?u d?c ra 32-bit
    );

endmodule

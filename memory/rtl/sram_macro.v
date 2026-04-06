`timescale 1ns / 1ps

module sram_macro #(
    parameter DATA_WIDTH        = 32,
    parameter ADDR_WIDTH        = 32,
    parameter MEM_DEPTH         = 4096 // ÐÃ TR? L?I THÀNH 64KB
)(
    input  wire                      clk,
    
    // C?ng Ghi
    input  wire                      bram_we,
    input  wire [ADDR_WIDTH-1:0]     bram_waddr,
    input  wire [DATA_WIDTH-1:0]     bram_wdata,
    input  wire [(DATA_WIDTH/8)-1:0] bram_wstrb,
    
    // C?ng Ð?c
    input  wire                      bram_re,
    input  wire [ADDR_WIDTH-1:0]     bram_raddr,
    output wire [DATA_WIDTH-1:0]     bram_rdata_out 
);

    wire [13:0] sram_addr = bram_we ? bram_waddr[13:0] : bram_raddr[13:0];
    
    wire [3:0] bank_sel   = sram_addr[13:10]; // 4 bit cao ch?n Bank (0 d?n 15)
    wire [9:0] macro_addr = sram_addr[9:0];   // 10 bit th?p ch?n t? trong Bank

    wire [15:0] bank_en;
    wire sram_active = bram_we | bram_re;
    
    assign bank_en = sram_active ? (16'b1 << bank_sel) : 16'b0;

    wire [31:0] macro_q [0:15]; // M?ng dây ch?a d? li?u d?u ra c?a 16 kh?i

    genvar i;
    generate
        for (i = 0; i < 1; i = i + 1) begin : sram_banks
            srambank_256x4x32_6t122 u_bank (
                .clk      (clk),
                .ADDRESS  (macro_addr),
                .wd       (bram_wdata),     // Data in n?i chung cho c? 16 kh?i
                .banksel  (bank_en[i]),     // B?t dúng kh?i du?c ch?n
                .read     (bram_re),        // L?nh d?c chung
                .write    (bram_we),        // L?nh ghi chung
                .dataout  (macro_q[i])      // Data out ch?y ra m?ng dây riêng
            );
        end
    endgenerate

    
    reg [3:0] bank_sel_r;
    always @(posedge clk) begin
        if (bram_re) begin
            bank_sel_r <= bank_sel;
        end
    end

    // MUX 16-to-1 d? ch?n data t? dúng c?c SRAM dang xu?t d? li?u
    assign bram_rdata_out = macro_q[bank_sel_r];

endmodule

`timescale 1ns / 1ps

module sram_macro #(
    parameter DATA_WIDTH        = 32,
    parameter ADDR_WIDTH        = 32,
    parameter MEM_DEPTH         = 16384,
    parameter INIT_FILE         = ""
)(
    input  wire                      clk,
    
    input  wire                      bram_we,
    input  wire [ADDR_WIDTH-1:0]     bram_waddr,
    input  wire [DATA_WIDTH-1:0]     bram_wdata,
    input  wire [(DATA_WIDTH/8)-1:0] bram_wstrb,
    
    input  wire                      bram_re,
    input  wire [ADDR_WIDTH-1:0]     bram_raddr,
    output reg  [DATA_WIDTH-1:0]     bram_rdata_out
);

    (* ram_style = "block" *) reg [DATA_WIDTH-1:0] ram_memory [0:MEM_DEPTH-1];

    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, ram_memory);
        end
    end

    always @(posedge clk) begin
        if (bram_we) begin
            if (bram_wstrb[0]) ram_memory[bram_waddr][7:0]   <= bram_wdata[7:0];
            if (bram_wstrb[1]) ram_memory[bram_waddr][15:8]  <= bram_wdata[15:8];
            if (bram_wstrb[2]) ram_memory[bram_waddr][23:16] <= bram_wdata[23:16];
            if (bram_wstrb[3]) ram_memory[bram_waddr][31:24] <= bram_wdata[31:24];
        end
    end

    always @(posedge clk) begin
        if (bram_re) begin
            bram_rdata_out <= ram_memory[bram_raddr];
        end
    end

endmodule

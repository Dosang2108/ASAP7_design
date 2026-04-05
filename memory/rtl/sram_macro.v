`timescale 1ns / 1ps

module sram_macro #(
    parameter DATA_WIDTH        = 32,
    parameter ADDR_WIDTH        = 32,
    parameter MEM_DEPTH         = 16384,
    parameter INIT_FILE         = ""
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
    output wire [DATA_WIDTH-1:0]     bram_rdata_out  // Luu ý: S?a 'reg' thành 'wire' ? dây
);

// =========================================================================
// KHU V?C B? ?N KH?I TRÌNH T?NG H?P GENUS (CH? CH?Y TRONG SIMULATION)
// =========================================================================
// synthesis translate_off

    (* ram_style = "block" *) reg [DATA_WIDTH-1:0] ram_memory [0:MEM_DEPTH-1];
    reg [DATA_WIDTH-1:0] rdata_reg;

    // Kh?i t?o b? nh? n?u có file
    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, ram_memory);
        end
    end

    // Ti?n trình Ghi
    always @(posedge clk) begin
        if (bram_we) begin
            if (bram_wstrb[0]) ram_memory[bram_waddr][7:0]   <= bram_wdata[7:0];
            if (bram_wstrb[1]) ram_memory[bram_waddr][15:8]  <= bram_wdata[15:8];
            if (bram_wstrb[2]) ram_memory[bram_waddr][23:16] <= bram_wdata[23:16];
            if (bram_wstrb[3]) ram_memory[bram_waddr][31:24] <= bram_wdata[31:24];
        end
    end

    // Ti?n trình Ð?c
    always @(posedge clk) begin
        if (bram_re) begin
            rdata_reg <= ram_memory[bram_raddr];
        end
    end

    assign bram_rdata_out = rdata_reg;

// synthesis translate_on
// =========================================================================

endmodule

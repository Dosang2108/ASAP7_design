`timescale 1ns / 1ps

module top_axi_ram #(
    parameter ADDR_WIDTH        = 32,
    parameter DATA_WIDTH        = 32,
    parameter ID_WIDTH          = 5,
    parameter ADDR_MASK         = 32'h0000_FFFF,
    parameter MEM_DEPTH         = 16384,
    parameter INIT_FILE         = ""
)(
    input  wire                     clk,
    input  wire                     rst_n,

    // Giao ti?p AXI toàn h? th?ng (Khai báo l?i toàn b? port AXI ? dây)
    input  wire [ID_WIDTH-1:0]      s_axi_awid,
    input  wire [ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  wire [7:0]               s_axi_awlen,
    input  wire [2:0]               s_axi_awsize,
    input  wire [1:0]               s_axi_awburst,
    input  wire                     s_axi_awlock,
    input  wire [3:0]               s_axi_awcache,
    input  wire [2:0]               s_axi_awprot,
    input  wire [3:0]               s_axi_awqos,
    input  wire [3:0]               s_axi_awregion,
    input  wire                     s_axi_awvalid,
    output wire                     s_axi_awready,

    input  wire [DATA_WIDTH-1:0]    s_axi_wdata,
    input  wire [(DATA_WIDTH/8)-1:0]s_axi_wstrb,
    input  wire                     s_axi_wlast,
    input  wire                     s_axi_wvalid,
    output wire                     s_axi_wready,

    output wire [ID_WIDTH-1:0]      s_axi_bid,
    output wire [1:0]               s_axi_bresp,
    output wire                     s_axi_bvalid,
    input  wire                     s_axi_bready,

    input  wire [ID_WIDTH-1:0]      s_axi_arid,
    input  wire [ADDR_WIDTH-1:0]    s_axi_araddr,
    input  wire [7:0]               s_axi_arlen,
    input  wire [2:0]               s_axi_arsize,
    input  wire [1:0]               s_axi_arburst,
    input  wire                     s_axi_arlock,
    input  wire [3:0]               s_axi_arcache,
    input  wire [2:0]               s_axi_arprot,
    input  wire [3:0]               s_axi_arqos,
    input  wire [3:0]               s_axi_arregion,
    input  wire                     s_axi_arvalid,
    output wire                     s_axi_arready,

    output wire [ID_WIDTH-1:0]      s_axi_rid,
    output wire [DATA_WIDTH-1:0]    s_axi_rdata,
    output wire [1:0]               s_axi_rresp,
    output wire                     s_axi_rlast,
    output wire                     s_axi_rvalid,
    input  wire                     s_axi_rready
);

    wire                      bram_we_wire;
    wire [ADDR_WIDTH-1:0]     bram_waddr_wire;
    wire [DATA_WIDTH-1:0]     bram_wdata_wire;
    wire [(DATA_WIDTH/8)-1:0] bram_wstrb_wire;
    wire                      bram_re_wire;
    wire [ADDR_WIDTH-1:0]     bram_raddr_wire;
    wire [DATA_WIDTH-1:0]     bram_rdata_wire;

    axi_ctrl #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .ADDR_MASK(ADDR_MASK)
    ) u_axi_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        // N?i port AXI
        .s_axi_awid(s_axi_awid), .s_axi_awaddr(s_axi_awaddr), .s_axi_awlen(s_axi_awlen), 
        .s_axi_awsize(s_axi_awsize), .s_axi_awburst(s_axi_awburst), .s_axi_awlock(s_axi_awlock), 
        .s_axi_awcache(s_axi_awcache), .s_axi_awprot(s_axi_awprot), .s_axi_awqos(s_axi_awqos), 
        .s_axi_awregion(s_axi_awregion), .s_axi_awvalid(s_axi_awvalid), .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata), .s_axi_wstrb(s_axi_wstrb), .s_axi_wlast(s_axi_wlast), 
        .s_axi_wvalid(s_axi_wvalid), .s_axi_wready(s_axi_wready),
        .s_axi_bid(s_axi_bid), .s_axi_bresp(s_axi_bresp), .s_axi_bvalid(s_axi_bvalid), .s_axi_bready(s_axi_bready),
        .s_axi_arid(s_axi_arid), .s_axi_araddr(s_axi_araddr), .s_axi_arlen(s_axi_arlen), 
        .s_axi_arsize(s_axi_arsize), .s_axi_arburst(s_axi_arburst), .s_axi_arlock(s_axi_arlock), 
        .s_axi_arcache(s_axi_arcache), .s_axi_arprot(s_axi_arprot), .s_axi_arqos(s_axi_arqos), 
        .s_axi_arregion(s_axi_arregion), .s_axi_arvalid(s_axi_arvalid), .s_axi_arready(s_axi_arready),
        .s_axi_rid(s_axi_rid), .s_axi_rdata(s_axi_rdata), .s_axi_rresp(s_axi_rresp), 
        .s_axi_rlast(s_axi_rlast), .s_axi_rvalid(s_axi_rvalid), .s_axi_rready(s_axi_rready),
        
        // N?i dây sang kh?i RAM
        .bram_we(bram_we_wire),
        .bram_waddr(bram_waddr_wire),
        .bram_wdata(bram_wdata_wire),
        .bram_wstrb(bram_wstrb_wire),
        .bram_re(bram_re_wire),
        .bram_raddr(bram_raddr_wire),
        .bram_rdata_in(bram_rdata_wire)
    );

    sram_macro #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH),
        .MEM_DEPTH(MEM_DEPTH)
//        .INIT_FILE(INIT_FILE)
    ) u_sram_macro (
        .clk(clk),
        .bram_we(bram_we_wire),
        .bram_waddr(bram_waddr_wire),
        .bram_wdata(bram_wdata_wire),
        .bram_wstrb(bram_wstrb_wire),
        .bram_re(bram_re_wire),
        .bram_raddr(bram_raddr_wire),
        .bram_rdata_out(bram_rdata_wire)
    );

endmodule

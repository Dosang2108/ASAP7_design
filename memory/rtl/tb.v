`timescale 1ns / 1ps

module tb_axi_ram;

    parameter ADDR_WIDTH = 32;
    parameter DATA_WIDTH = 32;
    parameter ID_WIDTH   = 5;
    reg clk;
    reg rst_n;
    reg  [ID_WIDTH-1:0]   s_axi_awid;
    reg  [ADDR_WIDTH-1:0] s_axi_awaddr;
    reg  [7:0]            s_axi_awlen;
    reg  [2:0]            s_axi_awsize;
    reg  [1:0]            s_axi_awburst;
    reg                   s_axi_awvalid;
    wire                  s_axi_awready;
    reg                   s_axi_awlock;
    reg  [3:0]            s_axi_awcache;
    reg  [2:0]            s_axi_awprot;
    reg  [3:0]            s_axi_awqos;
    reg  [3:0]            s_axi_awregion;

    // Kênh Write Data (W)
    reg  [DATA_WIDTH-1:0] s_axi_wdata;
    reg  [(DATA_WIDTH/8)-1:0] s_axi_wstrb;
    reg                   s_axi_wlast;
    reg                   s_axi_wvalid;
    wire                  s_axi_wready;

    // Kênh Write Response (B)
    wire [ID_WIDTH-1:0]   s_axi_bid;
    wire [1:0]            s_axi_bresp;
    wire                  s_axi_bvalid;
    reg                   s_axi_bready;

    // Kênh Read Address (AR)
    reg  [ID_WIDTH-1:0]   s_axi_arid;
    reg  [ADDR_WIDTH-1:0] s_axi_araddr;
    reg  [7:0]            s_axi_arlen;
    reg  [2:0]            s_axi_arsize;
    reg  [1:0]            s_axi_arburst;
    reg                   s_axi_arvalid;
    wire                  s_axi_arready;
    reg                   s_axi_arlock;
    reg  [3:0]            s_axi_arcache;
    reg  [2:0]            s_axi_arprot;
    reg  [3:0]            s_axi_arqos;
    reg  [3:0]            s_axi_arregion;

    // Kênh Read Data (R)
    wire [ID_WIDTH-1:0]   s_axi_rid;
    wire [DATA_WIDTH-1:0] s_axi_rdata;
    wire [1:0]            s_axi_rresp;
    wire                  s_axi_rlast;
    wire                  s_axi_rvalid;
    reg                   s_axi_rready;

    // --- G?i module (Instantiate DUT) ---
    top_axi_ram #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .ID_WIDTH(ID_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
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
        .s_axi_rlast(s_axi_rlast), .s_axi_rvalid(s_axi_rvalid), .s_axi_rready(s_axi_rready)
    );

    // --- T?o xung nh?p (Clock) chu k? 10ns (100MHz) ---
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // --- Kh?i t?o giá tr? m?c d?nh cho các chân không dùng t?i ---
    initial begin
        s_axi_awid = 0; s_axi_awlen = 8'h00; s_axi_awsize = 3'b010; // 4 Bytes
        s_axi_awburst = 2'b01; // INCR
        s_axi_awlock = 0; s_axi_awcache = 0; s_axi_awprot = 0; s_axi_awqos = 0; s_axi_awregion = 0;
        
        s_axi_arid = 0; s_axi_arlen = 8'h00; s_axi_arsize = 3'b010; // 4 Bytes
        s_axi_arburst = 2'b01; // INCR
        s_axi_arlock = 0; s_axi_arcache = 0; s_axi_arprot = 0; s_axi_arqos = 0; s_axi_arregion = 0;

        s_axi_awvalid = 0; s_axi_wvalid = 0; s_axi_bready = 0;
        s_axi_arvalid = 0; s_axi_rready = 0;
    end

    initial begin
        // 1. Reset h? th?ng
        rst_n = 0;
        #20;
        rst_n = 1;
        #20;

        $display("-----------------------------------------");
        $display("BAT DAU MO PHONG AXI RAM");
        $display("-----------------------------------------");

        // 2. Ghi d? li?u 32'hDEADBEEF vào d?a ch? 32'h0000_0010
        axi_write(32'h0000_0010, 32'hDEADBEEF);
        #20;

        // 3. Ghi d? li?u 32'hCAFEBABE vào d?a ch? 32'h0000_0020
        axi_write(32'h0000_0020, 32'hCAFEBABE);
        #20;

        // 4. Ð?c d? li?u t? d?a ch? 32'h0000_0010 d? ki?m tra
        axi_read(32'h0000_0010);
        #20;

        // 5. Ð?c d? li?u t? d?a ch? 32'h0000_0020 d? ki?m tra
        axi_read(32'h0000_0020);
        #50;

        $display("-----------------------------------------");
        $display("MO PHONG KET THUC THANH CONG!");
        $display("-----------------------------------------");
        $finish;
    end

    
    // Task Ghi (Write) 1 gói d? li?u
    task axi_write;
        input [ADDR_WIDTH-1:0] addr;
        input [DATA_WIDTH-1:0] data;
        begin
            // BU?C 1: G?i Ð?a ch? (AW Channel)
            @(posedge clk);
            s_axi_awaddr  <= addr;
            s_axi_awvalid <= 1'b1;
            wait(s_axi_awready); // Ð?i Slave s?n sàng nh?n
            @(posedge clk);
            s_axi_awvalid <= 1'b0;

            // BU?C 2: G?i D? li?u (W Channel)
            s_axi_wdata  <= data;
            s_axi_wstrb  <= 4'hF; // Cho phép ghi c? 4 bytes
            s_axi_wlast  <= 1'b1; // Báo hi?u dây là d? li?u cu?i cùng c?a gói
            s_axi_wvalid <= 1'b1;
            wait(s_axi_wready); // Ð?i Slave ghi xong
            @(posedge clk);
            s_axi_wvalid <= 1'b0;
            s_axi_wlast  <= 1'b0;

            s_axi_bready <= 1'b1; // S?n sàng nghe ph?n h?i
            wait(s_axi_bvalid);
            @(posedge clk);
            s_axi_bready <= 1'b0;
            
            $display("[%0t] DA GHI: Dia chi = %h, Du lieu = %h", $time, addr, data);
        end
    endtask

    task axi_read;
        input [ADDR_WIDTH-1:0] addr;
        begin
            @(posedge clk);
            s_axi_araddr  <= addr;
            s_axi_arvalid <= 1'b1;
            wait(s_axi_arready);
            @(posedge clk);
            s_axi_arvalid <= 1'b0;

            s_axi_rready <= 1'b1;
            wait(s_axi_rvalid);
            @(posedge clk);
            $display("[%0t] DA DOC: Dia chi = %h, Du lieu = %h", $time, addr, s_axi_rdata);
            s_axi_rready <= 1'b0;
        end
    endtask

endmodule

module Memory(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_0.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_1(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_1.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_2(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_2.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_3(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_3.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_4(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_4.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_5(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_5.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_6(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_6.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_7(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_7.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_8(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_8.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_9(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_9.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_10(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_10.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_11(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_11.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_12(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_12.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_13(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_13.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_14(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_14.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_15(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_15.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_16(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_16.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_17(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_17.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_18(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_18.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_19(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_19.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_20(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_20.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_21(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_21.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_22(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_22.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_23(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_23.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_24(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_24.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_25(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_25.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_26(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_26.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_27(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_27.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_28(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_28.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_29(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_29.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_30(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_30.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_31(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/backtile_init_31.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_32(
  input         clock,
  input  [10:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [4:0]  io_dataRead, // @[\\src\\main\\scala\\Memory.scala 48:14]
  input         io_writeEnable, // @[\\src\\main\\scala\\Memory.scala 48:14]
  input  [4:0]  io_dataWrite // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 57:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 57:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 57:26]
  wire [10:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 57:26]
  wire [4:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 57:26]
  wire [4:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 57:26]
  RamSpWf #(.ADDR_WIDTH(11), .DATA_WIDTH(5)) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 57:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 63:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 58:21]
  assign ramsSpWf_we = io_writeEnable; // @[\\src\\main\\scala\\Memory.scala 59:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 60:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 61:22]
  assign ramsSpWf_di = io_dataWrite; // @[\\src\\main\\scala\\Memory.scala 62:20]
endmodule
module Memory_34(
  input         clock,
  input  [10:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [4:0]  io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [10:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [4:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [4:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(11), .DATA_WIDTH(5), .LOAD_FILE("memory_init/backbuffer_init.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 5'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_35(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_0.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_36(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_1.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_37(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_2.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_38(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_3.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_39(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_4.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_40(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_5.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_41(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_6.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_42(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_7.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_43(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_8.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_44(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_9.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_45(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_10.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_46(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_11.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_47(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_12.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_48(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_13.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_49(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_14.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_50(
  input        clock,
  input  [9:0] io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [6:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [9:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [6:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(10), .DATA_WIDTH(7), .LOAD_FILE("memory_init/sprite_init_15.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 7'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module MultiHotPriortyReductionTree(
  input  [5:0] io_dataInput_0, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_1, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_2, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_3, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_4, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_5, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_6, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_7, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_8, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_9, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_10, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_11, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_12, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_13, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_14, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input  [5:0] io_dataInput_15, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_0, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_1, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_2, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_3, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_4, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_5, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_6, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_7, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_8, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_9, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_10, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_11, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_12, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_13, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_14, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  input        io_selectInput_15, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  output [5:0] io_dataOutput, // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
  output       io_selectOutput // @[\\src\\main\\scala\\GameUtilities.scala 53:14]
);
  wire  selectNodeOutputs_7 = io_selectInput_0 | io_selectInput_1; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_8 = io_selectInput_2 | io_selectInput_3; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_3 = selectNodeOutputs_7 | selectNodeOutputs_8; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_9 = io_selectInput_4 | io_selectInput_5; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_10 = io_selectInput_6 | io_selectInput_7; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_4 = selectNodeOutputs_9 | selectNodeOutputs_10; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_1 = selectNodeOutputs_3 | selectNodeOutputs_4; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire [5:0] dataNodeOutputs_7 = io_selectInput_0 ? io_dataInput_0 : io_dataInput_1; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_8 = io_selectInput_2 ? io_dataInput_2 : io_dataInput_3; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_3 = selectNodeOutputs_7 ? dataNodeOutputs_7 : dataNodeOutputs_8; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_9 = io_selectInput_4 ? io_dataInput_4 : io_dataInput_5; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_10 = io_selectInput_6 ? io_dataInput_6 : io_dataInput_7; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_4 = selectNodeOutputs_9 ? dataNodeOutputs_9 : dataNodeOutputs_10; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_1 = selectNodeOutputs_3 ? dataNodeOutputs_3 : dataNodeOutputs_4; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire  selectNodeOutputs_11 = io_selectInput_8 | io_selectInput_9; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_12 = io_selectInput_10 | io_selectInput_11; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_5 = selectNodeOutputs_11 | selectNodeOutputs_12; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire [5:0] dataNodeOutputs_11 = io_selectInput_8 ? io_dataInput_8 : io_dataInput_9; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_12 = io_selectInput_10 ? io_dataInput_10 : io_dataInput_11; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_5 = selectNodeOutputs_11 ? dataNodeOutputs_11 : dataNodeOutputs_12; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire  selectNodeOutputs_13 = io_selectInput_12 | io_selectInput_13; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire [5:0] dataNodeOutputs_13 = io_selectInput_12 ? io_dataInput_12 : io_dataInput_13; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_14 = io_selectInput_14 ? io_dataInput_14 : io_dataInput_15; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_6 = selectNodeOutputs_13 ? dataNodeOutputs_13 : dataNodeOutputs_14; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire [5:0] dataNodeOutputs_2 = selectNodeOutputs_5 ? dataNodeOutputs_5 : dataNodeOutputs_6; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  wire  selectNodeOutputs_14 = io_selectInput_14 | io_selectInput_15; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_6 = selectNodeOutputs_13 | selectNodeOutputs_14; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  wire  selectNodeOutputs_2 = selectNodeOutputs_5 | selectNodeOutputs_6; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
  assign io_dataOutput = selectNodeOutputs_1 ? dataNodeOutputs_1 : dataNodeOutputs_2; // @[\\src\\main\\scala\\GameUtilities.scala 85:34]
  assign io_selectOutput = selectNodeOutputs_1 | selectNodeOutputs_2; // @[\\src\\main\\scala\\GameUtilities.scala 86:54]
endmodule
module GraphicEngineVGA(
  input         clock,
  input         reset,
  input  [10:0] io_spriteXPosition_13, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input  [10:0] io_spriteXPosition_14, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input  [9:0]  io_spriteYPosition_13, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input  [9:0]  io_spriteYPosition_14, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_7, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_8, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_9, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_10, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_11, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_12, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_13, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_spriteVisible_14, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input  [9:0]  io_viewBoxX, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output        io_newFrame, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  input         io_frameUpdateDone, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output        io_missingFrameError, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output        io_viewBoxOutOfRangeError, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output [3:0]  io_vgaRed, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output [3:0]  io_vgaBlue, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output [3:0]  io_vgaGreen, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output        io_Hsync, // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
  output        io_Vsync // @[\\src\\main\\scala\\GraphicEngineVGA.scala 12:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
`endif // RANDOMIZE_REG_INIT
  wire  backTileMemories_0_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_0_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_0_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_1_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_1_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_1_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_2_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_2_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_2_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_3_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_3_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_3_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_4_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_4_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_4_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_5_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_5_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_5_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_6_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_6_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_6_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_7_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_7_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_7_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_8_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_8_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_8_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_9_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_9_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_9_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_10_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_10_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_10_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_11_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_11_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_11_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_12_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_12_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_12_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_13_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_13_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_13_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_14_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_14_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_14_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_15_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_15_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_15_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_16_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_16_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_16_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_17_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_17_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_17_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_18_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_18_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_18_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_19_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_19_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_19_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_20_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_20_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_20_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_21_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_21_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_21_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_22_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_22_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_22_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_23_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_23_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_23_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_24_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_24_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_24_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_25_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_25_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_25_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_26_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_26_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_26_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_27_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_27_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_27_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_28_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_28_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_28_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_29_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_29_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_29_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_30_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_30_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_30_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backTileMemories_31_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [9:0] backTileMemories_31_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire [6:0] backTileMemories_31_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
  wire  backBufferMemory_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
  wire [10:0] backBufferMemory_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
  wire [4:0] backBufferMemory_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
  wire  backBufferMemory_io_writeEnable; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
  wire [4:0] backBufferMemory_io_dataWrite; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
  wire  backBufferShadowMemory_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
  wire [10:0] backBufferShadowMemory_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
  wire [4:0] backBufferShadowMemory_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
  wire  backBufferShadowMemory_io_writeEnable; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
  wire [4:0] backBufferShadowMemory_io_dataWrite; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
  wire  backBufferRestoreMemory_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 180:39]
  wire [10:0] backBufferRestoreMemory_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 180:39]
  wire [4:0] backBufferRestoreMemory_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 180:39]
  wire  spriteMemories_0_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_0_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_0_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_1_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_1_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_1_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_2_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_2_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_2_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_3_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_3_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_3_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_4_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_4_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_4_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_5_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_5_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_5_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_6_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_6_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_6_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_7_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_7_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_7_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_8_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_8_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_8_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_9_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_9_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_9_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_10_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_10_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_10_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_11_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_11_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_11_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_12_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_12_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_12_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_13_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_13_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_13_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_14_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_14_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_14_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire  spriteMemories_15_clock; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [9:0] spriteMemories_15_io_address; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [6:0] spriteMemories_15_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_3; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_5; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_6; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataInput_15; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_3; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_5; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_6; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectInput_15; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire [5:0] multiHotPriortyReductionTree_io_dataOutput; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  wire  multiHotPriortyReductionTree_io_selectOutput; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
  reg [1:0] ScaleCounterReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 67:32]
  reg [9:0] CounterXReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 68:28]
  reg [9:0] CounterYReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 69:28]
  wire  _T_2 = CounterYReg == 10'h20c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 78:26]
  wire [9:0] _CounterYReg_T_1 = CounterYReg + 10'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 82:38]
  wire [9:0] _GEN_0 = CounterYReg == 10'h20c ? 10'h0 : _CounterYReg_T_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 78:131 79:23 82:23]
  wire [9:0] _CounterXReg_T_1 = CounterXReg + 10'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 85:36]
  wire  _GEN_4 = CounterXReg == 10'h31f & _T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 76:129 71:15]
  wire [1:0] _ScaleCounterReg_T_1 = ScaleCounterReg + 2'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 88:42]
  wire  _GEN_8 = ScaleCounterReg == 2'h3 & _GEN_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 71:15 74:52]
  reg [11:0] backMemoryRestoreCounter; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 202:41]
  wire  restoreEnabled = backMemoryRestoreCounter < 12'h800; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 205:33]
  wire  run = restoreEnabled ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 205:70 209:9 213:9]
  wire  Hsync = CounterXReg >= 10'h290 & CounterXReg < 10'h2f0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 92:79]
  wire  Vsync = CounterYReg >= 10'h1ea & CounterYReg < 10'h1ec; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 93:79]
  reg  io_Hsync_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Hsync_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Hsync_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Hsync_pipeReg_3; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Vsync_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Vsync_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Vsync_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  io_Vsync_pipeReg_3; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg [20:0] frameClockCount; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 104:32]
  wire [20:0] _frameClockCount_T_2 = frameClockCount + 21'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 105:92]
  wire  preDisplayArea = frameClockCount >= 21'h199a1b; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 106:40]
  reg [10:0] spriteXPositionReg_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [10:0] spriteXPositionReg_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
  reg [9:0] spriteYPositionReg_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg [9:0] spriteYPositionReg_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
  reg  spriteVisibleReg_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_3; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_5; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_6; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  reg  spriteVisibleReg_15; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:35]
  wire  _GEN_45 = io_newFrame ? 1'h0 : spriteVisibleReg_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_46 = io_newFrame ? 1'h0 : spriteVisibleReg_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_47 = io_newFrame ? 1'h0 : spriteVisibleReg_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_48 = io_newFrame ? 1'h0 : spriteVisibleReg_3; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_49 = io_newFrame ? 1'h0 : spriteVisibleReg_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_50 = io_newFrame ? 1'h0 : spriteVisibleReg_5; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_51 = io_newFrame ? 1'h0 : spriteVisibleReg_6; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_52 = io_newFrame ? io_spriteVisible_7 : spriteVisibleReg_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_53 = io_newFrame ? io_spriteVisible_8 : spriteVisibleReg_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_54 = io_newFrame ? io_spriteVisible_9 : spriteVisibleReg_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_55 = io_newFrame ? io_spriteVisible_10 : spriteVisibleReg_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_56 = io_newFrame ? io_spriteVisible_11 : spriteVisibleReg_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_57 = io_newFrame ? io_spriteVisible_12 : spriteVisibleReg_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_58 = io_newFrame ? io_spriteVisible_13 : spriteVisibleReg_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_59 = io_newFrame ? io_spriteVisible_14 : spriteVisibleReg_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  wire  _GEN_60 = io_newFrame ? 1'h0 : spriteVisibleReg_15; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35,35}]
  reg [9:0] viewBoxXReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 123:30]
  reg  missingFrameErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 128:37]
  reg  viewBoxOutOfRangeErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 130:42]
  wire [9:0] viewBoxXClipped = viewBoxXReg >= 10'h280 ? 10'h280 : viewBoxXReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 137:28]
  wire [10:0] pixelXBack = CounterXReg + viewBoxXClipped; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 139:27]
  wire [10:0] pixelYBack = {{1'd0}, CounterYReg}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 140:27]
  wire  _GEN_159 = viewBoxXReg > 10'h280 | viewBoxOutOfRangeErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 141:51 142:31 130:42]
  reg  newFrameStikyReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 147:33]
  wire  _GEN_160 = io_newFrame | newFrameStikyReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 148:21 149:22 147:33]
  reg  REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 151:16]
  wire  _GEN_162 = newFrameStikyReg & io_newFrame | missingFrameErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 154:41 155:26 128:37]
  wire [10:0] _backTileMemories_0_io_address_T_2 = 6'h20 * pixelYBack[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:75]
  wire [10:0] _GEN_460 = {{6'd0}, pixelXBack[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:62]
  wire [11:0] _backTileMemories_0_io_address_T_3 = _GEN_460 + _backTileMemories_0_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:62]
  reg [6:0] backTileMemoryDataRead_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_1_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_2_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_3_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_4_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_5_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_6_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_7_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_8_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_9_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_10_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_11_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_12_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_13_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_14_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_15_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_16_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_17_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_18_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_19_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_20_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_21_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_22_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_23_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_24_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_25_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_26_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_27_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_28_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_29_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_30_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [6:0] backTileMemoryDataRead_31_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
  reg [11:0] backMemoryCopyCounter; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 183:38]
  wire  _T_7 = backMemoryCopyCounter < 12'h800; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 187:32]
  wire [11:0] _backMemoryCopyCounter_T_1 = backMemoryCopyCounter + 12'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 188:54]
  wire  copyEnabled = preDisplayArea & _T_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 186:23 198:17]
  reg  copyEnabledReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 200:31]
  wire [11:0] _backMemoryRestoreCounter_T_1 = backMemoryRestoreCounter + 12'h1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 206:58]
  reg [10:0] backBufferShadowMemory_io_address_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 221:67]
  wire [10:0] _backBufferShadowMemory_io_address_T_2 = copyEnabled ? backMemoryCopyCounter[10:0] : 11'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 221:105]
  reg  backBufferShadowMemory_io_writeEnable_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 223:71]
  reg [10:0] backBufferMemory_io_address_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:61]
  wire [11:0] _backBufferMemory_io_address_T_3 = 6'h28 * pixelYBack[10:5]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:130]
  wire [11:0] _GEN_492 = {{6'd0}, pixelXBack[10:5]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:117]
  wire [12:0] _backBufferMemory_io_address_T_4 = _GEN_492 + _backBufferMemory_io_address_T_3; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:117]
  wire [12:0] _backBufferMemory_io_address_T_5 = copyEnabledReg ? {{2'd0}, backBufferMemory_io_address_REG} :
    _backBufferMemory_io_address_T_4; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:37]
  reg [4:0] fullBackgroundColor_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:56]
  wire [6:0] _GEN_173 = 5'h1 == fullBackgroundColor_REG ? backTileMemoryDataRead_1_REG : backTileMemoryDataRead_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_174 = 5'h2 == fullBackgroundColor_REG ? backTileMemoryDataRead_2_REG : _GEN_173; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_175 = 5'h3 == fullBackgroundColor_REG ? backTileMemoryDataRead_3_REG : _GEN_174; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_176 = 5'h4 == fullBackgroundColor_REG ? backTileMemoryDataRead_4_REG : _GEN_175; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_177 = 5'h5 == fullBackgroundColor_REG ? backTileMemoryDataRead_5_REG : _GEN_176; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_178 = 5'h6 == fullBackgroundColor_REG ? backTileMemoryDataRead_6_REG : _GEN_177; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_179 = 5'h7 == fullBackgroundColor_REG ? backTileMemoryDataRead_7_REG : _GEN_178; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_180 = 5'h8 == fullBackgroundColor_REG ? backTileMemoryDataRead_8_REG : _GEN_179; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_181 = 5'h9 == fullBackgroundColor_REG ? backTileMemoryDataRead_9_REG : _GEN_180; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_182 = 5'ha == fullBackgroundColor_REG ? backTileMemoryDataRead_10_REG : _GEN_181; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_183 = 5'hb == fullBackgroundColor_REG ? backTileMemoryDataRead_11_REG : _GEN_182; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_184 = 5'hc == fullBackgroundColor_REG ? backTileMemoryDataRead_12_REG : _GEN_183; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_185 = 5'hd == fullBackgroundColor_REG ? backTileMemoryDataRead_13_REG : _GEN_184; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_186 = 5'he == fullBackgroundColor_REG ? backTileMemoryDataRead_14_REG : _GEN_185; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_187 = 5'hf == fullBackgroundColor_REG ? backTileMemoryDataRead_15_REG : _GEN_186; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_188 = 5'h10 == fullBackgroundColor_REG ? backTileMemoryDataRead_16_REG : _GEN_187; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_189 = 5'h11 == fullBackgroundColor_REG ? backTileMemoryDataRead_17_REG : _GEN_188; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_190 = 5'h12 == fullBackgroundColor_REG ? backTileMemoryDataRead_18_REG : _GEN_189; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_191 = 5'h13 == fullBackgroundColor_REG ? backTileMemoryDataRead_19_REG : _GEN_190; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_192 = 5'h14 == fullBackgroundColor_REG ? backTileMemoryDataRead_20_REG : _GEN_191; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_193 = 5'h15 == fullBackgroundColor_REG ? backTileMemoryDataRead_21_REG : _GEN_192; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_194 = 5'h16 == fullBackgroundColor_REG ? backTileMemoryDataRead_22_REG : _GEN_193; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_195 = 5'h17 == fullBackgroundColor_REG ? backTileMemoryDataRead_23_REG : _GEN_194; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_196 = 5'h18 == fullBackgroundColor_REG ? backTileMemoryDataRead_24_REG : _GEN_195; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_197 = 5'h19 == fullBackgroundColor_REG ? backTileMemoryDataRead_25_REG : _GEN_196; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_198 = 5'h1a == fullBackgroundColor_REG ? backTileMemoryDataRead_26_REG : _GEN_197; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_199 = 5'h1b == fullBackgroundColor_REG ? backTileMemoryDataRead_27_REG : _GEN_198; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_200 = 5'h1c == fullBackgroundColor_REG ? backTileMemoryDataRead_28_REG : _GEN_199; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_201 = 5'h1d == fullBackgroundColor_REG ? backTileMemoryDataRead_29_REG : _GEN_200; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] _GEN_202 = 5'h1e == fullBackgroundColor_REG ? backTileMemoryDataRead_30_REG : _GEN_201; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  wire [6:0] fullBackgroundColor = 5'h1f == fullBackgroundColor_REG ? backTileMemoryDataRead_31_REG : _GEN_202; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:{23,23}]
  reg [5:0] pixelColorBack; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 245:31]
  wire [10:0] _inSpriteXValue_T_1 = {1'h0,CounterXReg}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:47]
  wire [11:0] inSpriteXValue = $signed(_inSpriteXValue_T_1) - 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_0 = $signed(inSpriteXValue) >= 12'sh0 & $signed(inSpriteXValue) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_210 = {{1{inSpriteXValue[11]}},inSpriteXValue}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _inSpriteYValue_T_1 = {1'h0,CounterYReg}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:47]
  wire [11:0] inSpriteYValue = $signed(_inSpriteYValue_T_1) - 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_0 = inSpriteYValue[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_0 = $signed(inSpriteYPreScaled_0) >= 11'sh0 & $signed(inSpriteYPreScaled_0) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_218 = {{1{inSpriteYPreScaled_0[10]}},inSpriteYPreScaled_0}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_7 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_7); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_7 = $signed(inSpriteXValue_7) >= 12'sh0 & $signed(inSpriteXValue_7) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_322 = {{1{inSpriteXValue_7[11]}},inSpriteXValue_7}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_500 = {{1{spriteYPositionReg_7[9]}},spriteYPositionReg_7}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_7 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_500); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_7 = inSpriteYValue_7[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_7 = $signed(inSpriteYPreScaled_7) >= 11'sh0 & $signed(inSpriteYPreScaled_7) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_330 = {{1{inSpriteYPreScaled_7[10]}},inSpriteYPreScaled_7}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_8 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_8); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_8 = $signed(inSpriteXValue_8) >= 12'sh0 & $signed(inSpriteXValue_8) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_338 = {{1{inSpriteXValue_8[11]}},inSpriteXValue_8}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_502 = {{1{spriteYPositionReg_8[9]}},spriteYPositionReg_8}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_8 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_502); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_8 = inSpriteYValue_8[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_8 = $signed(inSpriteYPreScaled_8) >= 11'sh0 & $signed(inSpriteYPreScaled_8) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_346 = {{1{inSpriteYPreScaled_8[10]}},inSpriteYPreScaled_8}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_9 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_9); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_9 = $signed(inSpriteXValue_9) >= 12'sh0 & $signed(inSpriteXValue_9) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_354 = {{1{inSpriteXValue_9[11]}},inSpriteXValue_9}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_504 = {{1{spriteYPositionReg_9[9]}},spriteYPositionReg_9}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_9 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_504); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_9 = inSpriteYValue_9[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_9 = $signed(inSpriteYPreScaled_9) >= 11'sh0 & $signed(inSpriteYPreScaled_9) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_362 = {{1{inSpriteYPreScaled_9[10]}},inSpriteYPreScaled_9}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_10 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_10); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_10 = $signed(inSpriteXValue_10) >= 12'sh0 & $signed(inSpriteXValue_10) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_370 = {{1{inSpriteXValue_10[11]}},inSpriteXValue_10}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_506 = {{1{spriteYPositionReg_10[9]}},spriteYPositionReg_10}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_10 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_506); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_10 = inSpriteYValue_10[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_10 = $signed(inSpriteYPreScaled_10) >= 11'sh0 & $signed(inSpriteYPreScaled_10) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_378 = {{1{inSpriteYPreScaled_10[10]}},inSpriteYPreScaled_10}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_11 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_11); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_11 = $signed(inSpriteXValue_11) >= 12'sh0 & $signed(inSpriteXValue_11) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_386 = {{1{inSpriteXValue_11[11]}},inSpriteXValue_11}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_508 = {{1{spriteYPositionReg_11[9]}},spriteYPositionReg_11}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_11 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_508); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_11 = inSpriteYValue_11[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_11 = $signed(inSpriteYPreScaled_11) >= 11'sh0 & $signed(inSpriteYPreScaled_11) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_394 = {{1{inSpriteYPreScaled_11[10]}},inSpriteYPreScaled_11}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_12 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_12); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_12 = $signed(inSpriteXValue_12) >= 12'sh0 & $signed(inSpriteXValue_12) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_402 = {{1{inSpriteXValue_12[11]}},inSpriteXValue_12}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_510 = {{1{spriteYPositionReg_12[9]}},spriteYPositionReg_12}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_12 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_510); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_12 = inSpriteYValue_12[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_12 = $signed(inSpriteYPreScaled_12) >= 11'sh0 & $signed(inSpriteYPreScaled_12) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_410 = {{1{inSpriteYPreScaled_12[10]}},inSpriteYPreScaled_12}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_13 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_13); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_13 = $signed(inSpriteXValue_13) >= 12'sh0 & $signed(inSpriteXValue_13) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_418 = {{1{inSpriteXValue_13[11]}},inSpriteXValue_13}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_512 = {{1{spriteYPositionReg_13[9]}},spriteYPositionReg_13}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_13 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_512); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_13 = inSpriteYValue_13[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_13 = $signed(inSpriteYPreScaled_13) >= 11'sh0 & $signed(inSpriteYPreScaled_13) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_426 = {{1{inSpriteYPreScaled_13[10]}},inSpriteYPreScaled_13}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteXValue_14 = $signed(_inSpriteXValue_T_1) - $signed(spriteXPositionReg_14); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 263:54]
  wire  inSpriteHorizontal_14 = $signed(inSpriteXValue_14) >= 12'sh0 & $signed(inSpriteXValue_14) < 12'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 272:61]
  wire [12:0] _GEN_434 = {{1{inSpriteXValue_14[11]}},inSpriteXValue_14}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 269:149 271:20]
  wire [10:0] _GEN_514 = {{1{spriteYPositionReg_14[9]}},spriteYPositionReg_14}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [11:0] inSpriteYValue_14 = $signed(_inSpriteYValue_T_1) - $signed(_GEN_514); // @[\\src\\main\\scala\\GraphicEngineVGA.scala 292:54]
  wire [10:0] inSpriteYPreScaled_14 = inSpriteYValue_14[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 258:32]
  wire  inSpriteVertical_14 = $signed(inSpriteYPreScaled_14) >= 11'sh0 & $signed(inSpriteYPreScaled_14) < 11'sh20; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 301:59]
  wire [11:0] _GEN_442 = {{1{inSpriteYPreScaled_14[10]}},inSpriteYPreScaled_14}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 298:142 300:20]
  wire [11:0] inSpriteX_0 = _GEN_210[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_0 = _GEN_218[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_0_io_address_T_2 = 6'h20 * inSpriteY_0[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_519 = {{6'd0}, inSpriteX_0[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_0_io_address_T_4 = _GEN_519 + _spriteMemories_0_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_7 = _GEN_322[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_7 = _GEN_330[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_7_io_address_T_2 = 6'h20 * inSpriteY_7[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_540 = {{6'd0}, inSpriteX_7[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_7_io_address_T_4 = _GEN_540 + _spriteMemories_7_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_8 = _GEN_338[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_8 = _GEN_346[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_8_io_address_T_2 = 6'h20 * inSpriteY_8[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_543 = {{6'd0}, inSpriteX_8[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_8_io_address_T_4 = _GEN_543 + _spriteMemories_8_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_9 = _GEN_354[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_9 = _GEN_362[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_9_io_address_T_2 = 6'h20 * inSpriteY_9[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_546 = {{6'd0}, inSpriteX_9[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_9_io_address_T_4 = _GEN_546 + _spriteMemories_9_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_10 = _GEN_370[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_10 = _GEN_378[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_10_io_address_T_2 = 6'h20 * inSpriteY_10[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_549 = {{6'd0}, inSpriteX_10[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_10_io_address_T_4 = _GEN_549 + _spriteMemories_10_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_11 = _GEN_386[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_11 = _GEN_394[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_11_io_address_T_2 = 6'h20 * inSpriteY_11[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_552 = {{6'd0}, inSpriteX_11[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_11_io_address_T_4 = _GEN_552 + _spriteMemories_11_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_12 = _GEN_402[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_12 = _GEN_410[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_12_io_address_T_2 = 6'h20 * inSpriteY_12[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_555 = {{6'd0}, inSpriteX_12[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_12_io_address_T_4 = _GEN_555 + _spriteMemories_12_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_13 = _GEN_418[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_13 = _GEN_426[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_13_io_address_T_2 = 6'h20 * inSpriteY_13[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_558 = {{6'd0}, inSpriteX_13[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_13_io_address_T_4 = _GEN_558 + _spriteMemories_13_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [11:0] inSpriteX_14 = _GEN_434[11:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 259:23]
  wire [10:0] inSpriteY_14 = _GEN_442[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 260:23]
  wire [10:0] _spriteMemories_14_io_address_T_2 = 6'h20 * inSpriteY_14[4:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:74]
  wire [10:0] _GEN_561 = {{6'd0}, inSpriteX_14[4:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  wire [10:0] _spriteMemories_14_io_address_T_4 = _GEN_561 + _spriteMemories_14_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:62]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_0_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_0_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_1_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_1_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_1_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_1_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_2_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_2_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_2_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_2_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_3_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_3_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_3_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_3_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_4_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_4_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_4_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_4_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_5_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_5_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_5_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_5_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_6_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_6_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_6_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_6_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_7_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_7_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_7_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_7_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_8_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_8_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_8_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_8_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_9_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_9_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_9_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_9_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_10_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_10_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_10_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_10_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_11_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_11_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_11_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_11_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_12_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_12_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_12_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_12_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_13_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_13_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_13_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_13_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_14_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_14_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_14_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_14_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] multiHotPriortyReductionTree_io_dataInput_15_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:60]
  reg  multiHotPriortyReductionTree_io_selectInput_15_pipeReg__0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_15_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  multiHotPriortyReductionTree_io_selectInput_15_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:132]
  reg [5:0] pixelColorSprite; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 339:33]
  reg  pixelColorSpriteValid; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 340:38]
  wire [5:0] pixelColorInDisplay = pixelColorSpriteValid ? pixelColorSprite : pixelColorBack; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 344:32]
  reg  pixelColourVGA_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  pixelColourVGA_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  reg  pixelColourVGA_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 21:24]
  wire [5:0] pixelColourVGA = pixelColourVGA_pipeReg_0 ? pixelColorInDisplay : 6'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 345:27]
  reg [3:0] io_vgaRed_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 349:23]
  reg [3:0] io_vgaGreen_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 350:25]
  reg [3:0] io_vgaBlue_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 351:24]
  Memory backTileMemories_0 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_0_clock),
    .io_address(backTileMemories_0_io_address),
    .io_dataRead(backTileMemories_0_io_dataRead)
  );
  Memory_1 backTileMemories_1 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_1_clock),
    .io_address(backTileMemories_1_io_address),
    .io_dataRead(backTileMemories_1_io_dataRead)
  );
  Memory_2 backTileMemories_2 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_2_clock),
    .io_address(backTileMemories_2_io_address),
    .io_dataRead(backTileMemories_2_io_dataRead)
  );
  Memory_3 backTileMemories_3 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_3_clock),
    .io_address(backTileMemories_3_io_address),
    .io_dataRead(backTileMemories_3_io_dataRead)
  );
  Memory_4 backTileMemories_4 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_4_clock),
    .io_address(backTileMemories_4_io_address),
    .io_dataRead(backTileMemories_4_io_dataRead)
  );
  Memory_5 backTileMemories_5 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_5_clock),
    .io_address(backTileMemories_5_io_address),
    .io_dataRead(backTileMemories_5_io_dataRead)
  );
  Memory_6 backTileMemories_6 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_6_clock),
    .io_address(backTileMemories_6_io_address),
    .io_dataRead(backTileMemories_6_io_dataRead)
  );
  Memory_7 backTileMemories_7 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_7_clock),
    .io_address(backTileMemories_7_io_address),
    .io_dataRead(backTileMemories_7_io_dataRead)
  );
  Memory_8 backTileMemories_8 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_8_clock),
    .io_address(backTileMemories_8_io_address),
    .io_dataRead(backTileMemories_8_io_dataRead)
  );
  Memory_9 backTileMemories_9 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_9_clock),
    .io_address(backTileMemories_9_io_address),
    .io_dataRead(backTileMemories_9_io_dataRead)
  );
  Memory_10 backTileMemories_10 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_10_clock),
    .io_address(backTileMemories_10_io_address),
    .io_dataRead(backTileMemories_10_io_dataRead)
  );
  Memory_11 backTileMemories_11 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_11_clock),
    .io_address(backTileMemories_11_io_address),
    .io_dataRead(backTileMemories_11_io_dataRead)
  );
  Memory_12 backTileMemories_12 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_12_clock),
    .io_address(backTileMemories_12_io_address),
    .io_dataRead(backTileMemories_12_io_dataRead)
  );
  Memory_13 backTileMemories_13 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_13_clock),
    .io_address(backTileMemories_13_io_address),
    .io_dataRead(backTileMemories_13_io_dataRead)
  );
  Memory_14 backTileMemories_14 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_14_clock),
    .io_address(backTileMemories_14_io_address),
    .io_dataRead(backTileMemories_14_io_dataRead)
  );
  Memory_15 backTileMemories_15 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_15_clock),
    .io_address(backTileMemories_15_io_address),
    .io_dataRead(backTileMemories_15_io_dataRead)
  );
  Memory_16 backTileMemories_16 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_16_clock),
    .io_address(backTileMemories_16_io_address),
    .io_dataRead(backTileMemories_16_io_dataRead)
  );
  Memory_17 backTileMemories_17 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_17_clock),
    .io_address(backTileMemories_17_io_address),
    .io_dataRead(backTileMemories_17_io_dataRead)
  );
  Memory_18 backTileMemories_18 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_18_clock),
    .io_address(backTileMemories_18_io_address),
    .io_dataRead(backTileMemories_18_io_dataRead)
  );
  Memory_19 backTileMemories_19 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_19_clock),
    .io_address(backTileMemories_19_io_address),
    .io_dataRead(backTileMemories_19_io_dataRead)
  );
  Memory_20 backTileMemories_20 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_20_clock),
    .io_address(backTileMemories_20_io_address),
    .io_dataRead(backTileMemories_20_io_dataRead)
  );
  Memory_21 backTileMemories_21 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_21_clock),
    .io_address(backTileMemories_21_io_address),
    .io_dataRead(backTileMemories_21_io_dataRead)
  );
  Memory_22 backTileMemories_22 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_22_clock),
    .io_address(backTileMemories_22_io_address),
    .io_dataRead(backTileMemories_22_io_dataRead)
  );
  Memory_23 backTileMemories_23 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_23_clock),
    .io_address(backTileMemories_23_io_address),
    .io_dataRead(backTileMemories_23_io_dataRead)
  );
  Memory_24 backTileMemories_24 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_24_clock),
    .io_address(backTileMemories_24_io_address),
    .io_dataRead(backTileMemories_24_io_dataRead)
  );
  Memory_25 backTileMemories_25 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_25_clock),
    .io_address(backTileMemories_25_io_address),
    .io_dataRead(backTileMemories_25_io_dataRead)
  );
  Memory_26 backTileMemories_26 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_26_clock),
    .io_address(backTileMemories_26_io_address),
    .io_dataRead(backTileMemories_26_io_dataRead)
  );
  Memory_27 backTileMemories_27 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_27_clock),
    .io_address(backTileMemories_27_io_address),
    .io_dataRead(backTileMemories_27_io_dataRead)
  );
  Memory_28 backTileMemories_28 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_28_clock),
    .io_address(backTileMemories_28_io_address),
    .io_dataRead(backTileMemories_28_io_dataRead)
  );
  Memory_29 backTileMemories_29 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_29_clock),
    .io_address(backTileMemories_29_io_address),
    .io_dataRead(backTileMemories_29_io_dataRead)
  );
  Memory_30 backTileMemories_30 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_30_clock),
    .io_address(backTileMemories_30_io_address),
    .io_dataRead(backTileMemories_30_io_dataRead)
  );
  Memory_31 backTileMemories_31 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 161:32]
    .clock(backTileMemories_31_clock),
    .io_address(backTileMemories_31_io_address),
    .io_dataRead(backTileMemories_31_io_dataRead)
  );
  Memory_32 backBufferMemory ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 178:32]
    .clock(backBufferMemory_clock),
    .io_address(backBufferMemory_io_address),
    .io_dataRead(backBufferMemory_io_dataRead),
    .io_writeEnable(backBufferMemory_io_writeEnable),
    .io_dataWrite(backBufferMemory_io_dataWrite)
  );
  Memory_32 backBufferShadowMemory ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 179:38]
    .clock(backBufferShadowMemory_clock),
    .io_address(backBufferShadowMemory_io_address),
    .io_dataRead(backBufferShadowMemory_io_dataRead),
    .io_writeEnable(backBufferShadowMemory_io_writeEnable),
    .io_dataWrite(backBufferShadowMemory_io_dataWrite)
  );
  Memory_34 backBufferRestoreMemory ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 180:39]
    .clock(backBufferRestoreMemory_clock),
    .io_address(backBufferRestoreMemory_io_address),
    .io_dataRead(backBufferRestoreMemory_io_dataRead)
  );
  Memory_35 spriteMemories_0 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_0_clock),
    .io_address(spriteMemories_0_io_address),
    .io_dataRead(spriteMemories_0_io_dataRead)
  );
  Memory_36 spriteMemories_1 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_1_clock),
    .io_address(spriteMemories_1_io_address),
    .io_dataRead(spriteMemories_1_io_dataRead)
  );
  Memory_37 spriteMemories_2 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_2_clock),
    .io_address(spriteMemories_2_io_address),
    .io_dataRead(spriteMemories_2_io_dataRead)
  );
  Memory_38 spriteMemories_3 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_3_clock),
    .io_address(spriteMemories_3_io_address),
    .io_dataRead(spriteMemories_3_io_dataRead)
  );
  Memory_39 spriteMemories_4 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_4_clock),
    .io_address(spriteMemories_4_io_address),
    .io_dataRead(spriteMemories_4_io_dataRead)
  );
  Memory_40 spriteMemories_5 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_5_clock),
    .io_address(spriteMemories_5_io_address),
    .io_dataRead(spriteMemories_5_io_dataRead)
  );
  Memory_41 spriteMemories_6 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_6_clock),
    .io_address(spriteMemories_6_io_address),
    .io_dataRead(spriteMemories_6_io_dataRead)
  );
  Memory_42 spriteMemories_7 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_7_clock),
    .io_address(spriteMemories_7_io_address),
    .io_dataRead(spriteMemories_7_io_dataRead)
  );
  Memory_43 spriteMemories_8 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_8_clock),
    .io_address(spriteMemories_8_io_address),
    .io_dataRead(spriteMemories_8_io_dataRead)
  );
  Memory_44 spriteMemories_9 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_9_clock),
    .io_address(spriteMemories_9_io_address),
    .io_dataRead(spriteMemories_9_io_dataRead)
  );
  Memory_45 spriteMemories_10 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_10_clock),
    .io_address(spriteMemories_10_io_address),
    .io_dataRead(spriteMemories_10_io_dataRead)
  );
  Memory_46 spriteMemories_11 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_11_clock),
    .io_address(spriteMemories_11_io_address),
    .io_dataRead(spriteMemories_11_io_dataRead)
  );
  Memory_47 spriteMemories_12 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_12_clock),
    .io_address(spriteMemories_12_io_address),
    .io_dataRead(spriteMemories_12_io_dataRead)
  );
  Memory_48 spriteMemories_13 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_13_clock),
    .io_address(spriteMemories_13_io_address),
    .io_dataRead(spriteMemories_13_io_dataRead)
  );
  Memory_49 spriteMemories_14 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_14_clock),
    .io_address(spriteMemories_14_io_address),
    .io_dataRead(spriteMemories_14_io_dataRead)
  );
  Memory_50 spriteMemories_15 ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 250:30]
    .clock(spriteMemories_15_clock),
    .io_address(spriteMemories_15_io_address),
    .io_dataRead(spriteMemories_15_io_dataRead)
  );
  MultiHotPriortyReductionTree multiHotPriortyReductionTree ( // @[\\src\\main\\scala\\GraphicEngineVGA.scala 334:44]
    .io_dataInput_0(multiHotPriortyReductionTree_io_dataInput_0),
    .io_dataInput_1(multiHotPriortyReductionTree_io_dataInput_1),
    .io_dataInput_2(multiHotPriortyReductionTree_io_dataInput_2),
    .io_dataInput_3(multiHotPriortyReductionTree_io_dataInput_3),
    .io_dataInput_4(multiHotPriortyReductionTree_io_dataInput_4),
    .io_dataInput_5(multiHotPriortyReductionTree_io_dataInput_5),
    .io_dataInput_6(multiHotPriortyReductionTree_io_dataInput_6),
    .io_dataInput_7(multiHotPriortyReductionTree_io_dataInput_7),
    .io_dataInput_8(multiHotPriortyReductionTree_io_dataInput_8),
    .io_dataInput_9(multiHotPriortyReductionTree_io_dataInput_9),
    .io_dataInput_10(multiHotPriortyReductionTree_io_dataInput_10),
    .io_dataInput_11(multiHotPriortyReductionTree_io_dataInput_11),
    .io_dataInput_12(multiHotPriortyReductionTree_io_dataInput_12),
    .io_dataInput_13(multiHotPriortyReductionTree_io_dataInput_13),
    .io_dataInput_14(multiHotPriortyReductionTree_io_dataInput_14),
    .io_dataInput_15(multiHotPriortyReductionTree_io_dataInput_15),
    .io_selectInput_0(multiHotPriortyReductionTree_io_selectInput_0),
    .io_selectInput_1(multiHotPriortyReductionTree_io_selectInput_1),
    .io_selectInput_2(multiHotPriortyReductionTree_io_selectInput_2),
    .io_selectInput_3(multiHotPriortyReductionTree_io_selectInput_3),
    .io_selectInput_4(multiHotPriortyReductionTree_io_selectInput_4),
    .io_selectInput_5(multiHotPriortyReductionTree_io_selectInput_5),
    .io_selectInput_6(multiHotPriortyReductionTree_io_selectInput_6),
    .io_selectInput_7(multiHotPriortyReductionTree_io_selectInput_7),
    .io_selectInput_8(multiHotPriortyReductionTree_io_selectInput_8),
    .io_selectInput_9(multiHotPriortyReductionTree_io_selectInput_9),
    .io_selectInput_10(multiHotPriortyReductionTree_io_selectInput_10),
    .io_selectInput_11(multiHotPriortyReductionTree_io_selectInput_11),
    .io_selectInput_12(multiHotPriortyReductionTree_io_selectInput_12),
    .io_selectInput_13(multiHotPriortyReductionTree_io_selectInput_13),
    .io_selectInput_14(multiHotPriortyReductionTree_io_selectInput_14),
    .io_selectInput_15(multiHotPriortyReductionTree_io_selectInput_15),
    .io_dataOutput(multiHotPriortyReductionTree_io_dataOutput),
    .io_selectOutput(multiHotPriortyReductionTree_io_selectOutput)
  );
  assign io_newFrame = run & _GEN_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 73:13 71:15]
  assign io_missingFrameError = missingFrameErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 131:24]
  assign io_viewBoxOutOfRangeError = viewBoxOutOfRangeErrorReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 133:29]
  assign io_vgaRed = io_vgaRed_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 349:13]
  assign io_vgaBlue = io_vgaBlue_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 351:14]
  assign io_vgaGreen = io_vgaGreen_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 350:15]
  assign io_Hsync = io_Hsync_pipeReg_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 94:12]
  assign io_Vsync = io_Vsync_pipeReg_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 95:12]
  assign backTileMemories_0_clock = clock;
  assign backTileMemories_0_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_1_clock = clock;
  assign backTileMemories_1_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_2_clock = clock;
  assign backTileMemories_2_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_3_clock = clock;
  assign backTileMemories_3_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_4_clock = clock;
  assign backTileMemories_4_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_5_clock = clock;
  assign backTileMemories_5_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_6_clock = clock;
  assign backTileMemories_6_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_7_clock = clock;
  assign backTileMemories_7_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_8_clock = clock;
  assign backTileMemories_8_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_9_clock = clock;
  assign backTileMemories_9_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_10_clock = clock;
  assign backTileMemories_10_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_11_clock = clock;
  assign backTileMemories_11_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_12_clock = clock;
  assign backTileMemories_12_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_13_clock = clock;
  assign backTileMemories_13_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_14_clock = clock;
  assign backTileMemories_14_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_15_clock = clock;
  assign backTileMemories_15_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_16_clock = clock;
  assign backTileMemories_16_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_17_clock = clock;
  assign backTileMemories_17_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_18_clock = clock;
  assign backTileMemories_18_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_19_clock = clock;
  assign backTileMemories_19_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_20_clock = clock;
  assign backTileMemories_20_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_21_clock = clock;
  assign backTileMemories_21_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_22_clock = clock;
  assign backTileMemories_22_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_23_clock = clock;
  assign backTileMemories_23_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_24_clock = clock;
  assign backTileMemories_24_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_25_clock = clock;
  assign backTileMemories_25_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_26_clock = clock;
  assign backTileMemories_26_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_27_clock = clock;
  assign backTileMemories_27_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_28_clock = clock;
  assign backTileMemories_28_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_29_clock = clock;
  assign backTileMemories_29_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_30_clock = clock;
  assign backTileMemories_30_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backTileMemories_31_clock = clock;
  assign backTileMemories_31_io_address = _backTileMemories_0_io_address_T_3[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 172:36]
  assign backBufferMemory_clock = clock;
  assign backBufferMemory_io_address = _backBufferMemory_io_address_T_5[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:31]
  assign backBufferMemory_io_writeEnable = copyEnabledReg; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 228:35]
  assign backBufferMemory_io_dataWrite = backBufferShadowMemory_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 229:33]
  assign backBufferShadowMemory_clock = clock;
  assign backBufferShadowMemory_io_address = restoreEnabled ? backBufferShadowMemory_io_address_REG :
    _backBufferShadowMemory_io_address_T_2; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 221:43]
  assign backBufferShadowMemory_io_writeEnable = restoreEnabled & backBufferShadowMemory_io_writeEnable_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 223:47]
  assign backBufferShadowMemory_io_dataWrite = restoreEnabled ? backBufferRestoreMemory_io_dataRead : 5'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 224:45]
  assign backBufferRestoreMemory_clock = clock;
  assign backBufferRestoreMemory_io_address = backMemoryRestoreCounter[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 216:65]
  assign spriteMemories_0_clock = clock;
  assign spriteMemories_0_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_1_clock = clock;
  assign spriteMemories_1_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_2_clock = clock;
  assign spriteMemories_2_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_3_clock = clock;
  assign spriteMemories_3_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_4_clock = clock;
  assign spriteMemories_4_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_5_clock = clock;
  assign spriteMemories_5_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_6_clock = clock;
  assign spriteMemories_6_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_7_clock = clock;
  assign spriteMemories_7_io_address = _spriteMemories_7_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_8_clock = clock;
  assign spriteMemories_8_io_address = _spriteMemories_8_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_9_clock = clock;
  assign spriteMemories_9_io_address = _spriteMemories_9_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_10_clock = clock;
  assign spriteMemories_10_io_address = _spriteMemories_10_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_11_clock = clock;
  assign spriteMemories_11_io_address = _spriteMemories_11_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_12_clock = clock;
  assign spriteMemories_12_io_address = _spriteMemories_12_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_13_clock = clock;
  assign spriteMemories_13_io_address = _spriteMemories_13_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_14_clock = clock;
  assign spriteMemories_14_io_address = _spriteMemories_14_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign spriteMemories_15_clock = clock;
  assign spriteMemories_15_io_address = _spriteMemories_0_io_address_T_4[9:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 329:34]
  assign multiHotPriortyReductionTree_io_dataInput_0 = multiHotPriortyReductionTree_io_dataInput_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_1 = multiHotPriortyReductionTree_io_dataInput_1_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_2 = multiHotPriortyReductionTree_io_dataInput_2_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_3 = multiHotPriortyReductionTree_io_dataInput_3_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_4 = multiHotPriortyReductionTree_io_dataInput_4_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_5 = multiHotPriortyReductionTree_io_dataInput_5_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_6 = multiHotPriortyReductionTree_io_dataInput_6_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_7 = multiHotPriortyReductionTree_io_dataInput_7_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_8 = multiHotPriortyReductionTree_io_dataInput_8_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_9 = multiHotPriortyReductionTree_io_dataInput_9_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_10 = multiHotPriortyReductionTree_io_dataInput_10_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_11 = multiHotPriortyReductionTree_io_dataInput_11_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_12 = multiHotPriortyReductionTree_io_dataInput_12_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_13 = multiHotPriortyReductionTree_io_dataInput_13_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_14 = multiHotPriortyReductionTree_io_dataInput_14_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_dataInput_15 = multiHotPriortyReductionTree_io_dataInput_15_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:50]
  assign multiHotPriortyReductionTree_io_selectInput_0 = multiHotPriortyReductionTree_io_selectInput_0_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_0_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_1 = multiHotPriortyReductionTree_io_selectInput_1_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_1_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_2 = multiHotPriortyReductionTree_io_selectInput_2_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_2_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_3 = multiHotPriortyReductionTree_io_selectInput_3_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_3_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_4 = multiHotPriortyReductionTree_io_selectInput_4_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_4_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_5 = multiHotPriortyReductionTree_io_selectInput_5_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_5_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_6 = multiHotPriortyReductionTree_io_selectInput_6_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_6_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_7 = multiHotPriortyReductionTree_io_selectInput_7_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_7_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_8 = multiHotPriortyReductionTree_io_selectInput_8_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_8_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_9 = multiHotPriortyReductionTree_io_selectInput_9_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_9_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_10 = multiHotPriortyReductionTree_io_selectInput_10_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_10_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_11 = multiHotPriortyReductionTree_io_selectInput_11_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_11_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_12 = multiHotPriortyReductionTree_io_selectInput_12_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_12_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_13 = multiHotPriortyReductionTree_io_selectInput_13_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_13_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_14 = multiHotPriortyReductionTree_io_selectInput_14_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_14_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  assign multiHotPriortyReductionTree_io_selectInput_15 = multiHotPriortyReductionTree_io_selectInput_15_pipeReg__0 &
    multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_0 & ~multiHotPriortyReductionTree_io_selectInput_15_REG; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:121]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 67:32]
      ScaleCounterReg <= 2'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 67:32]
    end else if (run) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 73:13]
      if (ScaleCounterReg == 2'h3) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 74:52]
        ScaleCounterReg <= 2'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 75:23]
      end else begin
        ScaleCounterReg <= _ScaleCounterReg_T_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 88:23]
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 68:28]
      CounterXReg <= 10'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 68:28]
    end else if (run) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 73:13]
      if (ScaleCounterReg == 2'h3) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 74:52]
        if (CounterXReg == 10'h31f) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 76:129]
          CounterXReg <= 10'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 77:21]
        end else begin
          CounterXReg <= _CounterXReg_T_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 85:21]
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 69:28]
      CounterYReg <= 10'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 69:28]
    end else if (run) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 73:13]
      if (ScaleCounterReg == 2'h3) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 74:52]
        if (CounterXReg == 10'h31f) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 76:129]
          CounterYReg <= _GEN_0;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 202:41]
      backMemoryRestoreCounter <= 12'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 202:41]
    end else if (restoreEnabled) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 205:70]
      backMemoryRestoreCounter <= _backMemoryRestoreCounter_T_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 206:30]
    end
    io_Hsync_pipeReg_0 <= io_Hsync_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Hsync_pipeReg_1 <= io_Hsync_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Hsync_pipeReg_2 <= io_Hsync_pipeReg_3; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Hsync_pipeReg_3 <= ~Hsync; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 94:27]
    io_Vsync_pipeReg_0 <= io_Vsync_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Vsync_pipeReg_1 <= io_Vsync_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Vsync_pipeReg_2 <= io_Vsync_pipeReg_3; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    io_Vsync_pipeReg_3 <= ~Vsync; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 95:27]
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 104:32]
      frameClockCount <= 21'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 104:32]
    end else if (frameClockCount == 21'h19a27f) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 105:25]
      frameClockCount <= 21'h0;
    end else begin
      frameClockCount <= _frameClockCount_T_2;
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_7 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_7 <= 11'sh100; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_8 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_8 <= 11'sh100; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_9 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_9 <= 11'sh130; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_10 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_10 <= 11'sh130; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_11 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_11 <= 11'sh160; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_12 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_12 <= 11'sh160; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_13 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_13 <= io_spriteXPosition_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_14 <= 11'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
      spriteXPositionReg_14 <= io_spriteXPosition_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 114:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_7 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_7 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_8 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_8 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_9 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_9 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_10 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_10 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_11 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_11 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_12 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_12 <= 10'sh12c; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_13 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_13 <= io_spriteYPosition_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_14 <= 10'sh0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
      spriteYPositionReg_14 <= io_spriteYPosition_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 115:37]
    end
    spriteVisibleReg_0 <= reset | _GEN_45; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_1 <= reset | _GEN_46; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_2 <= reset | _GEN_47; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_3 <= reset | _GEN_48; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_4 <= reset | _GEN_49; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_5 <= reset | _GEN_50; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_6 <= reset | _GEN_51; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_7 <= reset | _GEN_52; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_8 <= reset | _GEN_53; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_9 <= reset | _GEN_54; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_10 <= reset | _GEN_55; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_11 <= reset | _GEN_56; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_12 <= reset | _GEN_57; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_13 <= reset | _GEN_58; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_14 <= reset | _GEN_59; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    spriteVisibleReg_15 <= reset | _GEN_60; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 116:{35,35}]
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 123:30]
      viewBoxXReg <= 10'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 123:30]
    end else if (io_newFrame) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 123:30]
      viewBoxXReg <= io_viewBoxX; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 123:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 128:37]
      missingFrameErrorReg <= 1'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 128:37]
    end else begin
      missingFrameErrorReg <= _GEN_162;
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 130:42]
      viewBoxOutOfRangeErrorReg <= 1'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 130:42]
    end else begin
      viewBoxOutOfRangeErrorReg <= _GEN_159;
    end
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 147:33]
      newFrameStikyReg <= 1'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 147:33]
    end else if (REG) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 151:37]
      newFrameStikyReg <= 1'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 152:22]
    end else begin
      newFrameStikyReg <= _GEN_160;
    end
    REG <= io_frameUpdateDone; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 151:16]
    backTileMemoryDataRead_0_REG <= backTileMemories_0_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_1_REG <= backTileMemories_1_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_2_REG <= backTileMemories_2_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_3_REG <= backTileMemories_3_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_4_REG <= backTileMemories_4_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_5_REG <= backTileMemories_5_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_6_REG <= backTileMemories_6_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_7_REG <= backTileMemories_7_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_8_REG <= backTileMemories_8_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_9_REG <= backTileMemories_9_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_10_REG <= backTileMemories_10_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_11_REG <= backTileMemories_11_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_12_REG <= backTileMemories_12_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_13_REG <= backTileMemories_13_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_14_REG <= backTileMemories_14_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_15_REG <= backTileMemories_15_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_16_REG <= backTileMemories_16_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_17_REG <= backTileMemories_17_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_18_REG <= backTileMemories_18_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_19_REG <= backTileMemories_19_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_20_REG <= backTileMemories_20_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_21_REG <= backTileMemories_21_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_22_REG <= backTileMemories_22_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_23_REG <= backTileMemories_23_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_24_REG <= backTileMemories_24_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_25_REG <= backTileMemories_25_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_26_REG <= backTileMemories_26_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_27_REG <= backTileMemories_27_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_28_REG <= backTileMemories_28_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_29_REG <= backTileMemories_29_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_30_REG <= backTileMemories_30_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    backTileMemoryDataRead_31_REG <= backTileMemories_31_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 173:41]
    if (reset) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 183:38]
      backMemoryCopyCounter <= 12'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 183:38]
    end else if (preDisplayArea) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 186:23]
      if (backMemoryCopyCounter < 12'h800) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 187:66]
        backMemoryCopyCounter <= _backMemoryCopyCounter_T_1; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 188:29]
      end
    end else begin
      backMemoryCopyCounter <= 12'h0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 197:27]
    end
    copyEnabledReg <= preDisplayArea & _T_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 186:23 198:17]
    backBufferShadowMemory_io_address_REG <= backMemoryRestoreCounter[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 221:92]
    backBufferShadowMemory_io_writeEnable_REG <= backMemoryRestoreCounter < 12'h800; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 205:33]
    backBufferMemory_io_address_REG <= backMemoryCopyCounter[10:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 226:83]
    fullBackgroundColor_REG <= backBufferMemory_io_dataRead; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 243:56]
    if (fullBackgroundColor[6]) begin // @[\\src\\main\\scala\\GraphicEngineVGA.scala 244:25]
      pixelColorBack <= 6'h0;
    end else begin
      pixelColorBack <= fullBackgroundColor[5:0];
    end
    multiHotPriortyReductionTree_io_dataInput_0_REG <= spriteMemories_0_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_0_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_0_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_0_pipeReg__1 <= spriteVisibleReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_0_REG <= spriteMemories_0_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_1_REG <= spriteMemories_1_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_1_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_1_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_1_pipeReg__1 <= spriteVisibleReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_1_REG <= spriteMemories_1_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_2_REG <= spriteMemories_2_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_2_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_2_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_2_pipeReg__1 <= spriteVisibleReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_2_REG <= spriteMemories_2_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_3_REG <= spriteMemories_3_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_3_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_3_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_3_pipeReg__1 <= spriteVisibleReg_3; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_3_REG <= spriteMemories_3_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_4_REG <= spriteMemories_4_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_4_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_4_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_4_pipeReg__1 <= spriteVisibleReg_4; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_4_REG <= spriteMemories_4_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_5_REG <= spriteMemories_5_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_5_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_5_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_5_pipeReg__1 <= spriteVisibleReg_5; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_5_REG <= spriteMemories_5_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_6_REG <= spriteMemories_6_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_6_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_6_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_6_pipeReg__1 <= spriteVisibleReg_6; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_6_REG <= spriteMemories_6_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_7_REG <= spriteMemories_7_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_7_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_7_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_7_pipeReg__1 <= spriteVisibleReg_7; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_1 <= inSpriteHorizontal_7 & inSpriteVertical_7; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_7_REG <= spriteMemories_7_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_8_REG <= spriteMemories_8_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_8_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_8_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_8_pipeReg__1 <= spriteVisibleReg_8; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_1 <= inSpriteHorizontal_8 & inSpriteVertical_8; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_8_REG <= spriteMemories_8_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_9_REG <= spriteMemories_9_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_9_pipeReg__0 <= multiHotPriortyReductionTree_io_selectInput_9_pipeReg__1
      ; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_9_pipeReg__1 <= spriteVisibleReg_9; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_1 <= inSpriteHorizontal_9 & inSpriteVertical_9; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_9_REG <= spriteMemories_9_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_10_REG <= spriteMemories_10_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_10_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_10_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_10_pipeReg__1 <= spriteVisibleReg_10; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_1 <= inSpriteHorizontal_10 & inSpriteVertical_10; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_10_REG <= spriteMemories_10_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_11_REG <= spriteMemories_11_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_11_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_11_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_11_pipeReg__1 <= spriteVisibleReg_11; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_1 <= inSpriteHorizontal_11 & inSpriteVertical_11; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_11_REG <= spriteMemories_11_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_12_REG <= spriteMemories_12_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_12_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_12_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_12_pipeReg__1 <= spriteVisibleReg_12; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_1 <= inSpriteHorizontal_12 & inSpriteVertical_12; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_12_REG <= spriteMemories_12_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_13_REG <= spriteMemories_13_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_13_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_13_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_13_pipeReg__1 <= spriteVisibleReg_13; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_1 <= inSpriteHorizontal_13 & inSpriteVertical_13; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_13_REG <= spriteMemories_13_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_14_REG <= spriteMemories_14_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_14_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_14_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_14_pipeReg__1 <= spriteVisibleReg_14; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_1 <= inSpriteHorizontal_14 & inSpriteVertical_14; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_14_REG <= spriteMemories_14_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    multiHotPriortyReductionTree_io_dataInput_15_REG <= spriteMemories_15_io_dataRead[5:0]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 336:90]
    multiHotPriortyReductionTree_io_selectInput_15_pipeReg__0 <=
      multiHotPriortyReductionTree_io_selectInput_15_pipeReg__1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_15_pipeReg__1 <= spriteVisibleReg_15; // @[\\src\\main\\scala\\GameUtilities.scala 23:30]
    multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_0 <=
      multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_1 <= inSpriteHorizontal_0 & inSpriteVertical_0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 321:42]
    multiHotPriortyReductionTree_io_selectInput_15_REG <= spriteMemories_15_io_dataRead[6]; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 337:162]
    pixelColorSprite <= multiHotPriortyReductionTree_io_dataOutput; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 339:33]
    pixelColorSpriteValid <= multiHotPriortyReductionTree_io_selectOutput; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 340:38]
    pixelColourVGA_pipeReg_0 <= pixelColourVGA_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    pixelColourVGA_pipeReg_1 <= pixelColourVGA_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 25:20]
    pixelColourVGA_pipeReg_2 <= CounterXReg < 10'h280 & CounterYReg < 10'h1e0; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 97:60]
    io_vgaRed_REG <= {pixelColourVGA[5:4],pixelColourVGA[5:4]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 346:26]
    io_vgaGreen_REG <= {pixelColourVGA[3:2],pixelColourVGA[3:2]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 347:28]
    io_vgaBlue_REG <= {pixelColourVGA[1:0],pixelColourVGA[1:0]}; // @[\\src\\main\\scala\\GraphicEngineVGA.scala 348:27]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ScaleCounterReg = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  CounterXReg = _RAND_1[9:0];
  _RAND_2 = {1{`RANDOM}};
  CounterYReg = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  backMemoryRestoreCounter = _RAND_3[11:0];
  _RAND_4 = {1{`RANDOM}};
  io_Hsync_pipeReg_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_Hsync_pipeReg_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_Hsync_pipeReg_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_Hsync_pipeReg_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_Vsync_pipeReg_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_Vsync_pipeReg_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_Vsync_pipeReg_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_Vsync_pipeReg_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  frameClockCount = _RAND_12[20:0];
  _RAND_13 = {1{`RANDOM}};
  spriteXPositionReg_7 = _RAND_13[10:0];
  _RAND_14 = {1{`RANDOM}};
  spriteXPositionReg_8 = _RAND_14[10:0];
  _RAND_15 = {1{`RANDOM}};
  spriteXPositionReg_9 = _RAND_15[10:0];
  _RAND_16 = {1{`RANDOM}};
  spriteXPositionReg_10 = _RAND_16[10:0];
  _RAND_17 = {1{`RANDOM}};
  spriteXPositionReg_11 = _RAND_17[10:0];
  _RAND_18 = {1{`RANDOM}};
  spriteXPositionReg_12 = _RAND_18[10:0];
  _RAND_19 = {1{`RANDOM}};
  spriteXPositionReg_13 = _RAND_19[10:0];
  _RAND_20 = {1{`RANDOM}};
  spriteXPositionReg_14 = _RAND_20[10:0];
  _RAND_21 = {1{`RANDOM}};
  spriteYPositionReg_7 = _RAND_21[9:0];
  _RAND_22 = {1{`RANDOM}};
  spriteYPositionReg_8 = _RAND_22[9:0];
  _RAND_23 = {1{`RANDOM}};
  spriteYPositionReg_9 = _RAND_23[9:0];
  _RAND_24 = {1{`RANDOM}};
  spriteYPositionReg_10 = _RAND_24[9:0];
  _RAND_25 = {1{`RANDOM}};
  spriteYPositionReg_11 = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  spriteYPositionReg_12 = _RAND_26[9:0];
  _RAND_27 = {1{`RANDOM}};
  spriteYPositionReg_13 = _RAND_27[9:0];
  _RAND_28 = {1{`RANDOM}};
  spriteYPositionReg_14 = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  spriteVisibleReg_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  spriteVisibleReg_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  spriteVisibleReg_2 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  spriteVisibleReg_3 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  spriteVisibleReg_4 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  spriteVisibleReg_5 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  spriteVisibleReg_6 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  spriteVisibleReg_7 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  spriteVisibleReg_8 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  spriteVisibleReg_9 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  spriteVisibleReg_10 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  spriteVisibleReg_11 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  spriteVisibleReg_12 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  spriteVisibleReg_13 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  spriteVisibleReg_14 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  spriteVisibleReg_15 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  viewBoxXReg = _RAND_45[9:0];
  _RAND_46 = {1{`RANDOM}};
  missingFrameErrorReg = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  viewBoxOutOfRangeErrorReg = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  newFrameStikyReg = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  REG = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  backTileMemoryDataRead_0_REG = _RAND_50[6:0];
  _RAND_51 = {1{`RANDOM}};
  backTileMemoryDataRead_1_REG = _RAND_51[6:0];
  _RAND_52 = {1{`RANDOM}};
  backTileMemoryDataRead_2_REG = _RAND_52[6:0];
  _RAND_53 = {1{`RANDOM}};
  backTileMemoryDataRead_3_REG = _RAND_53[6:0];
  _RAND_54 = {1{`RANDOM}};
  backTileMemoryDataRead_4_REG = _RAND_54[6:0];
  _RAND_55 = {1{`RANDOM}};
  backTileMemoryDataRead_5_REG = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  backTileMemoryDataRead_6_REG = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  backTileMemoryDataRead_7_REG = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  backTileMemoryDataRead_8_REG = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  backTileMemoryDataRead_9_REG = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  backTileMemoryDataRead_10_REG = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  backTileMemoryDataRead_11_REG = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  backTileMemoryDataRead_12_REG = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  backTileMemoryDataRead_13_REG = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  backTileMemoryDataRead_14_REG = _RAND_64[6:0];
  _RAND_65 = {1{`RANDOM}};
  backTileMemoryDataRead_15_REG = _RAND_65[6:0];
  _RAND_66 = {1{`RANDOM}};
  backTileMemoryDataRead_16_REG = _RAND_66[6:0];
  _RAND_67 = {1{`RANDOM}};
  backTileMemoryDataRead_17_REG = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  backTileMemoryDataRead_18_REG = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  backTileMemoryDataRead_19_REG = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  backTileMemoryDataRead_20_REG = _RAND_70[6:0];
  _RAND_71 = {1{`RANDOM}};
  backTileMemoryDataRead_21_REG = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  backTileMemoryDataRead_22_REG = _RAND_72[6:0];
  _RAND_73 = {1{`RANDOM}};
  backTileMemoryDataRead_23_REG = _RAND_73[6:0];
  _RAND_74 = {1{`RANDOM}};
  backTileMemoryDataRead_24_REG = _RAND_74[6:0];
  _RAND_75 = {1{`RANDOM}};
  backTileMemoryDataRead_25_REG = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  backTileMemoryDataRead_26_REG = _RAND_76[6:0];
  _RAND_77 = {1{`RANDOM}};
  backTileMemoryDataRead_27_REG = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  backTileMemoryDataRead_28_REG = _RAND_78[6:0];
  _RAND_79 = {1{`RANDOM}};
  backTileMemoryDataRead_29_REG = _RAND_79[6:0];
  _RAND_80 = {1{`RANDOM}};
  backTileMemoryDataRead_30_REG = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  backTileMemoryDataRead_31_REG = _RAND_81[6:0];
  _RAND_82 = {1{`RANDOM}};
  backMemoryCopyCounter = _RAND_82[11:0];
  _RAND_83 = {1{`RANDOM}};
  copyEnabledReg = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  backBufferShadowMemory_io_address_REG = _RAND_84[10:0];
  _RAND_85 = {1{`RANDOM}};
  backBufferShadowMemory_io_writeEnable_REG = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  backBufferMemory_io_address_REG = _RAND_86[10:0];
  _RAND_87 = {1{`RANDOM}};
  fullBackgroundColor_REG = _RAND_87[4:0];
  _RAND_88 = {1{`RANDOM}};
  pixelColorBack = _RAND_88[5:0];
  _RAND_89 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_0_REG = _RAND_89[5:0];
  _RAND_90 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_0_pipeReg__0 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_0_pipeReg__1 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_0_pipeReg_1_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_0_REG = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_1_REG = _RAND_95[5:0];
  _RAND_96 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_1_pipeReg__0 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_1_pipeReg__1 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_0 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_1_pipeReg_1_1 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_1_REG = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_2_REG = _RAND_101[5:0];
  _RAND_102 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_2_pipeReg__0 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_2_pipeReg__1 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_0 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_2_pipeReg_1_1 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_2_REG = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_3_REG = _RAND_107[5:0];
  _RAND_108 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_3_pipeReg__0 = _RAND_108[0:0];
  _RAND_109 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_3_pipeReg__1 = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_0 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_3_pipeReg_1_1 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_3_REG = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_4_REG = _RAND_113[5:0];
  _RAND_114 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_4_pipeReg__0 = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_4_pipeReg__1 = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_0 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_4_pipeReg_1_1 = _RAND_117[0:0];
  _RAND_118 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_4_REG = _RAND_118[0:0];
  _RAND_119 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_5_REG = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_5_pipeReg__0 = _RAND_120[0:0];
  _RAND_121 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_5_pipeReg__1 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_0 = _RAND_122[0:0];
  _RAND_123 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_5_pipeReg_1_1 = _RAND_123[0:0];
  _RAND_124 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_5_REG = _RAND_124[0:0];
  _RAND_125 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_6_REG = _RAND_125[5:0];
  _RAND_126 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_6_pipeReg__0 = _RAND_126[0:0];
  _RAND_127 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_6_pipeReg__1 = _RAND_127[0:0];
  _RAND_128 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_0 = _RAND_128[0:0];
  _RAND_129 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_6_pipeReg_1_1 = _RAND_129[0:0];
  _RAND_130 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_6_REG = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_7_REG = _RAND_131[5:0];
  _RAND_132 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_7_pipeReg__0 = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_7_pipeReg__1 = _RAND_133[0:0];
  _RAND_134 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_0 = _RAND_134[0:0];
  _RAND_135 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_7_pipeReg_1_1 = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_7_REG = _RAND_136[0:0];
  _RAND_137 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_8_REG = _RAND_137[5:0];
  _RAND_138 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_8_pipeReg__0 = _RAND_138[0:0];
  _RAND_139 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_8_pipeReg__1 = _RAND_139[0:0];
  _RAND_140 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_0 = _RAND_140[0:0];
  _RAND_141 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_8_pipeReg_1_1 = _RAND_141[0:0];
  _RAND_142 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_8_REG = _RAND_142[0:0];
  _RAND_143 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_9_REG = _RAND_143[5:0];
  _RAND_144 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_9_pipeReg__0 = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_9_pipeReg__1 = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_0 = _RAND_146[0:0];
  _RAND_147 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_9_pipeReg_1_1 = _RAND_147[0:0];
  _RAND_148 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_9_REG = _RAND_148[0:0];
  _RAND_149 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_10_REG = _RAND_149[5:0];
  _RAND_150 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_10_pipeReg__0 = _RAND_150[0:0];
  _RAND_151 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_10_pipeReg__1 = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_0 = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_10_pipeReg_1_1 = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_10_REG = _RAND_154[0:0];
  _RAND_155 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_11_REG = _RAND_155[5:0];
  _RAND_156 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_11_pipeReg__0 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_11_pipeReg__1 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_0 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_11_pipeReg_1_1 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_11_REG = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_12_REG = _RAND_161[5:0];
  _RAND_162 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_12_pipeReg__0 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_12_pipeReg__1 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_0 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_12_pipeReg_1_1 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_12_REG = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_13_REG = _RAND_167[5:0];
  _RAND_168 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_13_pipeReg__0 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_13_pipeReg__1 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_0 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_13_pipeReg_1_1 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_13_REG = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_14_REG = _RAND_173[5:0];
  _RAND_174 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_14_pipeReg__0 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_14_pipeReg__1 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_0 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_14_pipeReg_1_1 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_14_REG = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_dataInput_15_REG = _RAND_179[5:0];
  _RAND_180 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_15_pipeReg__0 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_15_pipeReg__1 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_0 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_15_pipeReg_1_1 = _RAND_183[0:0];
  _RAND_184 = {1{`RANDOM}};
  multiHotPriortyReductionTree_io_selectInput_15_REG = _RAND_184[0:0];
  _RAND_185 = {1{`RANDOM}};
  pixelColorSprite = _RAND_185[5:0];
  _RAND_186 = {1{`RANDOM}};
  pixelColorSpriteValid = _RAND_186[0:0];
  _RAND_187 = {1{`RANDOM}};
  pixelColourVGA_pipeReg_0 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  pixelColourVGA_pipeReg_1 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  pixelColourVGA_pipeReg_2 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  io_vgaRed_REG = _RAND_190[3:0];
  _RAND_191 = {1{`RANDOM}};
  io_vgaGreen_REG = _RAND_191[3:0];
  _RAND_192 = {1{`RANDOM}};
  io_vgaBlue_REG = _RAND_192[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Memory_51(
  input         clock,
  input  [7:0]  io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [27:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [7:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [27:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [27:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(8), .DATA_WIDTH(28), .LOAD_FILE("memory_init/tune_init_0.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 28'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module Memory_52(
  input         clock,
  input  [7:0]  io_address, // @[\\src\\main\\scala\\Memory.scala 48:14]
  output [27:0] io_dataRead // @[\\src\\main\\scala\\Memory.scala 48:14]
);
  wire  ramsSpWf_clk; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_we; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire  ramsSpWf_en; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [7:0] ramsSpWf_addr; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [27:0] ramsSpWf_di; // @[\\src\\main\\scala\\Memory.scala 65:26]
  wire [27:0] ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 65:26]
  RamInitSpWf #(.ADDR_WIDTH(8), .DATA_WIDTH(28), .LOAD_FILE("memory_init/tune_init_1.mem")) ramsSpWf ( // @[\\src\\main\\scala\\Memory.scala 65:26]
    .clk(ramsSpWf_clk),
    .we(ramsSpWf_we),
    .en(ramsSpWf_en),
    .addr(ramsSpWf_addr),
    .di(ramsSpWf_di),
    .dout(ramsSpWf_dout)
  );
  assign io_dataRead = ramsSpWf_dout; // @[\\src\\main\\scala\\Memory.scala 71:17]
  assign ramsSpWf_clk = clock; // @[\\src\\main\\scala\\Memory.scala 66:21]
  assign ramsSpWf_we = 1'h0; // @[\\src\\main\\scala\\Memory.scala 67:20]
  assign ramsSpWf_en = 1'h1; // @[\\src\\main\\scala\\Memory.scala 68:20]
  assign ramsSpWf_addr = io_address; // @[\\src\\main\\scala\\Memory.scala 69:22]
  assign ramsSpWf_di = 28'h0; // @[\\src\\main\\scala\\Memory.scala 70:20]
endmodule
module SoundEngine(
  input   clock,
  input   reset
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  tuneMemories_0_clock; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  wire [7:0] tuneMemories_0_io_address; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  wire [27:0] tuneMemories_0_io_dataRead; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  wire  tuneMemories_1_clock; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  wire [7:0] tuneMemories_1_io_address; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  wire [27:0] tuneMemories_1_io_dataRead; // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
  reg [11:0] durationCountReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
  reg [11:0] durationCountReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
  reg [11:0] currDurationReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
  reg [11:0] currDurationReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
  reg [7:0] nextIndexReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
  reg [7:0] nextIndexReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
  reg [1:0] stateReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
  reg [1:0] stateReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
  reg  newNoteLoadReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
  reg  newNoteLoadReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
  wire  durationCountRegDone_0 = durationCountReg_0 == 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 89:54]
  wire  _T_8 = tuneMemories_0_io_dataRead[27:16] != 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 111:60]
  wire [1:0] _GEN_4 = tuneMemories_0_io_dataRead[27:16] != 12'h0 ? 2'h3 : stateReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 111:69 112:23 62:25]
  wire [11:0] _GEN_6 = tuneMemories_0_io_dataRead[27:16] != 12'h0 ? tuneMemories_0_io_dataRead[27:16] :
    currDurationReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 111:69 114:30 58:32]
  wire  _T_13 = durationCountRegDone_0 & ~newNoteLoadReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 122:44]
  wire [7:0] _nextIndexReg_0_T_1 = nextIndexReg_0 + 8'h1; // @[\\src\\main\\scala\\SoundEngine.scala 126:46]
  wire [11:0] _GEN_10 = durationCountRegDone_0 & ~newNoteLoadReg_0 ? tuneMemories_0_io_dataRead[27:16] :
    currDurationReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 122:67 124:30 58:32]
  wire [7:0] _GEN_12 = durationCountRegDone_0 & ~newNoteLoadReg_0 ? _nextIndexReg_0_T_1 : nextIndexReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 122:67 126:27 59:29]
  wire [7:0] _GEN_14 = tuneMemories_0_io_dataRead[27:16] == 12'h0 ? 8'h0 : _GEN_12; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 120:27]
  wire [11:0] _GEN_16 = tuneMemories_0_io_dataRead[27:16] == 12'h0 ? currDurationReg_0 : _GEN_10; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 58:32]
  wire  _GEN_17 = tuneMemories_0_io_dataRead[27:16] == 12'h0 ? 1'h0 : _T_13; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 97:23]
  wire [7:0] _GEN_22 = 2'h3 == stateReg_0 ? _GEN_14 : nextIndexReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 59:29]
  wire [11:0] _GEN_24 = 2'h3 == stateReg_0 ? _GEN_16 : currDurationReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 58:32]
  wire  _GEN_25 = 2'h3 == stateReg_0 & _GEN_17; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 97:23]
  wire  durationCountRegDone_1 = durationCountReg_1 == 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 89:54]
  wire  _T_25 = tuneMemories_1_io_dataRead[27:16] != 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 111:60]
  wire [1:0] _GEN_52 = tuneMemories_1_io_dataRead[27:16] != 12'h0 ? 2'h3 : stateReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 111:69 112:23 62:25]
  wire [11:0] _GEN_54 = tuneMemories_1_io_dataRead[27:16] != 12'h0 ? tuneMemories_1_io_dataRead[27:16] :
    currDurationReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 111:69 114:30 58:32]
  wire  _T_30 = durationCountRegDone_1 & ~newNoteLoadReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 122:44]
  wire [7:0] _nextIndexReg_1_T_1 = nextIndexReg_1 + 8'h1; // @[\\src\\main\\scala\\SoundEngine.scala 126:46]
  wire [11:0] _GEN_58 = durationCountRegDone_1 & ~newNoteLoadReg_1 ? tuneMemories_1_io_dataRead[27:16] :
    currDurationReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 122:67 124:30 58:32]
  wire [7:0] _GEN_60 = durationCountRegDone_1 & ~newNoteLoadReg_1 ? _nextIndexReg_1_T_1 : nextIndexReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 122:67 126:27 59:29]
  wire [7:0] _GEN_62 = tuneMemories_1_io_dataRead[27:16] == 12'h0 ? 8'h0 : _GEN_60; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 120:27]
  wire [11:0] _GEN_64 = tuneMemories_1_io_dataRead[27:16] == 12'h0 ? currDurationReg_1 : _GEN_58; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 58:32]
  wire  _GEN_65 = tuneMemories_1_io_dataRead[27:16] == 12'h0 ? 1'h0 : _T_30; // @[\\src\\main\\scala\\SoundEngine.scala 119:69 97:23]
  wire [7:0] _GEN_70 = 2'h3 == stateReg_1 ? _GEN_62 : nextIndexReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 59:29]
  wire [11:0] _GEN_72 = 2'h3 == stateReg_1 ? _GEN_64 : currDurationReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 58:32]
  wire  _GEN_73 = 2'h3 == stateReg_1 & _GEN_65; // @[\\src\\main\\scala\\SoundEngine.scala 100:25 97:23]
  Memory_51 tuneMemories_0 ( // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
    .clock(tuneMemories_0_clock),
    .io_address(tuneMemories_0_io_address),
    .io_dataRead(tuneMemories_0_io_dataRead)
  );
  Memory_52 tuneMemories_1 ( // @[\\src\\main\\scala\\SoundEngine.scala 26:28]
    .clock(tuneMemories_1_clock),
    .io_address(tuneMemories_1_io_address),
    .io_dataRead(tuneMemories_1_io_dataRead)
  );
  assign tuneMemories_0_clock = clock;
  assign tuneMemories_0_io_address = nextIndexReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 72:32]
  assign tuneMemories_1_clock = clock;
  assign tuneMemories_1_io_address = nextIndexReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 72:32]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
      durationCountReg_0 <= 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
    end else if (newNoteLoadReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 84:35]
      durationCountReg_0 <= currDurationReg_0; // @[\\src\\main\\scala\\SoundEngine.scala 85:27]
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
      durationCountReg_1 <= 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 45:33]
    end else if (newNoteLoadReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 84:35]
      durationCountReg_1 <= currDurationReg_1; // @[\\src\\main\\scala\\SoundEngine.scala 85:27]
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
      currDurationReg_0 <= 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
    end else if (!(2'h0 == stateReg_0)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      if (!(2'h1 == stateReg_0)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
        if (2'h2 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
          currDurationReg_0 <= _GEN_6;
        end else begin
          currDurationReg_0 <= _GEN_24;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
      currDurationReg_1 <= 12'h0; // @[\\src\\main\\scala\\SoundEngine.scala 58:32]
    end else if (!(2'h0 == stateReg_1)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      if (!(2'h1 == stateReg_1)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
        if (2'h2 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
          currDurationReg_1 <= _GEN_54;
        end else begin
          currDurationReg_1 <= _GEN_72;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
      nextIndexReg_0 <= 8'h0; // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
    end else if (2'h0 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_0 <= 8'h0; // @[\\src\\main\\scala\\SoundEngine.scala 102:25]
    end else if (2'h1 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_0 <= 8'h1; // @[\\src\\main\\scala\\SoundEngine.scala 107:25]
    end else if (!(2'h2 == stateReg_0)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_0 <= _GEN_22;
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
      nextIndexReg_1 <= 8'h0; // @[\\src\\main\\scala\\SoundEngine.scala 59:29]
    end else if (2'h0 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_1 <= 8'h0; // @[\\src\\main\\scala\\SoundEngine.scala 102:25]
    end else if (2'h1 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_1 <= 8'h1; // @[\\src\\main\\scala\\SoundEngine.scala 107:25]
    end else if (!(2'h2 == stateReg_1)) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      nextIndexReg_1 <= _GEN_70;
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
      stateReg_0 <= 2'h0; // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
    end else if (2'h0 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_0 <= 2'h1; // @[\\src\\main\\scala\\SoundEngine.scala 103:21]
    end else if (2'h1 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_0 <= 2'h2; // @[\\src\\main\\scala\\SoundEngine.scala 108:21]
    end else if (2'h2 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_0 <= _GEN_4;
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
      stateReg_1 <= 2'h0; // @[\\src\\main\\scala\\SoundEngine.scala 62:25]
    end else if (2'h0 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_1 <= 2'h1; // @[\\src\\main\\scala\\SoundEngine.scala 103:21]
    end else if (2'h1 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_1 <= 2'h2; // @[\\src\\main\\scala\\SoundEngine.scala 108:21]
    end else if (2'h2 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      stateReg_1 <= _GEN_52;
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
      newNoteLoadReg_0 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
    end else if (2'h0 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_0 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 97:23]
    end else if (2'h1 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_0 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 97:23]
    end else if (2'h2 == stateReg_0) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_0 <= _T_8;
    end else begin
      newNoteLoadReg_0 <= _GEN_25;
    end
    if (reset) begin // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
      newNoteLoadReg_1 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 63:31]
    end else if (2'h0 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_1 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 97:23]
    end else if (2'h1 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_1 <= 1'h0; // @[\\src\\main\\scala\\SoundEngine.scala 97:23]
    end else if (2'h2 == stateReg_1) begin // @[\\src\\main\\scala\\SoundEngine.scala 100:25]
      newNoteLoadReg_1 <= _T_25;
    end else begin
      newNoteLoadReg_1 <= _GEN_73;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  durationCountReg_0 = _RAND_0[11:0];
  _RAND_1 = {1{`RANDOM}};
  durationCountReg_1 = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  currDurationReg_0 = _RAND_2[11:0];
  _RAND_3 = {1{`RANDOM}};
  currDurationReg_1 = _RAND_3[11:0];
  _RAND_4 = {1{`RANDOM}};
  nextIndexReg_0 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  nextIndexReg_1 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  stateReg_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  stateReg_1 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  newNoteLoadReg_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  newNoteLoadReg_1 = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module GameLogic(
  input         clock,
  input         reset,
  input         io_btnC, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  input         io_btnU, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  input         io_btnL, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  input         io_btnR, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  input         io_btnD, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output [10:0] io_spriteXPosition_13, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output [10:0] io_spriteXPosition_14, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output [9:0]  io_spriteYPosition_13, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output [9:0]  io_spriteYPosition_14, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_7, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_8, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_9, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_10, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_11, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_12, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_13, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_spriteVisible_14, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output [9:0]  io_viewBoxX, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  input         io_newFrame, // @[\\src\\main\\scala\\GameLogic.scala 12:14]
  output        io_frameUpdateDone // @[\\src\\main\\scala\\GameLogic.scala 12:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] stateReg; // @[\\src\\main\\scala\\GameLogic.scala 113:25]
  reg [10:0] sprite13XReg; // @[\\src\\main\\scala\\GameLogic.scala 128:29]
  reg [9:0] sprite13YReg; // @[\\src\\main\\scala\\GameLogic.scala 129:29]
  reg  sprite7Visible; // @[\\src\\main\\scala\\GameLogic.scala 154:31]
  reg  sprite8Visible; // @[\\src\\main\\scala\\GameLogic.scala 155:31]
  reg  sprite9Visible; // @[\\src\\main\\scala\\GameLogic.scala 156:31]
  reg  sprite10Visible; // @[\\src\\main\\scala\\GameLogic.scala 157:32]
  reg  sprite11Visible; // @[\\src\\main\\scala\\GameLogic.scala 158:32]
  reg  sprite12Visible; // @[\\src\\main\\scala\\GameLogic.scala 159:32]
  reg  sprite13Visible; // @[\\src\\main\\scala\\GameLogic.scala 160:32]
  reg  sprite14Visible; // @[\\src\\main\\scala\\GameLogic.scala 161:32]
  reg [9:0] viewBoxXReg; // @[\\src\\main\\scala\\GameLogic.scala 208:28]
  reg  lvl1Reg; // @[\\src\\main\\scala\\GameLogic.scala 216:24]
  reg  lvl2Reg; // @[\\src\\main\\scala\\GameLogic.scala 217:24]
  reg  lvl3Reg; // @[\\src\\main\\scala\\GameLogic.scala 218:24]
  wire  _T_4 = lvl1Reg | lvl2Reg | lvl3Reg; // @[\\src\\main\\scala\\GameLogic.scala 232:31]
  wire  _T_8 = $signed(sprite13YReg) > 10'sh12c; // @[\\src\\main\\scala\\GameLogic.scala 241:75]
  wire  _T_10 = $signed(sprite13YReg) < 10'sh14c; // @[\\src\\main\\scala\\GameLogic.scala 241:99]
  wire  _T_11 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c; // @[\\src\\main\\scala\\GameLogic.scala 241:83]
  wire  _GEN_1 = io_btnC | lvl1Reg; // @[\\src\\main\\scala\\GameLogic.scala 244:25 245:21 216:24]
  wire [2:0] _GEN_2 = io_btnC ? 3'h3 : 3'h6; // @[\\src\\main\\scala\\GameLogic.scala 244:25 246:22 248:22]
  wire  _T_18 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10; // @[\\src\\main\\scala\\GameLogic.scala 250:89]
  wire  _GEN_3 = io_btnC | lvl2Reg; // @[\\src\\main\\scala\\GameLogic.scala 253:25 254:21 217:24]
  wire [2:0] _GEN_4 = io_btnC ? 3'h4 : 3'h6; // @[\\src\\main\\scala\\GameLogic.scala 253:25 255:22 257:22]
  wire  _T_25 = $signed(sprite13XReg) > 11'sh160 & $signed(sprite13XReg) < 11'sh184 & _T_8 & _T_10; // @[\\src\\main\\scala\\GameLogic.scala 259:89]
  wire  _GEN_5 = io_btnC | lvl3Reg; // @[\\src\\main\\scala\\GameLogic.scala 262:25 263:21 218:24]
  wire [2:0] _GEN_6 = io_btnC ? 3'h5 : 3'h6; // @[\\src\\main\\scala\\GameLogic.scala 262:25 264:22 266:22]
  wire  _GEN_7 = $signed(sprite13XReg) > 11'sh160 & $signed(sprite13XReg) < 11'sh184 & _T_8 & _T_10 ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GameLogic.scala 259:114 239:25 260:27]
  wire  _GEN_9 = $signed(sprite13XReg) > 11'sh160 & $signed(sprite13XReg) < 11'sh184 & _T_8 & _T_10 ? _GEN_5 : lvl3Reg; // @[\\src\\main\\scala\\GameLogic.scala 259:114 218:24]
  wire [2:0] _GEN_10 = $signed(sprite13XReg) > 11'sh160 & $signed(sprite13XReg) < 11'sh184 & _T_8 & _T_10 ? _GEN_6 :
    stateReg; // @[\\src\\main\\scala\\GameLogic.scala 259:114 113:25]
  wire  _GEN_11 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GameLogic.scala 250:114 237:24 251:26]
  wire  _GEN_13 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 ? _GEN_3 : lvl2Reg; // @[\\src\\main\\scala\\GameLogic.scala 250:114 217:24]
  wire [2:0] _GEN_14 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 ? _GEN_4 :
    _GEN_10; // @[\\src\\main\\scala\\GameLogic.scala 250:114]
  wire  _GEN_15 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 | _GEN_7; // @[\\src\\main\\scala\\GameLogic.scala 250:114 239:25]
  wire  _GEN_16 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 ? 1'h0 : _T_25; // @[\\src\\main\\scala\\GameLogic.scala 250:114 240:25]
  wire  _GEN_17 = $signed(sprite13XReg) > 11'sh130 & $signed(sprite13XReg) < 11'sh150 & _T_8 & _T_10 ? lvl3Reg : _GEN_9; // @[\\src\\main\\scala\\GameLogic.scala 250:114 218:24]
  wire  _GEN_18 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GameLogic.scala 241:108 235:24 242:26]
  wire  _GEN_20 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? _GEN_1 : lvl1Reg; // @[\\src\\main\\scala\\GameLogic.scala 241:108 216:24]
  wire [2:0] _GEN_21 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? _GEN_2 : _GEN_14; // @[\\src\\main\\scala\\GameLogic.scala 241:108]
  wire  _GEN_22 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c | _GEN_11; // @[\\src\\main\\scala\\GameLogic.scala 241:108 237:24]
  wire  _GEN_23 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? 1'h0 : _T_18; // @[\\src\\main\\scala\\GameLogic.scala 241:108 238:25]
  wire  _GEN_24 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? lvl2Reg : _GEN_13; // @[\\src\\main\\scala\\GameLogic.scala 241:108 217:24]
  wire  _GEN_25 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c | _GEN_15; // @[\\src\\main\\scala\\GameLogic.scala 241:108 239:25]
  wire  _GEN_26 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? 1'h0 : _GEN_16; // @[\\src\\main\\scala\\GameLogic.scala 241:108 240:25]
  wire  _GEN_27 = $signed(sprite13XReg) > 11'sh100 & $signed(sprite13XReg) < 11'sh120 & $signed(sprite13YReg) > 10'sh12c
     & $signed(sprite13YReg) < 10'sh14c ? lvl3Reg : _GEN_17; // @[\\src\\main\\scala\\GameLogic.scala 241:108 218:24]
  wire [2:0] _GEN_28 = lvl1Reg | lvl2Reg | lvl3Reg ? 3'h6 : _GEN_21; // @[\\src\\main\\scala\\GameLogic.scala 232:43 233:18]
  wire  _GEN_29 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite7Visible : _GEN_18; // @[\\src\\main\\scala\\GameLogic.scala 154:31 232:43]
  wire  _GEN_30 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite8Visible : _T_11; // @[\\src\\main\\scala\\GameLogic.scala 155:31 232:43]
  wire  _GEN_31 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite9Visible : _GEN_22; // @[\\src\\main\\scala\\GameLogic.scala 156:31 232:43]
  wire  _GEN_32 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite10Visible : _GEN_23; // @[\\src\\main\\scala\\GameLogic.scala 157:32 232:43]
  wire  _GEN_33 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite11Visible : _GEN_25; // @[\\src\\main\\scala\\GameLogic.scala 158:32 232:43]
  wire  _GEN_34 = lvl1Reg | lvl2Reg | lvl3Reg ? sprite12Visible : _GEN_26; // @[\\src\\main\\scala\\GameLogic.scala 159:32 232:43]
  wire  _GEN_35 = lvl1Reg | lvl2Reg | lvl3Reg ? lvl1Reg : _GEN_20; // @[\\src\\main\\scala\\GameLogic.scala 216:24 232:43]
  wire  _GEN_36 = lvl1Reg | lvl2Reg | lvl3Reg ? lvl2Reg : _GEN_24; // @[\\src\\main\\scala\\GameLogic.scala 217:24 232:43]
  wire  _GEN_37 = lvl1Reg | lvl2Reg | lvl3Reg ? lvl3Reg : _GEN_27; // @[\\src\\main\\scala\\GameLogic.scala 218:24 232:43]
  wire [9:0] _sprite13YReg_T_2 = $signed(sprite13YReg) + 10'sh2; // @[\\src\\main\\scala\\GameLogic.scala 301:42]
  wire [9:0] _GEN_38 = $signed(sprite13YReg) < 10'sh1c0 ? $signed(_sprite13YReg_T_2) : $signed(sprite13YReg); // @[\\src\\main\\scala\\GameLogic.scala 300:45 301:26 129:29]
  wire [9:0] _sprite13YReg_T_5 = $signed(sprite13YReg) - 10'sh2; // @[\\src\\main\\scala\\GameLogic.scala 305:42]
  wire [9:0] _GEN_39 = $signed(sprite13YReg) > 10'sh20 ? $signed(_sprite13YReg_T_5) : $signed(sprite13YReg); // @[\\src\\main\\scala\\GameLogic.scala 304:37 305:26 129:29]
  wire [9:0] _GEN_40 = io_btnU ? $signed(_GEN_39) : $signed(sprite13YReg); // @[\\src\\main\\scala\\GameLogic.scala 129:29 303:29]
  wire [9:0] _GEN_41 = io_btnD ? $signed(_GEN_38) : $signed(_GEN_40); // @[\\src\\main\\scala\\GameLogic.scala 299:22]
  wire [10:0] _sprite13XReg_T_2 = $signed(sprite13XReg) + 11'sh2; // @[\\src\\main\\scala\\GameLogic.scala 320:42]
  wire [10:0] _GEN_46 = $signed(sprite13XReg) < 11'sh260 ? $signed(_sprite13XReg_T_2) : $signed(sprite13XReg); // @[\\src\\main\\scala\\GameLogic.scala 319:45 320:26 128:29]
  wire [10:0] _sprite13XReg_T_5 = $signed(sprite13XReg) - 11'sh2; // @[\\src\\main\\scala\\GameLogic.scala 324:42]
  wire [10:0] _GEN_47 = $signed(sprite13XReg) > 11'sh20 ? $signed(_sprite13XReg_T_5) : $signed(sprite13XReg); // @[\\src\\main\\scala\\GameLogic.scala 323:37 324:26 128:29]
  wire [10:0] _GEN_48 = io_btnL ? $signed(_GEN_47) : $signed(sprite13XReg); // @[\\src\\main\\scala\\GameLogic.scala 128:29 322:29]
  wire [10:0] _GEN_49 = io_btnR ? $signed(_GEN_46) : $signed(_GEN_48); // @[\\src\\main\\scala\\GameLogic.scala 318:23]
  wire [9:0] _GEN_50 = _T_4 ? $signed(_GEN_41) : $signed(_GEN_41); // @[\\src\\main\\scala\\GameLogic.scala 298:43]
  wire [10:0] _GEN_51 = _T_4 ? $signed(sprite13XReg) : $signed(_GEN_49); // @[\\src\\main\\scala\\GameLogic.scala 128:29 298:43]
  wire [2:0] _GEN_53 = 3'h7 == stateReg ? 3'h0 : stateReg; // @[\\src\\main\\scala\\GameLogic.scala 220:20 333:16 113:25]
  wire [9:0] _GEN_54 = 3'h6 == stateReg ? $signed(_GEN_50) : $signed(sprite13YReg); // @[\\src\\main\\scala\\GameLogic.scala 220:20 129:29]
  wire [10:0] _GEN_55 = 3'h6 == stateReg ? $signed(_GEN_51) : $signed(sprite13XReg); // @[\\src\\main\\scala\\GameLogic.scala 220:20 128:29]
  wire [2:0] _GEN_56 = 3'h6 == stateReg ? 3'h7 : _GEN_53; // @[\\src\\main\\scala\\GameLogic.scala 220:20 328:16]
  wire  _GEN_57 = 3'h6 == stateReg ? 1'h0 : 3'h7 == stateReg; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire [2:0] _GEN_58 = 3'h5 == stateReg ? 3'h6 : _GEN_56; // @[\\src\\main\\scala\\GameLogic.scala 220:20 294:16]
  wire [9:0] _GEN_59 = 3'h5 == stateReg ? $signed(sprite13YReg) : $signed(_GEN_54); // @[\\src\\main\\scala\\GameLogic.scala 220:20 129:29]
  wire [10:0] _GEN_60 = 3'h5 == stateReg ? $signed(sprite13XReg) : $signed(_GEN_55); // @[\\src\\main\\scala\\GameLogic.scala 220:20 128:29]
  wire  _GEN_61 = 3'h5 == stateReg ? 1'h0 : _GEN_57; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire [2:0] _GEN_62 = 3'h4 == stateReg ? 3'h6 : _GEN_58; // @[\\src\\main\\scala\\GameLogic.scala 220:20 290:16]
  wire [9:0] _GEN_63 = 3'h4 == stateReg ? $signed(sprite13YReg) : $signed(_GEN_59); // @[\\src\\main\\scala\\GameLogic.scala 220:20 129:29]
  wire [10:0] _GEN_64 = 3'h4 == stateReg ? $signed(sprite13XReg) : $signed(_GEN_60); // @[\\src\\main\\scala\\GameLogic.scala 220:20 128:29]
  wire  _GEN_65 = 3'h4 == stateReg ? 1'h0 : _GEN_61; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire [10:0] _GEN_66 = 3'h3 == stateReg ? $signed(11'sh260) : $signed(_GEN_64); // @[\\src\\main\\scala\\GameLogic.scala 220:20 273:20]
  wire [9:0] _GEN_67 = 3'h3 == stateReg ? $signed(10'sh140) : $signed(_GEN_63); // @[\\src\\main\\scala\\GameLogic.scala 220:20 274:20]
  wire  _GEN_68 = 3'h3 == stateReg ? 1'h0 : sprite7Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 275:22 154:31]
  wire  _GEN_69 = 3'h3 == stateReg ? 1'h0 : sprite8Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 276:22 155:31]
  wire  _GEN_70 = 3'h3 == stateReg ? 1'h0 : sprite9Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 277:22 156:31]
  wire  _GEN_71 = 3'h3 == stateReg ? 1'h0 : sprite10Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 278:23 157:32]
  wire  _GEN_72 = 3'h3 == stateReg ? 1'h0 : sprite11Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 279:23 158:32]
  wire  _GEN_73 = 3'h3 == stateReg ? 1'h0 : sprite12Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 280:23 159:32]
  wire  _GEN_74 = 3'h3 == stateReg ? 1'h0 : sprite13Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 281:23 160:32]
  wire  _GEN_75 = 3'h3 == stateReg | sprite14Visible; // @[\\src\\main\\scala\\GameLogic.scala 220:20 282:23 161:32]
  wire [9:0] _GEN_76 = 3'h3 == stateReg ? 10'h280 : viewBoxXReg; // @[\\src\\main\\scala\\GameLogic.scala 220:20 283:19 208:28]
  wire [2:0] _GEN_78 = 3'h3 == stateReg ? 3'h6 : _GEN_62; // @[\\src\\main\\scala\\GameLogic.scala 220:20 286:16]
  wire  _GEN_79 = 3'h3 == stateReg ? 1'h0 : _GEN_65; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire  _GEN_92 = 3'h2 == stateReg ? sprite13Visible : _GEN_74; // @[\\src\\main\\scala\\GameLogic.scala 220:20 160:32]
  wire  _GEN_96 = 3'h2 == stateReg ? 1'h0 : _GEN_79; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire  _GEN_109 = 3'h1 == stateReg ? sprite13Visible : _GEN_92; // @[\\src\\main\\scala\\GameLogic.scala 220:20 160:32]
  wire  _GEN_113 = 3'h1 == stateReg ? 1'h0 : _GEN_96; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  wire  _GEN_126 = 3'h0 == stateReg ? sprite13Visible : _GEN_109; // @[\\src\\main\\scala\\GameLogic.scala 220:20 160:32]
  assign io_spriteXPosition_13 = sprite13XReg; // @[\\src\\main\\scala\\GameLogic.scala 198:26]
  assign io_spriteXPosition_14 = sprite13XReg; // @[\\src\\main\\scala\\GameLogic.scala 202:26]
  assign io_spriteYPosition_13 = sprite13YReg; // @[\\src\\main\\scala\\GameLogic.scala 199:26]
  assign io_spriteYPosition_14 = sprite13YReg; // @[\\src\\main\\scala\\GameLogic.scala 203:26]
  assign io_spriteVisible_7 = sprite7Visible; // @[\\src\\main\\scala\\GameLogic.scala 164:23]
  assign io_spriteVisible_8 = sprite8Visible; // @[\\src\\main\\scala\\GameLogic.scala 165:23]
  assign io_spriteVisible_9 = sprite9Visible; // @[\\src\\main\\scala\\GameLogic.scala 166:23]
  assign io_spriteVisible_10 = sprite10Visible; // @[\\src\\main\\scala\\GameLogic.scala 167:24]
  assign io_spriteVisible_11 = sprite11Visible; // @[\\src\\main\\scala\\GameLogic.scala 168:24]
  assign io_spriteVisible_12 = sprite12Visible; // @[\\src\\main\\scala\\GameLogic.scala 169:24]
  assign io_spriteVisible_13 = sprite13Visible; // @[\\src\\main\\scala\\GameLogic.scala 170:24]
  assign io_spriteVisible_14 = sprite14Visible; // @[\\src\\main\\scala\\GameLogic.scala 171:24]
  assign io_viewBoxX = viewBoxXReg; // @[\\src\\main\\scala\\GameLogic.scala 212:15]
  assign io_frameUpdateDone = 3'h0 == stateReg ? 1'h0 : _GEN_113; // @[\\src\\main\\scala\\GameLogic.scala 220:20 100:22]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 113:25]
      stateReg <= 3'h0; // @[\\src\\main\\scala\\GameLogic.scala 113:25]
    end else if (3'h0 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (io_newFrame) begin // @[\\src\\main\\scala\\GameLogic.scala 222:25]
        stateReg <= 3'h1; // @[\\src\\main\\scala\\GameLogic.scala 223:18]
      end
    end else if (3'h1 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      stateReg <= 3'h2; // @[\\src\\main\\scala\\GameLogic.scala 228:16]
    end else if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      stateReg <= _GEN_28;
    end else begin
      stateReg <= _GEN_78;
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 128:29]
      sprite13XReg <= 11'sh140; // @[\\src\\main\\scala\\GameLogic.scala 128:29]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (!(3'h2 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite13XReg <= _GEN_66;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 129:29]
      sprite13YReg <= 10'shf0; // @[\\src\\main\\scala\\GameLogic.scala 129:29]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (!(3'h2 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite13YReg <= _GEN_67;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 154:31]
      sprite7Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 154:31]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite7Visible <= _GEN_29;
        end else begin
          sprite7Visible <= _GEN_68;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 155:31]
      sprite8Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 155:31]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite8Visible <= _GEN_30;
        end else begin
          sprite8Visible <= _GEN_69;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 156:31]
      sprite9Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 156:31]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite9Visible <= _GEN_31;
        end else begin
          sprite9Visible <= _GEN_70;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 157:32]
      sprite10Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 157:32]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite10Visible <= _GEN_32;
        end else begin
          sprite10Visible <= _GEN_71;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 158:32]
      sprite11Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 158:32]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite11Visible <= _GEN_33;
        end else begin
          sprite11Visible <= _GEN_72;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 159:32]
      sprite12Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 159:32]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite12Visible <= _GEN_34;
        end else begin
          sprite12Visible <= _GEN_73;
        end
      end
    end
    sprite13Visible <= reset | _GEN_126; // @[\\src\\main\\scala\\GameLogic.scala 160:{32,32}]
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 161:32]
      sprite14Visible <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 161:32]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (!(3'h2 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          sprite14Visible <= _GEN_75;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 208:28]
      viewBoxXReg <= 10'h0; // @[\\src\\main\\scala\\GameLogic.scala 208:28]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (!(3'h2 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          viewBoxXReg <= _GEN_76;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 216:24]
      lvl1Reg <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 216:24]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          lvl1Reg <= _GEN_35;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 217:24]
      lvl2Reg <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 217:24]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          lvl2Reg <= _GEN_36;
        end
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\GameLogic.scala 218:24]
      lvl3Reg <= 1'h0; // @[\\src\\main\\scala\\GameLogic.scala 218:24]
    end else if (!(3'h0 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
      if (!(3'h1 == stateReg)) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
        if (3'h2 == stateReg) begin // @[\\src\\main\\scala\\GameLogic.scala 220:20]
          lvl3Reg <= _GEN_37;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  sprite13XReg = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  sprite13YReg = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  sprite7Visible = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sprite8Visible = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sprite9Visible = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sprite10Visible = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sprite11Visible = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sprite12Visible = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  sprite13Visible = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  sprite14Visible = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  viewBoxXReg = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  lvl1Reg = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  lvl2Reg = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  lvl3Reg = _RAND_14[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module GameTop(
  input        clock,
  input        reset,
  input        io_btnC, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  input        io_btnU, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  input        io_btnL, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  input        io_btnR, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  input        io_btnD, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output [3:0] io_vgaRed, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output [3:0] io_vgaBlue, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output [3:0] io_vgaGreen, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output       io_Hsync, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output       io_Vsync, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output       io_missingFrameError, // @[\\src\\main\\scala\\GameTop.scala 14:14]
  output       io_viewBoxOutOfRangeError // @[\\src\\main\\scala\\GameTop.scala 14:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_REG_INIT
  wire  graphicEngineVGA_clock; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_reset; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [10:0] graphicEngineVGA_io_spriteXPosition_13; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [10:0] graphicEngineVGA_io_spriteXPosition_14; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [9:0] graphicEngineVGA_io_spriteYPosition_13; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [9:0] graphicEngineVGA_io_spriteYPosition_14; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_7; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_8; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_9; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_10; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_11; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_12; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_13; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_spriteVisible_14; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [9:0] graphicEngineVGA_io_viewBoxX; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_newFrame; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_frameUpdateDone; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_missingFrameError; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_viewBoxOutOfRangeError; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [3:0] graphicEngineVGA_io_vgaRed; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [3:0] graphicEngineVGA_io_vgaBlue; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire [3:0] graphicEngineVGA_io_vgaGreen; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_Hsync; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  graphicEngineVGA_io_Vsync; // @[\\src\\main\\scala\\GameTop.scala 46:32]
  wire  soundEngine_clock; // @[\\src\\main\\scala\\GameTop.scala 49:27]
  wire  soundEngine_reset; // @[\\src\\main\\scala\\GameTop.scala 49:27]
  wire  gameLogic_clock; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_reset; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_btnC; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_btnU; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_btnL; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_btnR; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_btnD; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire [10:0] gameLogic_io_spriteXPosition_13; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire [10:0] gameLogic_io_spriteXPosition_14; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire [9:0] gameLogic_io_spriteYPosition_13; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire [9:0] gameLogic_io_spriteYPosition_14; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_7; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_8; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_9; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_10; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_11; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_12; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_13; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_spriteVisible_14; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire [9:0] gameLogic_io_viewBoxX; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_newFrame; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  wire  gameLogic_io_frameUpdateDone; // @[\\src\\main\\scala\\GameTop.scala 53:25]
  reg [20:0] debounceCounter; // @[\\src\\main\\scala\\GameTop.scala 68:32]
  wire  debounceSampleEn = debounceCounter == 21'h1e847f; // @[\\src\\main\\scala\\GameTop.scala 70:24]
  wire [20:0] _debounceCounter_T_1 = debounceCounter + 21'h1; // @[\\src\\main\\scala\\GameTop.scala 74:40]
  reg [21:0] resetReleaseCounter; // @[\\src\\main\\scala\\GameTop.scala 81:36]
  wire [21:0] _resetReleaseCounter_T_1 = resetReleaseCounter + 22'h1; // @[\\src\\main\\scala\\GameTop.scala 87:48]
  reg  btnCState_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnCState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnCState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnCState; // @[\\src\\main\\scala\\GameTop.scala 93:28]
  reg  btnUState_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnUState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnUState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnUState; // @[\\src\\main\\scala\\GameTop.scala 94:28]
  reg  btnLState_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnLState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnLState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnLState; // @[\\src\\main\\scala\\GameTop.scala 95:28]
  reg  btnRState_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnRState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnRState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnRState; // @[\\src\\main\\scala\\GameTop.scala 96:28]
  reg  btnDState_pipeReg_0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnDState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnDState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
  reg  btnDState; // @[\\src\\main\\scala\\GameTop.scala 97:28]
  GraphicEngineVGA graphicEngineVGA ( // @[\\src\\main\\scala\\GameTop.scala 46:32]
    .clock(graphicEngineVGA_clock),
    .reset(graphicEngineVGA_reset),
    .io_spriteXPosition_13(graphicEngineVGA_io_spriteXPosition_13),
    .io_spriteXPosition_14(graphicEngineVGA_io_spriteXPosition_14),
    .io_spriteYPosition_13(graphicEngineVGA_io_spriteYPosition_13),
    .io_spriteYPosition_14(graphicEngineVGA_io_spriteYPosition_14),
    .io_spriteVisible_7(graphicEngineVGA_io_spriteVisible_7),
    .io_spriteVisible_8(graphicEngineVGA_io_spriteVisible_8),
    .io_spriteVisible_9(graphicEngineVGA_io_spriteVisible_9),
    .io_spriteVisible_10(graphicEngineVGA_io_spriteVisible_10),
    .io_spriteVisible_11(graphicEngineVGA_io_spriteVisible_11),
    .io_spriteVisible_12(graphicEngineVGA_io_spriteVisible_12),
    .io_spriteVisible_13(graphicEngineVGA_io_spriteVisible_13),
    .io_spriteVisible_14(graphicEngineVGA_io_spriteVisible_14),
    .io_viewBoxX(graphicEngineVGA_io_viewBoxX),
    .io_newFrame(graphicEngineVGA_io_newFrame),
    .io_frameUpdateDone(graphicEngineVGA_io_frameUpdateDone),
    .io_missingFrameError(graphicEngineVGA_io_missingFrameError),
    .io_viewBoxOutOfRangeError(graphicEngineVGA_io_viewBoxOutOfRangeError),
    .io_vgaRed(graphicEngineVGA_io_vgaRed),
    .io_vgaBlue(graphicEngineVGA_io_vgaBlue),
    .io_vgaGreen(graphicEngineVGA_io_vgaGreen),
    .io_Hsync(graphicEngineVGA_io_Hsync),
    .io_Vsync(graphicEngineVGA_io_Vsync)
  );
  SoundEngine soundEngine ( // @[\\src\\main\\scala\\GameTop.scala 49:27]
    .clock(soundEngine_clock),
    .reset(soundEngine_reset)
  );
  GameLogic gameLogic ( // @[\\src\\main\\scala\\GameTop.scala 53:25]
    .clock(gameLogic_clock),
    .reset(gameLogic_reset),
    .io_btnC(gameLogic_io_btnC),
    .io_btnU(gameLogic_io_btnU),
    .io_btnL(gameLogic_io_btnL),
    .io_btnR(gameLogic_io_btnR),
    .io_btnD(gameLogic_io_btnD),
    .io_spriteXPosition_13(gameLogic_io_spriteXPosition_13),
    .io_spriteXPosition_14(gameLogic_io_spriteXPosition_14),
    .io_spriteYPosition_13(gameLogic_io_spriteYPosition_13),
    .io_spriteYPosition_14(gameLogic_io_spriteYPosition_14),
    .io_spriteVisible_7(gameLogic_io_spriteVisible_7),
    .io_spriteVisible_8(gameLogic_io_spriteVisible_8),
    .io_spriteVisible_9(gameLogic_io_spriteVisible_9),
    .io_spriteVisible_10(gameLogic_io_spriteVisible_10),
    .io_spriteVisible_11(gameLogic_io_spriteVisible_11),
    .io_spriteVisible_12(gameLogic_io_spriteVisible_12),
    .io_spriteVisible_13(gameLogic_io_spriteVisible_13),
    .io_spriteVisible_14(gameLogic_io_spriteVisible_14),
    .io_viewBoxX(gameLogic_io_viewBoxX),
    .io_newFrame(gameLogic_io_newFrame),
    .io_frameUpdateDone(gameLogic_io_frameUpdateDone)
  );
  assign io_vgaRed = graphicEngineVGA_io_vgaRed; // @[\\src\\main\\scala\\GameTop.scala 105:13]
  assign io_vgaBlue = graphicEngineVGA_io_vgaBlue; // @[\\src\\main\\scala\\GameTop.scala 107:14]
  assign io_vgaGreen = graphicEngineVGA_io_vgaGreen; // @[\\src\\main\\scala\\GameTop.scala 106:15]
  assign io_Hsync = graphicEngineVGA_io_Hsync; // @[\\src\\main\\scala\\GameTop.scala 108:12]
  assign io_Vsync = graphicEngineVGA_io_Vsync; // @[\\src\\main\\scala\\GameTop.scala 109:12]
  assign io_missingFrameError = graphicEngineVGA_io_missingFrameError; // @[\\src\\main\\scala\\GameTop.scala 120:24]
  assign io_viewBoxOutOfRangeError = graphicEngineVGA_io_viewBoxOutOfRangeError; // @[\\src\\main\\scala\\GameTop.scala 122:29]
  assign graphicEngineVGA_clock = clock;
  assign graphicEngineVGA_reset = resetReleaseCounter == 22'h3d08ff ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GameTop.scala 83:67 84:18 86:18]
  assign graphicEngineVGA_io_spriteXPosition_13 = gameLogic_io_spriteXPosition_13; // @[\\src\\main\\scala\\GameTop.scala 125:39]
  assign graphicEngineVGA_io_spriteXPosition_14 = gameLogic_io_spriteXPosition_14; // @[\\src\\main\\scala\\GameTop.scala 125:39]
  assign graphicEngineVGA_io_spriteYPosition_13 = gameLogic_io_spriteYPosition_13; // @[\\src\\main\\scala\\GameTop.scala 126:39]
  assign graphicEngineVGA_io_spriteYPosition_14 = gameLogic_io_spriteYPosition_14; // @[\\src\\main\\scala\\GameTop.scala 126:39]
  assign graphicEngineVGA_io_spriteVisible_7 = gameLogic_io_spriteVisible_7; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_8 = gameLogic_io_spriteVisible_8; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_9 = gameLogic_io_spriteVisible_9; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_10 = gameLogic_io_spriteVisible_10; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_11 = gameLogic_io_spriteVisible_11; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_12 = gameLogic_io_spriteVisible_12; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_13 = gameLogic_io_spriteVisible_13; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_spriteVisible_14 = gameLogic_io_spriteVisible_14; // @[\\src\\main\\scala\\GameTop.scala 127:37]
  assign graphicEngineVGA_io_viewBoxX = gameLogic_io_viewBoxX; // @[\\src\\main\\scala\\GameTop.scala 138:32]
  assign graphicEngineVGA_io_frameUpdateDone = gameLogic_io_frameUpdateDone; // @[\\src\\main\\scala\\GameTop.scala 148:39]
  assign soundEngine_clock = clock;
  assign soundEngine_reset = reset;
  assign gameLogic_clock = clock;
  assign gameLogic_reset = resetReleaseCounter == 22'h3d08ff ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\GameTop.scala 83:67 84:18 86:18]
  assign gameLogic_io_btnC = btnCState; // @[\\src\\main\\scala\\GameTop.scala 98:21]
  assign gameLogic_io_btnU = btnUState; // @[\\src\\main\\scala\\GameTop.scala 99:21]
  assign gameLogic_io_btnL = btnLState; // @[\\src\\main\\scala\\GameTop.scala 100:21]
  assign gameLogic_io_btnR = btnRState; // @[\\src\\main\\scala\\GameTop.scala 101:21]
  assign gameLogic_io_btnD = btnDState; // @[\\src\\main\\scala\\GameTop.scala 102:21]
  assign gameLogic_io_newFrame = graphicEngineVGA_io_newFrame; // @[\\src\\main\\scala\\GameTop.scala 147:25]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 68:32]
      debounceCounter <= 21'h0; // @[\\src\\main\\scala\\GameTop.scala 68:32]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 70:57]
      debounceCounter <= 21'h0; // @[\\src\\main\\scala\\GameTop.scala 71:21]
    end else begin
      debounceCounter <= _debounceCounter_T_1; // @[\\src\\main\\scala\\GameTop.scala 74:21]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 81:36]
      resetReleaseCounter <= 22'h0; // @[\\src\\main\\scala\\GameTop.scala 81:36]
    end else if (!(resetReleaseCounter == 22'h3d08ff)) begin // @[\\src\\main\\scala\\GameTop.scala 83:67]
      resetReleaseCounter <= _resetReleaseCounter_T_1; // @[\\src\\main\\scala\\GameTop.scala 87:25]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnCState_pipeReg_0 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnCState_pipeReg_0 <= btnCState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnCState_pipeReg_1 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnCState_pipeReg_1 <= btnCState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnCState_pipeReg_2 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnCState_pipeReg_2 <= io_btnC; // @[\\src\\main\\scala\\GameUtilities.scala 41:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 93:28]
      btnCState <= 1'h0; // @[\\src\\main\\scala\\GameTop.scala 93:28]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 93:28]
      btnCState <= btnCState_pipeReg_0; // @[\\src\\main\\scala\\GameTop.scala 93:28]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnUState_pipeReg_0 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnUState_pipeReg_0 <= btnUState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnUState_pipeReg_1 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnUState_pipeReg_1 <= btnUState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnUState_pipeReg_2 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnUState_pipeReg_2 <= io_btnU; // @[\\src\\main\\scala\\GameUtilities.scala 41:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 94:28]
      btnUState <= 1'h0; // @[\\src\\main\\scala\\GameTop.scala 94:28]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 94:28]
      btnUState <= btnUState_pipeReg_0; // @[\\src\\main\\scala\\GameTop.scala 94:28]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnLState_pipeReg_0 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnLState_pipeReg_0 <= btnLState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnLState_pipeReg_1 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnLState_pipeReg_1 <= btnLState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnLState_pipeReg_2 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnLState_pipeReg_2 <= io_btnL; // @[\\src\\main\\scala\\GameUtilities.scala 41:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 95:28]
      btnLState <= 1'h0; // @[\\src\\main\\scala\\GameTop.scala 95:28]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 95:28]
      btnLState <= btnLState_pipeReg_0; // @[\\src\\main\\scala\\GameTop.scala 95:28]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnRState_pipeReg_0 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnRState_pipeReg_0 <= btnRState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnRState_pipeReg_1 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnRState_pipeReg_1 <= btnRState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnRState_pipeReg_2 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnRState_pipeReg_2 <= io_btnR; // @[\\src\\main\\scala\\GameUtilities.scala 41:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 96:28]
      btnRState <= 1'h0; // @[\\src\\main\\scala\\GameTop.scala 96:28]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 96:28]
      btnRState <= btnRState_pipeReg_0; // @[\\src\\main\\scala\\GameTop.scala 96:28]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnDState_pipeReg_0 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnDState_pipeReg_0 <= btnDState_pipeReg_1; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnDState_pipeReg_1 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnDState_pipeReg_1 <= btnDState_pipeReg_2; // @[\\src\\main\\scala\\GameUtilities.scala 43:20]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
      btnDState_pipeReg_2 <= 1'h0; // @[\\src\\main\\scala\\GameUtilities.scala 39:28]
    end else begin
      btnDState_pipeReg_2 <= io_btnD; // @[\\src\\main\\scala\\GameUtilities.scala 41:30]
    end
    if (reset) begin // @[\\src\\main\\scala\\GameTop.scala 97:28]
      btnDState <= 1'h0; // @[\\src\\main\\scala\\GameTop.scala 97:28]
    end else if (debounceSampleEn) begin // @[\\src\\main\\scala\\GameTop.scala 97:28]
      btnDState <= btnDState_pipeReg_0; // @[\\src\\main\\scala\\GameTop.scala 97:28]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  debounceCounter = _RAND_0[20:0];
  _RAND_1 = {1{`RANDOM}};
  resetReleaseCounter = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  btnCState_pipeReg_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  btnCState_pipeReg_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  btnCState_pipeReg_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  btnCState = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  btnUState_pipeReg_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  btnUState_pipeReg_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  btnUState_pipeReg_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  btnUState = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  btnLState_pipeReg_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  btnLState_pipeReg_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  btnLState_pipeReg_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  btnLState = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  btnRState_pipeReg_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  btnRState_pipeReg_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  btnRState_pipeReg_2 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  btnRState = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  btnDState_pipeReg_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  btnDState_pipeReg_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  btnDState_pipeReg_2 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  btnDState = _RAND_21[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Top(
  input        clock,
  input        reset,
  input        io_btnC, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_btnU, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_btnL, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_btnR, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_btnD, // @[\\src\\main\\scala\\Top.scala 14:14]
  output [3:0] io_vgaRed, // @[\\src\\main\\scala\\Top.scala 14:14]
  output [3:0] io_vgaGreen, // @[\\src\\main\\scala\\Top.scala 14:14]
  output [3:0] io_vgaBlue, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_Hsync, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_Vsync, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_0, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_1, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_2, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_3, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_4, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_5, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_6, // @[\\src\\main\\scala\\Top.scala 14:14]
  input        io_sw_7, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_0, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_1, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_2, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_3, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_4, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_5, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_6, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_led_7, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_missingFrameError, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_backBufferWriteError, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_viewBoxOutOfRangeError, // @[\\src\\main\\scala\\Top.scala 14:14]
  output       io_soundOut // @[\\src\\main\\scala\\Top.scala 14:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  gameTop_clock; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_reset; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_btnC; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_btnU; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_btnL; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_btnR; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_btnD; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire [3:0] gameTop_io_vgaRed; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire [3:0] gameTop_io_vgaBlue; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire [3:0] gameTop_io_vgaGreen; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_Hsync; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_Vsync; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_missingFrameError; // @[\\src\\main\\scala\\Top.scala 44:23]
  wire  gameTop_io_viewBoxOutOfRangeError; // @[\\src\\main\\scala\\Top.scala 44:23]
  reg  syncResetInput_REG; // @[\\src\\main\\scala\\Top.scala 49:48]
  reg  syncResetInput_REG_1; // @[\\src\\main\\scala\\Top.scala 49:40]
  reg  syncResetInput_REG_2; // @[\\src\\main\\scala\\Top.scala 49:32]
  reg  pipeResetReg_0; // @[\\src\\main\\scala\\Top.scala 54:25]
  reg  pipeResetReg_1; // @[\\src\\main\\scala\\Top.scala 54:25]
  reg  pipeResetReg_2; // @[\\src\\main\\scala\\Top.scala 54:25]
  reg  pipeResetReg_3; // @[\\src\\main\\scala\\Top.scala 54:25]
  reg  pipeResetReg_4; // @[\\src\\main\\scala\\Top.scala 54:25]
  wire [4:0] _gameTop_reset_T = {pipeResetReg_4,pipeResetReg_3,pipeResetReg_2,pipeResetReg_1,pipeResetReg_0}; // @[\\src\\main\\scala\\Top.scala 59:33]
  GameTop gameTop ( // @[\\src\\main\\scala\\Top.scala 44:23]
    .clock(gameTop_clock),
    .reset(gameTop_reset),
    .io_btnC(gameTop_io_btnC),
    .io_btnU(gameTop_io_btnU),
    .io_btnL(gameTop_io_btnL),
    .io_btnR(gameTop_io_btnR),
    .io_btnD(gameTop_io_btnD),
    .io_vgaRed(gameTop_io_vgaRed),
    .io_vgaBlue(gameTop_io_vgaBlue),
    .io_vgaGreen(gameTop_io_vgaGreen),
    .io_Hsync(gameTop_io_Hsync),
    .io_Vsync(gameTop_io_Vsync),
    .io_missingFrameError(gameTop_io_missingFrameError),
    .io_viewBoxOutOfRangeError(gameTop_io_viewBoxOutOfRangeError)
  );
  assign io_vgaRed = gameTop_io_vgaRed; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_vgaGreen = gameTop_io_vgaGreen; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_vgaBlue = gameTop_io_vgaBlue; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_Hsync = gameTop_io_Hsync; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_Vsync = gameTop_io_Vsync; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_0 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_1 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_2 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_3 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_4 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_5 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_6 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_led_7 = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_missingFrameError = gameTop_io_missingFrameError; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_backBufferWriteError = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_viewBoxOutOfRangeError = gameTop_io_viewBoxOutOfRangeError; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign io_soundOut = 1'h0; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign gameTop_clock = clock;
  assign gameTop_reset = |_gameTop_reset_T; // @[\\src\\main\\scala\\Top.scala 59:40]
  assign gameTop_io_btnC = io_btnC; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign gameTop_io_btnU = io_btnU; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign gameTop_io_btnL = io_btnL; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign gameTop_io_btnR = io_btnR; // @[\\src\\main\\scala\\Top.scala 62:14]
  assign gameTop_io_btnD = io_btnD; // @[\\src\\main\\scala\\Top.scala 62:14]
  always @(posedge clock) begin
    syncResetInput_REG <= reset; // @[\\src\\main\\scala\\Top.scala 49:48]
    syncResetInput_REG_1 <= syncResetInput_REG; // @[\\src\\main\\scala\\Top.scala 49:40]
    syncResetInput_REG_2 <= syncResetInput_REG_1; // @[\\src\\main\\scala\\Top.scala 49:32]
    pipeResetReg_0 <= pipeResetReg_1; // @[\\src\\main\\scala\\Top.scala 57:21]
    pipeResetReg_1 <= pipeResetReg_2; // @[\\src\\main\\scala\\Top.scala 57:21]
    pipeResetReg_2 <= pipeResetReg_3; // @[\\src\\main\\scala\\Top.scala 57:21]
    pipeResetReg_3 <= pipeResetReg_4; // @[\\src\\main\\scala\\Top.scala 57:21]
    pipeResetReg_4 <= ~syncResetInput_REG_2; // @[\\src\\main\\scala\\Top.scala 49:24]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  syncResetInput_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  syncResetInput_REG_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  syncResetInput_REG_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  pipeResetReg_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  pipeResetReg_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  pipeResetReg_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  pipeResetReg_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  pipeResetReg_4 = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

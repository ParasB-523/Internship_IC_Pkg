// Alnitak Top Module without Power Pins and Nets
// Dies -- 3 -- Eridani, Maia, Vega
// Interposer -- 1
// Library -- Top_Alnitak_2.ndm

module top_alnitak_2(
    // I2C Interface
    er_i2c_sda,
    er_i2c_scl,

    // TAP Signals
    er_tap_rst,
    er_tap_tck,
    er_tap_tms,
    er_tap_tdi,
    er_tap_tdo,
    ma_tap_tdi,
    ma_tap_tck,
    ma_tap_tms,
    ma_tap_tdo,
    ma_tap_rst,
    ve_tap_tdi,
    ve_tap_tck,
    ve_tap_tms,
    ve_tap_tdo,
    ve_tap_rst,

    // GPIO
    er_gpio,
    ma_gpio,
    ve_gpio,

    // MA XAUI
    ma_xaui_txD0_p, ma_xaui_txD0_n, ma_xaui_txD1_p, ma_xaui_txD1_n,
    ma_xaui_txD2_p, ma_xaui_txD2_n, ma_xaui_txD3_p, ma_xaui_txD3_n,
    ma_xaui_rxD0_p, ma_xaui_rxD0_n, ma_xaui_rxD1_p, ma_xaui_rxD1_n,
    ma_xaui_rxD2_p, ma_xaui_rxD2_n, ma_xaui_rxD3_p, ma_xaui_rxD3_n,
    ma_xaui_clk, ma_xaui_rst_n,

    // VE PCIE
    ve_pcie_clk, ve_pcie_tx_p, ve_pcie_tx_n, ve_pcie_rx_p, ve_pcie_rx_n, ve_pcie_rst_n
  ) ;

  // Ports Declaration
  // GPIO Ports
  inout [7:0] er_gpio, ma_gpio, ve_gpio ;

  // I2C Protocol Ports
  inout er_i2c_sda ;
  input er_i2c_scl ;
  
  // Tap Interface Ports
  input er_tap_rst, er_tap_tck, er_tap_tms, er_tap_tdi, ma_tap_tdi, ma_tap_tck ;
  input  ma_tap_tms, ma_tap_rst, ve_tap_tdi, ve_tap_tck, ve_tap_tms, ve_tap_rst ;
  output er_tap_tdo, ma_tap_tdo, ve_tap_tdo ;

  // XAUI Interface Ports
  input ma_xaui_rxD0_p, ma_xaui_rxD0_n, ma_xaui_rxD1_p, ma_xaui_rxD1_n ;
  input ma_xaui_rxD2_p, ma_xaui_rxD2_n, ma_xaui_rxD3_p, ma_xaui_rxD3_n ;
  output ma_xaui_txD0_p, ma_xaui_txD0_n, ma_xaui_txD1_p, ma_xaui_txD1_n ;
  output ma_xaui_txD2_p, ma_xaui_txD2_n, ma_xaui_txD3_p, ma_xaui_txD3_n ;
  input ma_xaui_clk, ma_xaui_rst_n ;

  // PCIe Interface Ports
  input ve_pcie_clk, ve_pcie_rst_n ;
  input ve_pcie_rx_p, ve_pcie_rx_n ;
  output ve_pcie_tx_p, ve_pcie_tx_n ;



  // GPIO Nets Definition
  /*wire er_gpio_0, er_gpio_1, er_gpio_2, er_gpio_3, er_gpio_4, er_gpio_5, er_gpio_6, er_gpio_7 ;
  wire ma_gpio_0, ma_gpio_1, ma_gpio_2, ma_gpio_3, ma_gpio_4, ma_gpio_5, ma_gpio_6, ma_gpio_7 ;
  wire ve_gpio_0, ve_gpio_1, ve_gpio_2, ve_gpio_3, ve_gpio_4, ve_gpio_5, ve_gpio_6, ve_gpio_7 ;
  */
  wire [7:0] er_gpio ;
  wire [7:0] ma_gpio ;
  wire [7:0] ve_gpio ;

  // UCIe Nets Definition
  // UCIe Nets - 32 bit
  wire [31:0] ve_ucie32b_rxdata ;
  wire [31:0] ve_ucie32b_txdata ;

  wire [1:0] ve_ucie32b_rxdataRD ;
  wire [1:0] ve_ucie32b_txdataRD ;

  wire ve_ucie32b_rxckn, ve_ucie32b_rxckp, ve_ucie32b_rxckRD, ve_ucie32b_rxcksbRD ;
  wire ve_ucie32b_rxcksb, ve_ucie32b_rxdatasb, ve_ucie32b_rxdatasbRD, ve_ucie32b_rxtrk, ve_ucie32b_rxvld, ve_ucie32b_rxvldRD ;

  wire ve_ucie32b_txckn, ve_ucie32b_txckp, ve_ucie32b_txckRD, ve_ucie32b_txcksbRD ;
  wire ve_ucie32b_txcksb, ve_ucie32b_txdatasb, ve_ucie32b_txdatasbRD, ve_ucie32b_txtrk, ve_ucie32b_txvld, ve_ucie32b_txvldRD ;

  // UCIe Nets - 64 bit
  wire [63:0] ma_ucie64b_rxdata ;
  wire [63:0] ma_ucie64b_txdata ;

  wire [3:0] ma_ucie64b_rxdataRD ;
  wire [3:0] ma_ucie64b_txdataRD ;

  wire ma_ucie64b_rxckn, ma_ucie64b_rxckp, ma_ucie64b_rxckRD, ma_ucie64b_rxcksbRD ;
  wire ma_ucie64b_rxcksb, ma_ucie64b_rxdatasb, ma_ucie64b_rxdatasbRD, ma_ucie64b_rxtrk, ma_ucie64b_rxvld, ma_ucie64b_rxvldRD ;

  wire ma_ucie64b_txckn, ma_ucie64b_txckp, ma_ucie64b_txckRD, ma_ucie64b_txcksbRD ; 
  wire ma_ucie64b_txcksb, ma_ucie64b_txdatasb, ma_ucie64b_txdatasbRD, ma_ucie64b_txtrk, ma_ucie64b_txvld, ma_ucie64b_txvldRD ;

  // Tap Protocol Nets Definition
  wire er_tap_tck, er_tap_tdi, er_tap_tdo, er_tap_tms, er_tap_rst ;
  wire ma_tap_tck, ma_tap_tdi, ma_tap_tdo, ma_tap_tms, ma_tap_rst ;
  wire ve_tap_tck, ve_tap_tdi, ve_tap_tdo, ve_tap_tms, ve_tap_rst ;

  // Communication Protocols Nets Definition
  wire er_i2c_scl, er_i2c_sda ;
  wire ma_xaui_clk, ma_xaui_rst_n, ma_xaui_rxD0_n, ma_xaui_rxD0_p, ma_xaui_rxD1_n, ma_xaui_rxD1_p;
  wire ma_xaui_rxD2_n, ma_xaui_rxD2_p, ma_xaui_rxD3_n, ma_xaui_rxD3_p, ma_xaui_txD0_n, ma_xaui_txD0_p ;
  wire ma_xaui_txD1_n, ma_xaui_txD1_p, ma_xaui_txD2_n, ma_xaui_txD2_p, ma_xaui_txD3_n, ma_xaui_txD3_p ;
  wire ve_pcie_clk, ve_pcie_rst_n, ve_pcie_rx_n, ve_pcie_rx_p, ve_pcie_tx_n, ve_pcie_tx_p ;


  // Interposer Instance
  interposer interposer_inst(
      // I2C Protocol
      .er_i2c_sda(er_i2c_sda),
      .er_i2c_scl(er_i2c_scl),

      // Eridani TAP
      .er_tap_rst(er_tap_rst),
      .er_tap_tck(er_tap_tck),
      .er_tap_tms(er_tap_tms),
      .er_tap_tdi(er_tap_tdi),
      .er_tap_tdo(er_tap_tdo),

      // Maia TAP
      .ma_tap_tdi(ma_tap_tdi),
      .ma_tap_tck(ma_tap_tck),
      .ma_tap_tms(ma_tap_tms),
      .ma_tap_tdo(ma_tap_tdo),
      .ma_tap_rst(ma_tap_rst),

      // Vega TAP
      .ve_tap_tdi(ve_tap_tdi),
      .ve_tap_tck(ve_tap_tck),
      .ve_tap_tms(ve_tap_tms),
      .ve_tap_tdo(ve_tap_tdo),
      .ve_tap_rst(ve_tap_rst),

      // GPIOs
      .er_gpio({er_gpio[0], er_gpio[1], er_gpio[2], er_gpio[3], er_gpio[4], er_gpio[5], er_gpio[6], er_gpio[7]}), 
      .ma_gpio({ma_gpio[0], ma_gpio[1], ma_gpio[2], ma_gpio[3], ma_gpio[4], ma_gpio[5], ma_gpio[6], ma_gpio[7]}),
      .ve_gpio({ve_gpio[0], ve_gpio[1], ve_gpio[2], ve_gpio[3], ve_gpio[4], ve_gpio[5], ve_gpio[6], ve_gpio[7]}),  

      // MA XAUI
      .ma_xaui_txD0_p(ma_xaui_txD0_p),
      .ma_xaui_txD0_n(ma_xaui_txD0_n),
      .ma_xaui_txD1_p(ma_xaui_txD1_p),
      .ma_xaui_txD1_n(ma_xaui_txD1_n),
      .ma_xaui_txD2_p(ma_xaui_txD2_p),
      .ma_xaui_txD2_n(ma_xaui_txD2_n),
      .ma_xaui_txD3_p(ma_xaui_txD3_p),
      .ma_xaui_txD3_n(ma_xaui_txD3_n),
      .ma_xaui_rxD0_p(ma_xaui_rxD0_p),
      .ma_xaui_rxD0_n(ma_xaui_rxD0_n),
      .ma_xaui_rxD1_p(ma_xaui_rxD1_p),
      .ma_xaui_rxD1_n(ma_xaui_rxD1_n),
      .ma_xaui_rxD2_p(ma_xaui_rxD2_p),
      .ma_xaui_rxD2_n(ma_xaui_rxD2_n),
      .ma_xaui_rxD3_p(ma_xaui_rxD3_p),
      .ma_xaui_rxD3_n(ma_xaui_rxD3_n),
      .ma_xaui_clk(ma_xaui_clk),
      .ma_xaui_rst_n(ma_xaui_rst_n),

      // VE PCIe
      .ve_pcie_clk(ve_pcie_clk),
      .ve_pcie_rst_n(ve_pcie_rst_n),
      .ve_pcie_tx_p(ve_pcie_tx_p),
      .ve_pcie_tx_n(ve_pcie_tx_n),
      .ve_pcie_rx_p(ve_pcie_rx_p),
      .ve_pcie_rx_n(ve_pcie_rx_n)
  ) ;



  // Die Instances
  eridani eridani_inst (
    // GPIO Pins
    .er_gpio({er_gpio[0], er_gpio[1], er_gpio[2], er_gpio[3], er_gpio[4], er_gpio[5], er_gpio[6], er_gpio[7]}), 

    // UCIe Pins
    // UCIe 32 bit Pins
    .er_ucie32b_rxdata({
      ve_ucie32b_txdata[0],  ve_ucie32b_txdata[1],  ve_ucie32b_txdata[2],  ve_ucie32b_txdata[3],
      ve_ucie32b_txdata[4],  ve_ucie32b_txdata[5],  ve_ucie32b_txdata[6],  ve_ucie32b_txdata[7],
      ve_ucie32b_txdata[8],  ve_ucie32b_txdata[9],  ve_ucie32b_txdata[10], ve_ucie32b_txdata[11],
      ve_ucie32b_txdata[12], ve_ucie32b_txdata[13], ve_ucie32b_txdata[14], ve_ucie32b_txdata[15],
      ve_ucie32b_txdata[16], ve_ucie32b_txdata[17], ve_ucie32b_txdata[18], ve_ucie32b_txdata[19],
      ve_ucie32b_txdata[20], ve_ucie32b_txdata[21], ve_ucie32b_txdata[22], ve_ucie32b_txdata[23],
      ve_ucie32b_txdata[24], ve_ucie32b_txdata[25], ve_ucie32b_txdata[26], ve_ucie32b_txdata[27],
      ve_ucie32b_txdata[28], ve_ucie32b_txdata[29], ve_ucie32b_txdata[30], ve_ucie32b_txdata[31]
    }),

    .er_ucie32b_rxdataRD({ve_ucie32b_txdataRD[0], ve_ucie32b_txdataRD[1]}),

    .er_ucie32b_rxckn(ve_ucie32b_txckn),
    .er_ucie32b_rxckp(ve_ucie32b_txckp),
    .er_ucie32b_rxckRD(ve_ucie32b_txckRD),
    .er_ucie32b_rxcksb(ve_ucie32b_txcksb),
    .er_ucie32b_rxcksbRD(ve_ucie32b_txcksbRD),
    .er_ucie32b_rxdatasb(ve_ucie32b_txdatasb),
    .er_ucie32b_rxdatasbRD(ve_ucie32b_txdatasbRD),
    .er_ucie32b_rxtrk(ve_ucie32b_txtrk),
    .er_ucie32b_rxvld(ve_ucie32b_txvld),
    .er_ucie32b_rxvldRD(ve_ucie32b_txvldRD),


    .er_ucie32b_txdata({
      ve_ucie32b_rxdata[0],  ve_ucie32b_rxdata[1],  ve_ucie32b_rxdata[2],  ve_ucie32b_rxdata[3],
      ve_ucie32b_rxdata[4],  ve_ucie32b_rxdata[5],  ve_ucie32b_rxdata[6],  ve_ucie32b_rxdata[7],
      ve_ucie32b_rxdata[8],  ve_ucie32b_rxdata[9],  ve_ucie32b_rxdata[10], ve_ucie32b_rxdata[11],
      ve_ucie32b_rxdata[12], ve_ucie32b_rxdata[13], ve_ucie32b_rxdata[14], ve_ucie32b_rxdata[15],
      ve_ucie32b_rxdata[16], ve_ucie32b_rxdata[17], ve_ucie32b_rxdata[18], ve_ucie32b_rxdata[19],
      ve_ucie32b_rxdata[20], ve_ucie32b_rxdata[21], ve_ucie32b_rxdata[22], ve_ucie32b_rxdata[23],
      ve_ucie32b_rxdata[24], ve_ucie32b_rxdata[25], ve_ucie32b_rxdata[26], ve_ucie32b_rxdata[27],
      ve_ucie32b_rxdata[28], ve_ucie32b_rxdata[29], ve_ucie32b_rxdata[30], ve_ucie32b_rxdata[31]
    }),

    .er_ucie32b_txdataRD({ve_ucie32b_rxdataRD[0], ve_ucie32b_rxdataRD[1]}),
    
    .er_ucie32b_txckn(ve_ucie32b_rxckn),
    .er_ucie32b_txckp(ve_ucie32b_rxckp),
    .er_ucie32b_txckRD(ve_ucie32b_rxckRD),
    .er_ucie32b_txcksb(ve_ucie32b_rxcksb),
    .er_ucie32b_txcksbRD(ve_ucie32b_rxcksbRD),
    .er_ucie32b_txdatasb(ve_ucie32b_rxdatasb),
    .er_ucie32b_txdatasbRD(ve_ucie32b_rxdatasbRD),
    .er_ucie32b_txtrk(ve_ucie32b_rxtrk),
    .er_ucie32b_txvld(ve_ucie32b_rxvld),
    .er_ucie32b_txvldRD(ve_ucie32b_rxvldRD),
    

    // UCIe 64 bit Pins
    .er_ucie64b_rxdata({
      ma_ucie64b_txdata[0],  ma_ucie64b_txdata[1],  ma_ucie64b_txdata[2],  ma_ucie64b_txdata[3],
      ma_ucie64b_txdata[4],  ma_ucie64b_txdata[5],  ma_ucie64b_txdata[6],  ma_ucie64b_txdata[7],
      ma_ucie64b_txdata[8],  ma_ucie64b_txdata[9],  ma_ucie64b_txdata[10], ma_ucie64b_txdata[11],
      ma_ucie64b_txdata[12], ma_ucie64b_txdata[13], ma_ucie64b_txdata[14], ma_ucie64b_txdata[15],
      ma_ucie64b_txdata[16], ma_ucie64b_txdata[17], ma_ucie64b_txdata[18], ma_ucie64b_txdata[19],
      ma_ucie64b_txdata[20], ma_ucie64b_txdata[21], ma_ucie64b_txdata[22], ma_ucie64b_txdata[23],
      ma_ucie64b_txdata[24], ma_ucie64b_txdata[25], ma_ucie64b_txdata[26], ma_ucie64b_txdata[27],
      ma_ucie64b_txdata[28], ma_ucie64b_txdata[29], ma_ucie64b_txdata[30], ma_ucie64b_txdata[31],
      ma_ucie64b_txdata[32], ma_ucie64b_txdata[33], ma_ucie64b_txdata[34], ma_ucie64b_txdata[35],
      ma_ucie64b_txdata[36], ma_ucie64b_txdata[37], ma_ucie64b_txdata[38], ma_ucie64b_txdata[39],
      ma_ucie64b_txdata[40], ma_ucie64b_txdata[41], ma_ucie64b_txdata[42], ma_ucie64b_txdata[43],
      ma_ucie64b_txdata[44], ma_ucie64b_txdata[45], ma_ucie64b_txdata[46], ma_ucie64b_txdata[47],
      ma_ucie64b_txdata[48], ma_ucie64b_txdata[49], ma_ucie64b_txdata[50], ma_ucie64b_txdata[51],
      ma_ucie64b_txdata[52], ma_ucie64b_txdata[53], ma_ucie64b_txdata[54], ma_ucie64b_txdata[55],
      ma_ucie64b_txdata[56], ma_ucie64b_txdata[57], ma_ucie64b_txdata[58], ma_ucie64b_txdata[59],
      ma_ucie64b_txdata[60], ma_ucie64b_txdata[61], ma_ucie64b_txdata[62], ma_ucie64b_txdata[63]
    }),

    .er_ucie64b_rxdataRD({ma_ucie64b_txdataRD[0], ma_ucie64b_txdataRD[1], ma_ucie64b_txdataRD[2], ma_ucie64b_txdataRD[3]}),

    .er_ucie64b_rxckn(ma_ucie64b_txckn),
    .er_ucie64b_rxckp(ma_ucie64b_txckp),
    .er_ucie64b_rxckRD(ma_ucie64b_txckRD),
    .er_ucie64b_rxcksbRD(ma_ucie64b_txcksbRD),
    .er_ucie64b_rxcksb(ma_ucie64b_txcksb),
    .er_ucie64b_rxdatasb(ma_ucie64b_txdatasb),
    .er_ucie64b_rxdatasbRD(ma_ucie64b_txdatasbRD),
    .er_ucie64b_rxtrk(ma_ucie64b_txtrk),
    .er_ucie64b_rxvld(ma_ucie64b_txvld),
    .er_ucie64b_rxvldRD(ma_ucie64b_txvldRD),


    .er_ucie64b_txdata({
      ma_ucie64b_rxdata[0],  ma_ucie64b_rxdata[1],  ma_ucie64b_rxdata[2],  ma_ucie64b_rxdata[3],
      ma_ucie64b_rxdata[4],  ma_ucie64b_rxdata[5],  ma_ucie64b_rxdata[6],  ma_ucie64b_rxdata[7],
      ma_ucie64b_rxdata[8],  ma_ucie64b_rxdata[9],  ma_ucie64b_rxdata[10], ma_ucie64b_rxdata[11],
      ma_ucie64b_rxdata[12], ma_ucie64b_rxdata[13], ma_ucie64b_rxdata[14], ma_ucie64b_rxdata[15],
      ma_ucie64b_rxdata[16], ma_ucie64b_rxdata[17], ma_ucie64b_rxdata[18], ma_ucie64b_rxdata[19],
      ma_ucie64b_rxdata[20], ma_ucie64b_rxdata[21], ma_ucie64b_rxdata[22], ma_ucie64b_rxdata[23],
      ma_ucie64b_rxdata[24], ma_ucie64b_rxdata[25], ma_ucie64b_rxdata[26], ma_ucie64b_rxdata[27],
      ma_ucie64b_rxdata[28], ma_ucie64b_rxdata[29], ma_ucie64b_rxdata[30], ma_ucie64b_rxdata[31],
      ma_ucie64b_rxdata[32], ma_ucie64b_rxdata[33], ma_ucie64b_rxdata[34], ma_ucie64b_rxdata[35],
      ma_ucie64b_rxdata[36], ma_ucie64b_rxdata[37], ma_ucie64b_rxdata[38], ma_ucie64b_rxdata[39],
      ma_ucie64b_rxdata[40], ma_ucie64b_rxdata[41], ma_ucie64b_rxdata[42], ma_ucie64b_rxdata[43],
      ma_ucie64b_rxdata[44], ma_ucie64b_rxdata[45], ma_ucie64b_rxdata[46], ma_ucie64b_rxdata[47],
      ma_ucie64b_rxdata[48], ma_ucie64b_rxdata[49], ma_ucie64b_rxdata[50], ma_ucie64b_rxdata[51],
      ma_ucie64b_rxdata[52], ma_ucie64b_rxdata[53], ma_ucie64b_rxdata[54], ma_ucie64b_rxdata[55],
      ma_ucie64b_rxdata[56], ma_ucie64b_rxdata[57], ma_ucie64b_rxdata[58], ma_ucie64b_rxdata[59],
      ma_ucie64b_rxdata[60], ma_ucie64b_rxdata[61], ma_ucie64b_rxdata[62], ma_ucie64b_rxdata[63]
    }),

    .er_ucie64b_txdataRD({ma_ucie64b_rxdataRD[0], ma_ucie64b_rxdataRD[1], ma_ucie64b_rxdataRD[2], ma_ucie64b_rxdataRD[3]}),

    .er_ucie64b_txckn(ma_ucie64b_rxckn),
    .er_ucie64b_txckp(ma_ucie64b_rxckp),
    .er_ucie64b_txckRD(ma_ucie64b_rxckRD),
    .er_ucie64b_txcksbRD(ma_ucie64b_rxcksbRD),
    .er_ucie64b_txcksb(ma_ucie64b_rxcksb),
    .er_ucie64b_txdatasb(ma_ucie64b_rxdatasb),
    .er_ucie64b_txdatasbRD(ma_ucie64b_rxdatasbRD),
    .er_ucie64b_txtrk(ma_ucie64b_rxtrk),
    .er_ucie64b_txvld(ma_ucie64b_rxvld),
    .er_ucie64b_txvldRD(ma_ucie64b_rxvldRD),


      // Tap Interface Pins
    .er_tap_tck(er_tap_tck),
    .er_tap_tdi(er_tap_tdi),
    .er_tap_tdo(er_tap_tdo),
    .er_tap_rst(er_tap_rst),
    .er_tap_tms(er_tap_tms),

    // I2C Protocol Pins
    .er_i2c_scl(er_i2c_scl),
    .er_i2c_sda(er_i2c_sda)
  ) ;


  maia maia_inst (
    // GPIO Pins
    .ma_gpio({ma_gpio[0], ma_gpio[1], ma_gpio[2], ma_gpio[3], ma_gpio[4], ma_gpio[5], ma_gpio[6], ma_gpio[7]}),

    // UCIe Pins
    .ma_ucie64b_rxdata({
      ma_ucie64b_rxdata[0],  ma_ucie64b_rxdata[1],  ma_ucie64b_rxdata[2],  ma_ucie64b_rxdata[3],
      ma_ucie64b_rxdata[4],  ma_ucie64b_rxdata[5],  ma_ucie64b_rxdata[6],  ma_ucie64b_rxdata[7],
      ma_ucie64b_rxdata[8],  ma_ucie64b_rxdata[9],  ma_ucie64b_rxdata[10], ma_ucie64b_rxdata[11],
      ma_ucie64b_rxdata[12], ma_ucie64b_rxdata[13], ma_ucie64b_rxdata[14], ma_ucie64b_rxdata[15],
      ma_ucie64b_rxdata[16], ma_ucie64b_rxdata[17], ma_ucie64b_rxdata[18], ma_ucie64b_rxdata[19],
      ma_ucie64b_rxdata[20], ma_ucie64b_rxdata[21], ma_ucie64b_rxdata[22], ma_ucie64b_rxdata[23],
      ma_ucie64b_rxdata[24], ma_ucie64b_rxdata[25], ma_ucie64b_rxdata[26], ma_ucie64b_rxdata[27],
      ma_ucie64b_rxdata[28], ma_ucie64b_rxdata[29], ma_ucie64b_rxdata[30], ma_ucie64b_rxdata[31],
      ma_ucie64b_rxdata[32], ma_ucie64b_rxdata[33], ma_ucie64b_rxdata[34], ma_ucie64b_rxdata[35],
      ma_ucie64b_rxdata[36], ma_ucie64b_rxdata[37], ma_ucie64b_rxdata[38], ma_ucie64b_rxdata[39],
      ma_ucie64b_rxdata[40], ma_ucie64b_rxdata[41], ma_ucie64b_rxdata[42], ma_ucie64b_rxdata[43],
      ma_ucie64b_rxdata[44], ma_ucie64b_rxdata[45], ma_ucie64b_rxdata[46], ma_ucie64b_rxdata[47],
      ma_ucie64b_rxdata[48], ma_ucie64b_rxdata[49], ma_ucie64b_rxdata[50], ma_ucie64b_rxdata[51],
      ma_ucie64b_rxdata[52], ma_ucie64b_rxdata[53], ma_ucie64b_rxdata[54], ma_ucie64b_rxdata[55],
      ma_ucie64b_rxdata[56], ma_ucie64b_rxdata[57], ma_ucie64b_rxdata[58], ma_ucie64b_rxdata[59],
      ma_ucie64b_rxdata[60], ma_ucie64b_rxdata[61], ma_ucie64b_rxdata[62], ma_ucie64b_rxdata[63]
    }),

    .ma_ucie64b_rxdataRD({ma_ucie64b_rxdataRD[0], ma_ucie64b_rxdataRD[1], ma_ucie64b_rxdataRD[2], ma_ucie64b_rxdataRD[3]}),

    .ma_ucie64b_rxckn(ma_ucie64b_rxckn),
    .ma_ucie64b_rxckp(ma_ucie64b_rxckp),
    .ma_ucie64b_rxckRD(ma_ucie64b_rxckRD),
    .ma_ucie64b_rxcksb(ma_ucie64b_rxcksb),
    .ma_ucie64b_rxcksbRD(ma_ucie64b_rxcksbRD),
    .ma_ucie64b_rxdatasb(ma_ucie64b_rxdatasb),
    .ma_ucie64b_rxdatasbRD(ma_ucie64b_rxdatasbRD),
    .ma_ucie64b_rxtrk(ma_ucie64b_rxtrk),
    .ma_ucie64b_rxvld(ma_ucie64b_rxvld),
    .ma_ucie64b_rxvldRD(ma_ucie64b_rxvldRD),

    
    .ma_ucie64b_txdata({
      ma_ucie64b_txdata[0],  ma_ucie64b_txdata[1],  ma_ucie64b_txdata[2],  ma_ucie64b_txdata[3],
      ma_ucie64b_txdata[4],  ma_ucie64b_txdata[5],  ma_ucie64b_txdata[6],  ma_ucie64b_txdata[7],
      ma_ucie64b_txdata[8],  ma_ucie64b_txdata[9],  ma_ucie64b_txdata[10], ma_ucie64b_txdata[11],
      ma_ucie64b_txdata[12], ma_ucie64b_txdata[13], ma_ucie64b_txdata[14], ma_ucie64b_txdata[15],
      ma_ucie64b_txdata[16], ma_ucie64b_txdata[17], ma_ucie64b_txdata[18], ma_ucie64b_txdata[19],
      ma_ucie64b_txdata[20], ma_ucie64b_txdata[21], ma_ucie64b_txdata[22], ma_ucie64b_txdata[23],
      ma_ucie64b_txdata[24], ma_ucie64b_txdata[25], ma_ucie64b_txdata[26], ma_ucie64b_txdata[27],
      ma_ucie64b_txdata[28], ma_ucie64b_txdata[29], ma_ucie64b_txdata[30], ma_ucie64b_txdata[31],
      ma_ucie64b_txdata[32], ma_ucie64b_txdata[33], ma_ucie64b_txdata[34], ma_ucie64b_txdata[35],
      ma_ucie64b_txdata[36], ma_ucie64b_txdata[37], ma_ucie64b_txdata[38], ma_ucie64b_txdata[39],
      ma_ucie64b_txdata[40], ma_ucie64b_txdata[41], ma_ucie64b_txdata[42], ma_ucie64b_txdata[43],
      ma_ucie64b_txdata[44], ma_ucie64b_txdata[45], ma_ucie64b_txdata[46], ma_ucie64b_txdata[47],
      ma_ucie64b_txdata[48], ma_ucie64b_txdata[49], ma_ucie64b_txdata[50], ma_ucie64b_txdata[51],
      ma_ucie64b_txdata[52], ma_ucie64b_txdata[53], ma_ucie64b_txdata[54], ma_ucie64b_txdata[55],
      ma_ucie64b_txdata[56], ma_ucie64b_txdata[57], ma_ucie64b_txdata[58], ma_ucie64b_txdata[59],
      ma_ucie64b_txdata[60], ma_ucie64b_txdata[61], ma_ucie64b_txdata[62], ma_ucie64b_txdata[63]
    }),

    .ma_ucie64b_txdataRD({ma_ucie64b_txdataRD[0], ma_ucie64b_txdataRD[1], ma_ucie64b_txdataRD[2], ma_ucie64b_txdataRD[3]}),
    
    .ma_ucie64b_txckn(ma_ucie64b_txckn),
    .ma_ucie64b_txckp(ma_ucie64b_txckp),
    .ma_ucie64b_txckRD(ma_ucie64b_txckRD),
    .ma_ucie64b_txcksb(ma_ucie64b_txcksb),
    .ma_ucie64b_txcksbRD(ma_ucie64b_txcksbRD),
    .ma_ucie64b_txdatasb(ma_ucie64b_txdatasb),
    .ma_ucie64b_txdatasbRD(ma_ucie64b_txdatasbRD),
    .ma_ucie64b_txtrk(ma_ucie64b_txtrk),
    .ma_ucie64b_txvld(ma_ucie64b_txvld),
    .ma_ucie64b_txvldRD(ma_ucie64b_txvldRD),


    // Tap Interface Pins
    .ma_tap_rst(ma_tap_rst),
    .ma_tap_tck(ma_tap_tck),
    .ma_tap_tdi(ma_tap_tdi),
    .ma_tap_tdo(ma_tap_tdo),
    .ma_tap_tms(ma_tap_tms),

    // XAUI Interface Pins
    .ma_xaui_clk(ma_xaui_clk),
    .ma_xaui_rst_n(ma_xaui_rst_n),
    .ma_xaui_rxD0_n(ma_xaui_rxD0_n),
    .ma_xaui_rxD0_p(ma_xaui_rxD0_p),
    .ma_xaui_rxD1_n(ma_xaui_rxD1_n),
    .ma_xaui_rxD1_p(ma_xaui_rxD1_p),
    .ma_xaui_rxD2_n(ma_xaui_rxD2_n),
    .ma_xaui_rxD2_p(ma_xaui_rxD2_p),
    .ma_xaui_rxD3_n(ma_xaui_rxD3_n),
    .ma_xaui_rxD3_p(ma_xaui_rxD3_p),
    .ma_xaui_txD0_n(ma_xaui_txD0_n),
    .ma_xaui_txD0_p(ma_xaui_txD0_p),
    .ma_xaui_txD1_n(ma_xaui_txD1_n),
    .ma_xaui_txD1_p(ma_xaui_txD1_p),
    .ma_xaui_txD2_n(ma_xaui_txD2_n),
    .ma_xaui_txD2_p(ma_xaui_txD2_p),
    .ma_xaui_txD3_n(ma_xaui_txD3_n),
    .ma_xaui_txD3_p(ma_xaui_txD3_p)
  ) ;


  // Vega Die Instance
  vega vega_inst (
    // GPIO Pins
    .ve_gpio({ve_gpio[0], ve_gpio[1], ve_gpio[2], ve_gpio[3], ve_gpio[4], ve_gpio[5], ve_gpio[6], ve_gpio[7]}),

    // UCIe Pins - 32 bit
    .ve_ucie32b_rxdata({
      ve_ucie32b_rxdata[0],  ve_ucie32b_rxdata[1],  ve_ucie32b_rxdata[2],  ve_ucie32b_rxdata[3],
      ve_ucie32b_rxdata[4],  ve_ucie32b_rxdata[5],  ve_ucie32b_rxdata[6],  ve_ucie32b_rxdata[7],
      ve_ucie32b_rxdata[8],  ve_ucie32b_rxdata[9],  ve_ucie32b_rxdata[10], ve_ucie32b_rxdata[11],
      ve_ucie32b_rxdata[12], ve_ucie32b_rxdata[13], ve_ucie32b_rxdata[14], ve_ucie32b_rxdata[15],
      ve_ucie32b_rxdata[16], ve_ucie32b_rxdata[17], ve_ucie32b_rxdata[18], ve_ucie32b_rxdata[19],
      ve_ucie32b_rxdata[20], ve_ucie32b_rxdata[21], ve_ucie32b_rxdata[22], ve_ucie32b_rxdata[23],
      ve_ucie32b_rxdata[24], ve_ucie32b_rxdata[25], ve_ucie32b_rxdata[26], ve_ucie32b_rxdata[27],
      ve_ucie32b_rxdata[28], ve_ucie32b_rxdata[29], ve_ucie32b_rxdata[30], ve_ucie32b_rxdata[31]
    }),

    .ve_ucie32b_rxdataRD({ve_ucie32b_rxdataRD[0], ve_ucie32b_rxdataRD[1]}),
    
    .ve_ucie32b_rxckn(ve_ucie32b_rxckn),
    .ve_ucie32b_rxckp(ve_ucie32b_rxckp),
    .ve_ucie32b_rxckRD(ve_ucie32b_rxckRD),
    .ve_ucie32b_rxcksb(ve_ucie32b_rxcksb),
    .ve_ucie32b_rxcksbRD(ve_ucie32b_rxcksbRD),
    .ve_ucie32b_rxdatasb(ve_ucie32b_rxdatasb),
    .ve_ucie32b_rxdatasbRD(ve_ucie32b_rxdatasbRD),
    .ve_ucie32b_rxtrk(ve_ucie32b_rxtrk),
    .ve_ucie32b_rxvld(ve_ucie32b_rxvld),
    .ve_ucie32b_rxvldRD(ve_ucie32b_rxvldRD),


    .ve_ucie32b_txdata({
      ve_ucie32b_txdata[0],  ve_ucie32b_txdata[1],  ve_ucie32b_txdata[2],  ve_ucie32b_txdata[3],
      ve_ucie32b_txdata[4],  ve_ucie32b_txdata[5],  ve_ucie32b_txdata[6],  ve_ucie32b_txdata[7],
      ve_ucie32b_txdata[8],  ve_ucie32b_txdata[9],  ve_ucie32b_txdata[10], ve_ucie32b_txdata[11],
      ve_ucie32b_txdata[12], ve_ucie32b_txdata[13], ve_ucie32b_txdata[14], ve_ucie32b_txdata[15],
      ve_ucie32b_txdata[16], ve_ucie32b_txdata[17], ve_ucie32b_txdata[18], ve_ucie32b_txdata[19],
      ve_ucie32b_txdata[20], ve_ucie32b_txdata[21], ve_ucie32b_txdata[22], ve_ucie32b_txdata[23],
      ve_ucie32b_txdata[24], ve_ucie32b_txdata[25], ve_ucie32b_txdata[26], ve_ucie32b_txdata[27],
      ve_ucie32b_txdata[28], ve_ucie32b_txdata[29], ve_ucie32b_txdata[30], ve_ucie32b_txdata[31]
    }),
    
    .ve_ucie32b_txdataRD({ve_ucie32b_txdataRD[0], ve_ucie32b_txdataRD[1]}),

    .ve_ucie32b_txckn(ve_ucie32b_txckn),
    .ve_ucie32b_txckp(ve_ucie32b_txckp),
    .ve_ucie32b_txckRD(ve_ucie32b_txckRD),
    .ve_ucie32b_txcksbRD(ve_ucie32b_txcksbRD),
    .ve_ucie32b_txcksb(ve_ucie32b_txcksb),
    .ve_ucie32b_txdatasb(ve_ucie32b_txdatasb),
    .ve_ucie32b_txdatasbRD(ve_ucie32b_txdatasbRD),
    .ve_ucie32b_txtrk(ve_ucie32b_txtrk),
    .ve_ucie32b_txvld(ve_ucie32b_txvld),
    .ve_ucie32b_txvldRD(ve_ucie32b_txvldRD), 

    // Tap Interface Pins
    .ve_tap_rst(ve_tap_rst),
    .ve_tap_tck(ve_tap_tck),
    .ve_tap_tdi(ve_tap_tdi),
    .ve_tap_tdo(ve_tap_tdo),
    .ve_tap_tms(ve_tap_tms),

    // PCIe Pins
    .ve_pcie_clk(ve_pcie_clk),
    .ve_pcie_rst_n(ve_pcie_rst_n),
    .ve_pcie_rx_n(ve_pcie_rx_n),
    .ve_pcie_rx_p(ve_pcie_rx_p),
    .ve_pcie_tx_n(ve_pcie_tx_n),
    .ve_pcie_tx_p(ve_pcie_tx_p)
  ) ;
endmodule

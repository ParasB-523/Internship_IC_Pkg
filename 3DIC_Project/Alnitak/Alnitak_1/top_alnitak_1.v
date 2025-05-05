// Alnitak Top Module with Power Pins and Nets, hence all Pins
// Dies -- 3 -- Eridani, Maia, Vega
// Interposer -- 1
// Library -- Top_Alnitak_1.ndm

module top_alnitak_1 (
    // Power Supplies
    vccio_0, vccio_1, vccio_2, vccio_3, vccio_4, vccio_5, vccio_6, vccio_7, vccio_8, vccio_9,
    vccio_10, vccio_11, vccio_12, vccio_13, vccio_14, vccio_15, vccio_16, vccio_17, vccio_18, vccio_19,
    vccio_20, vccio_21, vccio_22, vccio_23, vccio_24, vccio_25, vccio_26, vccio_27, vccio_28, vccio_29,
    vccio_30, vccio_31, vccio_32, vccio_33, vccio_34, vccio_35, vccio_36, vccio_37, vccio_38, vccio_39,
    vccio_40, vccio_41, vccio_42, vccio_43, vccio_44, vccio_45, vccio_46, vccio_47, vccio_48, vccio_49,
    vccio_50, vccio_51, vccio_52, vccio_53, vccio_54, vccio_55, vccio_56, vccio_57, vccio_58, vccio_59,
    vccio_60, vccio_61, vccio_62, vccio_63, vccio_64, vccio_65, vccio_66, vccio_67, vccio_68, vccio_69,
    vccio_70, vccio_71, vccio_72, vccio_73, vccio_74, vccio_75, vccio_76, vccio_77, vccio_78, vccio_79,
    vccio_80, vccio_81, vccio_82, vccio_83, vccio_84, vccio_85, vccio_86, vccio_87, vccio_88, vccio_89,
    vccio_90, vccio_91, vccio_92, vccio_93, vccio_94, vccio_95, vccio_96,

    // Additional Power
    vdd1p8_0, vdd1p8_1, vdd1p8_2, vdd1p8_3,
    vccfwdio_0, vccfwdio_1, vccfwdio_2, vccfwdio_3, vccfwdio_4,
    
    vddc_0, vddc_1, vddc_2,

    vss_0, vss_1, vss_2, vss_3, vss_4, vss_5, vss_6, vss_7, vss_8, vss_9,
    vss_10, vss_11, vss_12, vss_13, vss_14, vss_15, vss_16, vss_17, vss_18, vss_19,
    vss_20, vss_21, vss_22, vss_23, vss_24, vss_25, vss_26, vss_27, vss_28, vss_29,
    vss_30, vss_31, vss_32, vss_33, vss_34, vss_35, vss_36, vss_37, vss_38, vss_39,
    vss_40, vss_41, vss_42, vss_43, vss_44, vss_45, vss_46, vss_47, vss_48, vss_49,
    vss_50, vss_51, vss_52, vss_53, vss_54, vss_55, vss_56, vss_57, vss_58, vss_59,
    vss_60, vss_61, vss_62, vss_63, vss_64, vss_65, vss_66, vss_67, vss_68, vss_69,
    vss_70, vss_71, vss_72, vss_73, vss_74, vss_75, vss_76, vss_77, vss_78, vss_79,
    vss_80, vss_81, vss_82, vss_83, vss_84, vss_85, vss_86, vss_87, vss_88, vss_89,
    vss_90, vss_91, vss_92, vss_93, vss_94, vss_95, vss_96, vss_97, vss_98, vss_99,
    vss_100, vss_101, vss_102, vss_103, vss_104,
    
    
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
  );


  // Ports Declaration
  // Power Ports
  input vccio_0, vccio_1, vccio_2, vccio_3, vccio_4, vccio_5, vccio_6, vccio_7;
  input vccio_8, vccio_9, vccio_10, vccio_11, vccio_12, vccio_13, vccio_14, vccio_15;
  input vccio_16, vccio_17, vccio_18, vccio_19, vccio_20, vccio_21, vccio_22, vccio_23;
  input vccio_24, vccio_25, vccio_26, vccio_27, vccio_28, vccio_29, vccio_30, vccio_31;
  input vccio_32, vccio_33, vccio_34, vccio_35, vccio_36, vccio_37, vccio_38, vccio_39;
  input vccio_40, vccio_41, vccio_42, vccio_43, vccio_44, vccio_45, vccio_46, vccio_47;
  input vccio_48, vccio_49, vccio_50, vccio_51, vccio_52, vccio_53, vccio_54, vccio_55;
  input vccio_56, vccio_57, vccio_58, vccio_59, vccio_60, vccio_61, vccio_62, vccio_63;
  input vccio_64, vccio_65, vccio_66, vccio_67, vccio_68, vccio_69, vccio_70, vccio_71;
  input vccio_72, vccio_73, vccio_74, vccio_75, vccio_76, vccio_77, vccio_78, vccio_79;
  input vccio_80, vccio_81, vccio_82, vccio_83, vccio_84, vccio_85, vccio_86, vccio_87;
  input vccio_88, vccio_89, vccio_90, vccio_91, vccio_92, vccio_93, vccio_94, vccio_95;
  input vccio_96;

  input vccfwdio_0, vccfwdio_1, vccfwdio_2, vccfwdio_3, vccfwdio_4 ;
  input vddc_0, vddc_1, vddc_2 ;
  input vdd1p8_0, vdd1p8_1, vdd1p8_2, vdd1p8_3 ; 
  
  input vss_0, vss_1, vss_2, vss_3, vss_4, vss_5, vss_6, vss_7;
  input vss_8, vss_9, vss_10, vss_11, vss_12, vss_13, vss_14, vss_15;
  input vss_16, vss_17, vss_18, vss_19, vss_20, vss_21, vss_22, vss_23;
  input vss_24, vss_25, vss_26, vss_27, vss_28, vss_29, vss_30, vss_31;
  input vss_32, vss_33, vss_34, vss_35, vss_36, vss_37, vss_38, vss_39;
  input vss_40, vss_41, vss_42, vss_43, vss_44, vss_45, vss_46, vss_47;
  input vss_48, vss_49, vss_50, vss_51, vss_52, vss_53, vss_54, vss_55;
  input vss_56, vss_57, vss_58, vss_59, vss_60, vss_61, vss_62, vss_63;
  input vss_64, vss_65, vss_66, vss_67, vss_68, vss_69, vss_70, vss_71;
  input vss_72, vss_73, vss_74, vss_75, vss_76, vss_77, vss_78, vss_79;
  input vss_80, vss_81, vss_82, vss_83, vss_84, vss_85, vss_86, vss_87;
  input vss_88, vss_89, vss_90, vss_91, vss_92, vss_93, vss_94, vss_95;
  input vss_96, vss_97, vss_98, vss_99, vss_100, vss_101, vss_102, vss_103;
  input vss_104;

  

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
  output ma_xaui_txD0_p, ma_xaui_txD0_n, ma_xaui_txD1_p, ma_xaui_txD1_n ;
  output ma_xaui_txD2_p, ma_xaui_txD2_n, ma_xaui_txD3_p, ma_xaui_txD3_n ;
  input ma_xaui_rxD0_p, ma_xaui_rxD0_n, ma_xaui_rxD1_p, ma_xaui_rxD1_n ;
  input ma_xaui_rxD2_p, ma_xaui_rxD2_n, ma_xaui_rxD3_p, ma_xaui_rxD3_n ;
  input ma_xaui_clk, ma_xaui_rst_n ;

  // PCIe Interface Ports
  input ve_pcie_clk, ve_pcie_rst_n ;
  input ve_pcie_rx_p, ve_pcie_rx_n ;
  output ve_pcie_tx_p, ve_pcie_tx_n ;



  // Power Nets Definition
  wire vss, vddc, vdd1p8, vccio, vccfwdio ;

  // GPIO Nets Definition
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

/*  // Net Assignment to Power Ports
  assign vccio_0 = vccio_1 = vccio_2 = vccio_3 = vccio_4 = vccio_5 = vccio_6 = vccio_7 = vccio_8 = vccio_9 =
       vccio_10 = vccio_11 = vccio_12 = vccio_13 = vccio_14 = vccio_15 = vccio_16 = vccio_17 = vccio_18 = vccio_19 =
       vccio_20 = vccio_21 = vccio_22 = vccio_23 = vccio_24 = vccio_25 = vccio_26 = vccio_27 = vccio_28 = vccio_29 =
       vccio_30 = vccio_31 = vccio_32 = vccio_33 = vccio_34 = vccio_35 = vccio_36 = vccio_37 = vccio_38 = vccio_39 =
       vccio_40 = vccio_41 = vccio_42 = vccio_43 = vccio_44 = vccio_45 = vccio_46 = vccio_47 = vccio_48 = vccio_49 =
       vccio_50 = vccio_51 = vccio_52 = vccio_53 = vccio_54 = vccio_55 = vccio_56 = vccio_57 = vccio_58 = vccio_59 =
       vccio_60 = vccio_61 = vccio_62 = vccio_63 = vccio_64 = vccio_65 = vccio_66 = vccio_67 = vccio_68 = vccio_69 =
       vccio_70 = vccio_71 = vccio_72 = vccio_73 = vccio_74 = vccio_75 = vccio_76 = vccio_77 = vccio_78 = vccio_79 =
       vccio_80 = vccio_81 = vccio_82 = vccio_83 = vccio_84 = vccio_85 = vccio_86 = vccio_87 = vccio_88 = vccio_89 =
       vccio_90 = vccio_91 = vccio_92 = vccio_93 = vccio_94 = vccio_95 = vccio_96 = vccio;

  assign vccfwdio_0 = vccfwdio_1 = vccfwdio_2 = vccfwdio_3 = vccfwdio_4 = vccfwdio;

  assign vddc_0 = vddc_1 = vddc_2 = vddc;

  assign vdd1p8_0 = vdd1p8_1 = vdd1p8_2 = vdd1p8_3 = vdd1p8;

  assign vss_0 = vss_1 = vss_2 = vss_3 = vss_4 = vss_5 = vss_6 = vss_7 = vss_8 = vss_9 = 
        vss_10 = vss_11 = vss_12 = vss_13 = vss_14 = vss_15 = vss_16 = vss_17 = vss_18 = vss_19 =
        vss_20 = vss_21 = vss_22 = vss_23 = vss_24 = vss_25 = vss_26 = vss_27 = vss_28 = vss_29 =
        vss_30 = vss_31 = vss_32 = vss_33 = vss_34 = vss_35 = vss_36 = vss_37 = vss_38 = vss_39 =
        vss_40 = vss_41 = vss_42 = vss_43 = vss_44 = vss_45 = vss_46 = vss_47 = vss_48 = vss_49 =
        vss_50 = vss_51 = vss_52 = vss_53 = vss_54 = vss_55 = vss_56 = vss_57 = vss_58 = vss_59 =
        vss_60 = vss_61 = vss_62 = vss_63 = vss_64 = vss_65 = vss_66 = vss_67 = vss_68 = vss_69 =
        vss_70 = vss_71 = vss_72 = vss_73 = vss_74 = vss_75 = vss_76 = vss_77 = vss_78 = vss_79 =
        vss_80 = vss_81 = vss_82 = vss_83 = vss_84 = vss_85 = vss_86 = vss_87 = vss_88 = vss_89 =
        vss_90 = vss_91 = vss_92 = vss_93 = vss_94 = vss_95 = vss_96 = vss_97 = vss_98 = vss_99 =
        vss_100 = vss_101 = vss_102 = vss_103 = vss_104 = vss;
*/ 


 // Interposer Instance
  interposer interposer_inst(

      // Power and Ground
      .vccio_0(vccio), .vccio_1(vccio), .vccio_2(vccio), .vccio_3(vccio), .vccio_4(vccio), .vccio_5(vccio), .vccio_6(vccio),
      .vccio_7(vccio), .vccio_8(vccio), .vccio_9(vccio), .vccio_10(vccio), .vccio_11(vccio), .vccio_12(vccio), .vccio_13(vccio),
      .vccio_14(vccio), .vccio_15(vccio), .vccio_16(vccio), .vccio_17(vccio), .vccio_18(vccio), .vccio_19(vccio), .vccio_20(vccio),
      .vccio_21(vccio), .vccio_22(vccio), .vccio_23(vccio), .vccio_24(vccio), .vccio_25(vccio), .vccio_26(vccio), .vccio_27(vccio),
      .vccio_28(vccio), .vccio_29(vccio), .vccio_30(vccio), .vccio_31(vccio), .vccio_32(vccio), .vccio_33(vccio), .vccio_34(vccio),
      .vccio_35(vccio), .vccio_36(vccio), .vccio_37(vccio), .vccio_38(vccio), .vccio_39(vccio), .vccio_40(vccio), .vccio_41(vccio),
      .vccio_42(vccio), .vccio_43(vccio), .vccio_44(vccio), .vccio_45(vccio), .vccio_46(vccio), .vccio_47(vccio), .vccio_48(vccio),
      .vccio_49(vccio), .vccio_50(vccio), .vccio_51(vccio), .vccio_52(vccio), .vccio_53(vccio), .vccio_54(vccio), .vccio_55(vccio),
      .vccio_56(vccio), .vccio_57(vccio), .vccio_58(vccio), .vccio_59(vccio), .vccio_60(vccio), .vccio_61(vccio), .vccio_62(vccio),
      .vccio_63(vccio), .vccio_64(vccio), .vccio_65(vccio), .vccio_66(vccio), .vccio_67(vccio), .vccio_68(vccio), .vccio_69(vccio),
      .vccio_70(vccio), .vccio_71(vccio), .vccio_72(vccio), .vccio_73(vccio), .vccio_74(vccio), .vccio_75(vccio), .vccio_76(vccio),
      .vccio_77(vccio), .vccio_78(vccio), .vccio_79(vccio), .vccio_80(vccio), .vccio_81(vccio), .vccio_82(vccio), .vccio_83(vccio),
      .vccio_84(vccio), .vccio_85(vccio), .vccio_86(vccio), .vccio_87(vccio), .vccio_88(vccio), .vccio_89(vccio), .vccio_90(vccio),
      .vccio_91(vccio), .vccio_92(vccio), .vccio_93(vccio), .vccio_94(vccio), .vccio_95(vccio), .vccio_96(vccio),

      .vccfwdio_0(vccfwdio), .vccfwdio_1(vccfwdio), .vccfwdio_2(vccfwdio), .vccfwdio_3(vccfwdio), .vccfwdio_4(vccfwdio),

      .vddc_0(vddc), .vddc_1(vddc), .vddc_2(vddc),

      .vdd1p8_0(vdd1p8), .vdd1p8_1(vdd1p8), .vdd1p8_2(vdd1p8), .vdd1p8_3(vdd1p8),

      .vss_0(vss), .vss_1(vss), .vss_2(vss), .vss_3(vss), .vss_4(vss), .vss_5(vss), .vss_6(vss),
      .vss_7(vss), .vss_8(vss), .vss_9(vss), .vss_10(vss), .vss_11(vss), .vss_12(vss), .vss_13(vss),
      .vss_14(vss), .vss_15(vss), .vss_16(vss), .vss_17(vss), .vss_18(vss), .vss_19(vss), .vss_20(vss),
      .vss_21(vss), .vss_22(vss), .vss_23(vss), .vss_24(vss), .vss_25(vss), .vss_26(vss), .vss_27(vss),
      .vss_28(vss), .vss_29(vss), .vss_30(vss), .vss_31(vss), .vss_32(vss), .vss_33(vss), .vss_34(vss),
      .vss_35(vss), .vss_36(vss), .vss_37(vss), .vss_38(vss), .vss_39(vss), .vss_40(vss), .vss_41(vss),
      .vss_42(vss), .vss_43(vss), .vss_44(vss), .vss_45(vss), .vss_46(vss), .vss_47(vss), .vss_48(vss),
      .vss_49(vss), .vss_50(vss), .vss_51(vss), .vss_52(vss), .vss_53(vss), .vss_54(vss), .vss_55(vss),
      .vss_56(vss), .vss_57(vss), .vss_58(vss), .vss_59(vss), .vss_60(vss), .vss_61(vss), .vss_62(vss),
      .vss_63(vss), .vss_64(vss), .vss_65(vss), .vss_66(vss), .vss_67(vss), .vss_68(vss), .vss_69(vss),
      .vss_70(vss), .vss_71(vss), .vss_72(vss), .vss_73(vss), .vss_74(vss), .vss_75(vss), .vss_76(vss),
      .vss_77(vss), .vss_78(vss), .vss_79(vss), .vss_80(vss), .vss_81(vss), .vss_82(vss), .vss_83(vss),
      .vss_84(vss), .vss_85(vss), .vss_86(vss), .vss_87(vss), .vss_88(vss), .vss_89(vss), .vss_90(vss),
      .vss_91(vss), .vss_92(vss), .vss_93(vss), .vss_94(vss), .vss_95(vss), .vss_96(vss), .vss_97(vss),
      .vss_98(vss), .vss_99(vss), .vss_100(vss), .vss_101(vss), .vss_102(vss), .vss_103(vss), .vss_104(vss),


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
    // Power & Ground
    .er_vccio_0(vccio),  .er_vccio_1(vccio),  .er_vccio_2(vccio),  .er_vccio_3(vccio),  .er_vccio_4(vccio),  .er_vccio_5(vccio),
    .er_vccio_6(vccio),  .er_vccio_7(vccio),  .er_vccio_8(vccio),  .er_vccio_9(vccio),  .er_vccio_10(vccio),  .er_vccio_11(vccio),
    .er_vccio_12(vccio),  .er_vccio_13(vccio),  .er_vccio_14(vccio),  .er_vccio_15(vccio),  .er_vccio_16(vccio),  .er_vccio_17(vccio),
    .er_vccio_18(vccio),  .er_vccio_19(vccio),  .er_vccio_20(vccio),  .er_vccio_21(vccio),  .er_vccio_22(vccio),  .er_vccio_23(vccio),
    .er_vccio_24(vccio),  .er_vccio_25(vccio),  .er_vccio_26(vccio),  .er_vccio_27(vccio),  .er_vccio_28(vccio),  .er_vccio_29(vccio),
    .er_vccio_30(vccio),  .er_vccio_31(vccio),  .er_vccio_32(vccio),  .er_vccio_33(vccio),  .er_vccio_34(vccio),  .er_vccio_35(vccio),
    .er_vccio_36(vccio),  .er_vccio_37(vccio),  .er_vccio_38(vccio),  .er_vccio_39(vccio),  .er_vccio_40(vccio),  .er_vccio_41(vccio),
    .er_vccio_42(vccio),  .er_vccio_43(vccio),  .er_vccio_44(vccio),  .er_vccio_45(vccio),  .er_vccio_46(vccio),  .er_vccio_47(vccio),
    .er_vccio_48(vccio),  .er_vccio_49(vccio),  .er_vccio_50(vccio),  .er_vccio_51(vccio),  .er_vccio_52(vccio),  .er_vccio_53(vccio),
    .er_vccio_54(vccio),  .er_vccio_55(vccio),  .er_vccio_56(vccio),  .er_vccio_57(vccio),  .er_vccio_58(vccio),  .er_vccio_59(vccio),
    .er_vccio_60(vccio),  .er_vccio_61(vccio),  .er_vccio_62(vccio),  .er_vccio_63(vccio),  .er_vccio_64(vccio),  .er_vccio_65(vccio),
    .er_vccio_66(vccio),  .er_vccio_67(vccio),  .er_vccio_68(vccio),  .er_vccio_69(vccio),  .er_vccio_70(vccio),  .er_vccio_71(vccio),
    .er_vccio_72(vccio),  .er_vccio_73(vccio),  .er_vccio_74(vccio),  .er_vccio_75(vccio),  .er_vccio_76(vccio),  .er_vccio_77(vccio),
    .er_vccio_78(vccio),  .er_vccio_79(vccio),  .er_vccio_80(vccio),  .er_vccio_81(vccio),  .er_vccio_82(vccio),  .er_vccio_83(vccio),
    .er_vccio_84(vccio),  .er_vccio_85(vccio),  .er_vccio_86(vccio),  .er_vccio_87(vccio),  .er_vccio_88(vccio),  .er_vccio_89(vccio),
    .er_vccio_90(vccio),  .er_vccio_91(vccio),  .er_vccio_92(vccio),  .er_vccio_93(vccio),  .er_vccio_94(vccio),  .er_vccio_95(vccio),
    .er_vccio_96(vccio),  .er_vccio_97(vccio),  .er_vccio_98(vccio),  .er_vccio_99(vccio),  .er_vccio_100(vccio),  .er_vccio_101(vccio),
    .er_vccio_102(vccio),  .er_vccio_103(vccio),  .er_vccio_104(vccio),  .er_vccio_105(vccio),  .er_vccio_106(vccio),  .er_vccio_107(vccio),
    .er_vccio_108(vccio),  .er_vccio_109(vccio),  .er_vccio_110(vccio),  .er_vccio_111(vccio),  .er_vccio_112(vccio),  .er_vccio_113(vccio),
    .er_vccio_114(vccio),  .er_vccio_115(vccio),  .er_vccio_116(vccio),  .er_vccio_117(vccio),  .er_vccio_118(vccio),  .er_vccio_119(vccio),
    .er_vccio_120(vccio),  .er_vccio_121(vccio),  .er_vccio_122(vccio),  .er_vccio_123(vccio),  .er_vccio_124(vccio),  .er_vccio_125(vccio),
    .er_vccio_126(vccio),  .er_vccio_127(vccio),  .er_vccio_128(vccio),  .er_vccio_129(vccio),  .er_vccio_130(vccio),  .er_vccio_131(vccio),
    .er_vccio_132(vccio),  .er_vccio_133(vccio),  .er_vccio_134(vccio),  .er_vccio_135(vccio),  .er_vccio_136(vccio),  .er_vccio_137(vccio),
    .er_vccio_138(vccio),  .er_vccio_139(vccio),  .er_vccio_140(vccio),  .er_vccio_141(vccio),  .er_vccio_142(vccio),  .er_vccio_143(vccio),
    .er_vccio_144(vccio),  .er_vccio_145(vccio),  .er_vccio_146(vccio),  .er_vccio_147(vccio),  .er_vccio_148(vccio),  .er_vccio_149(vccio),
    .er_vccio_150(vccio),  .er_vccio_151(vccio),  .er_vccio_152(vccio),  .er_vccio_153(vccio),  .er_vccio_154(vccio),  .er_vccio_155(vccio),
    .er_vccio_156(vccio),  .er_vccio_157(vccio),  .er_vccio_158(vccio),  .er_vccio_159(vccio),  .er_vccio_160(vccio),  .er_vccio_161(vccio),
    .er_vccio_162(vccio),  .er_vccio_163(vccio),  .er_vccio_164(vccio),  .er_vccio_165(vccio),  .er_vccio_166(vccio),  .er_vccio_167(vccio),
    .er_vccio_168(vccio),  .er_vccio_169(vccio),  .er_vccio_170(vccio),  .er_vccio_171(vccio),  .er_vccio_172(vccio),  .er_vccio_173(vccio),
    .er_vccio_174(vccio),  .er_vccio_175(vccio),  .er_vccio_176(vccio),  .er_vccio_177(vccio),  .er_vccio_178(vccio),  .er_vccio_179(vccio),
    .er_vccio_180(vccio),  .er_vccio_181(vccio),  .er_vccio_182(vccio),  .er_vccio_183(vccio),  .er_vccio_184(vccio),  .er_vccio_185(vccio),
    .er_vccio_186(vccio),  .er_vccio_187(vccio),  .er_vccio_188(vccio),  .er_vccio_189(vccio),  .er_vccio_190(vccio),  .er_vccio_191(vccio),
    .er_vccio_192(vccio),  .er_vccio_193(vccio),  .er_vccio_194(vccio),  .er_vccio_195(vccio),  .er_vccio_196(vccio),  .er_vccio_197(vccio),
    .er_vccio_198(vccio),  .er_vccio_199(vccio),  .er_vccio_200(vccio),  .er_vccio_201(vccio),  .er_vccio_202(vccio),  .er_vccio_203(vccio),
    .er_vccio_204(vccio),  .er_vccio_205(vccio),

    .er_vccfwdio_0(vccfwdio),  .er_vccfwdio_1(vccfwdio),  .er_vccfwdio_2(vccfwdio),  .er_vccfwdio_3(vccfwdio),  .er_vccfwdio_4(vccfwdio),
    .er_vccfwdio_5(vccfwdio),  .er_vccfwdio_6(vccfwdio),  .er_vccfwdio_7(vccfwdio),  .er_vccfwdio_8(vccfwdio),  .er_vccfwdio_9(vccfwdio),
    .er_vccfwdio_10(vccfwdio),  .er_vccfwdio_11(vccfwdio),

    .er_vdd1p8_0(vdd1p8),  .er_vdd1p8_1(vdd1p8),  .er_vdd1p8_2(vdd1p8),  .er_vdd1p8_3(vdd1p8),

    .er_vddc_0(vddc),  .er_vddc_1(vddc),  .er_vddc_2(vddc),  .er_vddc_3(vddc),  .er_vddc_4(vddc),

    .er_vss_0(vss),  .er_vss_1(vss),  .er_vss_2(vss),  .er_vss_3(vss),  .er_vss_4(vss),  .er_vss_5(vss),  .er_vss_6(vss),
    .er_vss_7(vss),  .er_vss_8(vss),  .er_vss_9(vss),  .er_vss_10(vss),  .er_vss_11(vss),  .er_vss_12(vss),  .er_vss_13(vss),
    .er_vss_14(vss),  .er_vss_15(vss),  .er_vss_16(vss),  .er_vss_17(vss),  .er_vss_18(vss),  .er_vss_19(vss),  .er_vss_20(vss),
    .er_vss_21(vss),  .er_vss_22(vss),  .er_vss_23(vss),  .er_vss_24(vss),  .er_vss_25(vss),  .er_vss_26(vss),  .er_vss_27(vss),
    .er_vss_28(vss),  .er_vss_29(vss),  .er_vss_30(vss),  .er_vss_31(vss),  .er_vss_32(vss),  .er_vss_33(vss),  .er_vss_34(vss),
    .er_vss_35(vss),  .er_vss_36(vss),  .er_vss_37(vss),  .er_vss_38(vss),  .er_vss_39(vss),  .er_vss_40(vss),  .er_vss_41(vss),
    .er_vss_42(vss),  .er_vss_43(vss),  .er_vss_44(vss),  .er_vss_45(vss),  .er_vss_46(vss),  .er_vss_47(vss),  .er_vss_48(vss),
    .er_vss_49(vss),  .er_vss_50(vss),  .er_vss_51(vss),  .er_vss_52(vss),  .er_vss_53(vss),  .er_vss_54(vss),  .er_vss_55(vss),
    .er_vss_56(vss),  .er_vss_57(vss),  .er_vss_58(vss),  .er_vss_59(vss),  .er_vss_60(vss),  .er_vss_61(vss),  .er_vss_62(vss),
    .er_vss_63(vss),  .er_vss_64(vss),  .er_vss_65(vss),  .er_vss_66(vss),  .er_vss_67(vss),  .er_vss_68(vss),  .er_vss_69(vss),
    .er_vss_70(vss),  .er_vss_71(vss),  .er_vss_72(vss),  .er_vss_73(vss),  .er_vss_74(vss),  .er_vss_75(vss),  .er_vss_76(vss),
    .er_vss_77(vss),  .er_vss_78(vss),  .er_vss_79(vss),  .er_vss_80(vss),  .er_vss_81(vss),  .er_vss_82(vss),  .er_vss_83(vss),
    .er_vss_84(vss),  .er_vss_85(vss),  .er_vss_86(vss),  .er_vss_87(vss),  .er_vss_88(vss),  .er_vss_89(vss),  .er_vss_90(vss),
    .er_vss_91(vss),  .er_vss_92(vss),  .er_vss_93(vss),  .er_vss_94(vss),  .er_vss_95(vss),  .er_vss_96(vss),  .er_vss_97(vss),
    .er_vss_98(vss),  .er_vss_99(vss),  .er_vss_100(vss),  .er_vss_101(vss),  .er_vss_102(vss),  .er_vss_103(vss),  .er_vss_104(vss),
    .er_vss_105(vss),  .er_vss_106(vss),  .er_vss_107(vss),  .er_vss_108(vss),  .er_vss_109(vss),  .er_vss_110(vss),  .er_vss_111(vss),
    .er_vss_112(vss),  .er_vss_113(vss),  .er_vss_114(vss),  .er_vss_115(vss),  .er_vss_116(vss),  .er_vss_117(vss),  .er_vss_118(vss),
    .er_vss_119(vss),  .er_vss_120(vss),  .er_vss_121(vss),  .er_vss_122(vss),  .er_vss_123(vss),  .er_vss_124(vss),  .er_vss_125(vss),
    .er_vss_126(vss),  .er_vss_127(vss),  .er_vss_128(vss),  .er_vss_129(vss),  .er_vss_130(vss),  .er_vss_131(vss),  .er_vss_132(vss),
    .er_vss_133(vss),  .er_vss_134(vss),  .er_vss_135(vss),  .er_vss_136(vss),  .er_vss_137(vss),  .er_vss_138(vss),  .er_vss_139(vss),
    .er_vss_140(vss),  .er_vss_141(vss),  .er_vss_142(vss),  .er_vss_143(vss),  .er_vss_144(vss),  .er_vss_145(vss),  .er_vss_146(vss),
    .er_vss_147(vss),  .er_vss_148(vss),  .er_vss_149(vss),  .er_vss_150(vss),  .er_vss_151(vss),  .er_vss_152(vss),  .er_vss_153(vss),
    .er_vss_154(vss),  .er_vss_155(vss),  .er_vss_156(vss),  .er_vss_157(vss),  .er_vss_158(vss),  .er_vss_159(vss),  .er_vss_160(vss),
    .er_vss_161(vss),  .er_vss_162(vss),  .er_vss_163(vss),  .er_vss_164(vss),  .er_vss_165(vss),  .er_vss_166(vss),  .er_vss_167(vss),
    .er_vss_168(vss),  .er_vss_169(vss),  .er_vss_170(vss),  .er_vss_171(vss),  .er_vss_172(vss),  .er_vss_173(vss),  .er_vss_174(vss),
    .er_vss_175(vss),  .er_vss_176(vss),  .er_vss_177(vss),  .er_vss_178(vss),  .er_vss_179(vss),  .er_vss_180(vss),  .er_vss_181(vss),
    .er_vss_182(vss),  .er_vss_183(vss),  .er_vss_184(vss),  .er_vss_185(vss),  .er_vss_186(vss),  .er_vss_187(vss),  .er_vss_188(vss),
    .er_vss_189(vss),  .er_vss_190(vss),  .er_vss_191(vss),  .er_vss_192(vss),  .er_vss_193(vss),  .er_vss_194(vss),  .er_vss_195(vss),
    .er_vss_196(vss),  .er_vss_197(vss),  .er_vss_198(vss),  .er_vss_199(vss),  .er_vss_200(vss),  .er_vss_201(vss),  .er_vss_202(vss),
    .er_vss_203(vss),  .er_vss_204(vss),  .er_vss_205(vss),  .er_vss_206(vss),  .er_vss_207(vss),  .er_vss_208(vss),  .er_vss_209(vss),
    .er_vss_210(vss),  .er_vss_211(vss),  .er_vss_212(vss),  .er_vss_213(vss),  .er_vss_214(vss),  .er_vss_215(vss),  .er_vss_216(vss),
    .er_vss_217(vss),  .er_vss_218(vss),  .er_vss_219(vss),  .er_vss_220(vss),  .er_vss_221(vss),  .er_vss_222(vss),  .er_vss_223(vss),
    .er_vss_224(vss),  .er_vss_225(vss),  .er_vss_226(vss),  .er_vss_227(vss),  .er_vss_228(vss),  .er_vss_229(vss),  .er_vss_230(vss),
    .er_vss_231(vss),  .er_vss_232(vss),  .er_vss_233(vss),  .er_vss_234(vss),  .er_vss_235(vss),  .er_vss_236(vss),  .er_vss_237(vss),
    .er_vss_238(vss),  .er_vss_239(vss),  .er_vss_240(vss),  .er_vss_241(vss),  .er_vss_242(vss),  .er_vss_243(vss),  .er_vss_244(vss),
    .er_vss_245(vss),  .er_vss_246(vss),  .er_vss_247(vss),  .er_vss_248(vss),  .er_vss_249(vss),  .er_vss_250(vss),  .er_vss_251(vss),
    .er_vss_252(vss),  .er_vss_253(vss),  .er_vss_254(vss),  .er_vss_255(vss),  .er_vss_256(vss),  .er_vss_257(vss),  .er_vss_258(vss),
    .er_vss_259(vss),  .er_vss_260(vss),  .er_vss_261(vss),  .er_vss_262(vss),  .er_vss_263(vss),  .er_vss_264(vss),  .er_vss_265(vss),
    .er_vss_266(vss),  .er_vss_267(vss),  .er_vss_268(vss),  .er_vss_269(vss),  .er_vss_270(vss),  .er_vss_271(vss),  .er_vss_272(vss),
    .er_vss_273(vss),  .er_vss_274(vss),  .er_vss_275(vss),  .er_vss_276(vss),  .er_vss_277(vss),  .er_vss_278(vss),  .er_vss_279(vss),
    .er_vss_280(vss),  .er_vss_281(vss),  .er_vss_282(vss),  .er_vss_283(vss),  .er_vss_284(vss),  .er_vss_285(vss),  .er_vss_286(vss),
    .er_vss_287(vss),  .er_vss_288(vss),  .er_vss_289(vss),  .er_vss_290(vss),  .er_vss_291(vss),  .er_vss_292(vss),  .er_vss_293(vss),
    .er_vss_294(vss),  .er_vss_295(vss),  .er_vss_296(vss),  .er_vss_297(vss),  .er_vss_298(vss),  .er_vss_299(vss),  .er_vss_300(vss),
    .er_vss_301(vss),  .er_vss_302(vss),  .er_vss_303(vss),  .er_vss_304(vss),  .er_vss_305(vss),  .er_vss_306(vss),  .er_vss_307(vss),
    .er_vss_308(vss),  .er_vss_309(vss),  .er_vss_310(vss),  .er_vss_311(vss),  .er_vss_312(vss),  .er_vss_313(vss),  .er_vss_314(vss),
    .er_vss_315(vss),  .er_vss_316(vss),  .er_vss_317(vss),  .er_vss_318(vss),  .er_vss_319(vss),  .er_vss_320(vss),  .er_vss_321(vss),
    .er_vss_322(vss),  .er_vss_323(vss),  .er_vss_324(vss),  .er_vss_325(vss),  .er_vss_326(vss),  .er_vss_327(vss),  .er_vss_328(vss),
    .er_vss_329(vss),  .er_vss_330(vss),  .er_vss_331(vss),  .er_vss_332(vss),  .er_vss_333(vss),  .er_vss_334(vss),  .er_vss_335(vss),
    .er_vss_336(vss),  .er_vss_337(vss),  .er_vss_338(vss),  .er_vss_339(vss),  .er_vss_340(vss),  .er_vss_341(vss),  .er_vss_342(vss),
    .er_vss_343(vss),  .er_vss_344(vss),  .er_vss_345(vss),  .er_vss_346(vss),  .er_vss_347(vss),  .er_vss_348(vss),  .er_vss_349(vss),
    .er_vss_350(vss),  .er_vss_351(vss),  .er_vss_352(vss),  .er_vss_353(vss),  .er_vss_354(vss),  .er_vss_355(vss),  .er_vss_356(vss),
    .er_vss_357(vss),  .er_vss_358(vss),  .er_vss_359(vss),  .er_vss_360(vss),  .er_vss_361(vss),  .er_vss_362(vss),  .er_vss_363(vss),
    .er_vss_364(vss),  .er_vss_365(vss),  .er_vss_366(vss),  .er_vss_367(vss),  .er_vss_368(vss),  .er_vss_369(vss),  .er_vss_370(vss),
    .er_vss_371(vss),  .er_vss_372(vss),  .er_vss_373(vss),  .er_vss_374(vss),  .er_vss_375(vss),  .er_vss_376(vss),  .er_vss_377(vss),
    .er_vss_378(vss),  .er_vss_379(vss),  .er_vss_380(vss),  .er_vss_381(vss),  .er_vss_382(vss),  .er_vss_383(vss),
  

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
    // Power and Grounds
    .ma_vccio_0(vccio),   .ma_vccio_1(vccio),   .ma_vccio_2(vccio),   .ma_vccio_3(vccio),   .ma_vccio_4(vccio),   .ma_vccio_5(vccio),   .ma_vccio_6(vccio),   .ma_vccio_7(vccio),
    .ma_vccio_8(vccio),   .ma_vccio_9(vccio),   .ma_vccio_10(vccio),  .ma_vccio_11(vccio),  .ma_vccio_12(vccio),  .ma_vccio_13(vccio),  .ma_vccio_14(vccio),  .ma_vccio_15(vccio),
    .ma_vccio_16(vccio),  .ma_vccio_17(vccio),  .ma_vccio_18(vccio),  .ma_vccio_19(vccio),  .ma_vccio_20(vccio),  .ma_vccio_21(vccio),  .ma_vccio_22(vccio),  .ma_vccio_23(vccio),
    .ma_vccio_24(vccio),  .ma_vccio_25(vccio),  .ma_vccio_26(vccio),  .ma_vccio_27(vccio),  .ma_vccio_28(vccio),  .ma_vccio_29(vccio),  .ma_vccio_30(vccio),  .ma_vccio_31(vccio),
    .ma_vccio_32(vccio),  .ma_vccio_33(vccio),  .ma_vccio_34(vccio),  .ma_vccio_35(vccio),  .ma_vccio_36(vccio),  .ma_vccio_37(vccio),  .ma_vccio_38(vccio),  .ma_vccio_39(vccio),
    .ma_vccio_40(vccio),  .ma_vccio_41(vccio),  .ma_vccio_42(vccio),  .ma_vccio_43(vccio),  .ma_vccio_44(vccio),  .ma_vccio_45(vccio),  .ma_vccio_46(vccio),  .ma_vccio_47(vccio),
    .ma_vccio_48(vccio),  .ma_vccio_49(vccio),  .ma_vccio_50(vccio),  .ma_vccio_51(vccio),  .ma_vccio_52(vccio),  .ma_vccio_53(vccio),  .ma_vccio_54(vccio),  .ma_vccio_55(vccio),
    .ma_vccio_56(vccio),  .ma_vccio_57(vccio),  .ma_vccio_58(vccio),  .ma_vccio_59(vccio),  .ma_vccio_60(vccio),  .ma_vccio_61(vccio),  .ma_vccio_62(vccio),  .ma_vccio_63(vccio),
    .ma_vccio_64(vccio),  .ma_vccio_65(vccio),  .ma_vccio_66(vccio),  .ma_vccio_67(vccio),  .ma_vccio_68(vccio),  .ma_vccio_69(vccio),  .ma_vccio_70(vccio),  .ma_vccio_71(vccio),
    .ma_vccio_72(vccio),  .ma_vccio_73(vccio),  .ma_vccio_74(vccio),  .ma_vccio_75(vccio),  .ma_vccio_76(vccio),  .ma_vccio_77(vccio),  .ma_vccio_78(vccio),  .ma_vccio_79(vccio),
    .ma_vccio_80(vccio),  .ma_vccio_81(vccio),  .ma_vccio_82(vccio),  .ma_vccio_83(vccio),  .ma_vccio_84(vccio),  .ma_vccio_85(vccio),  .ma_vccio_86(vccio),  .ma_vccio_87(vccio),
    .ma_vccio_88(vccio),  .ma_vccio_89(vccio),  .ma_vccio_90(vccio),  .ma_vccio_91(vccio),  .ma_vccio_92(vccio),  .ma_vccio_93(vccio),

    .ma_vccfwdio_0(vccfwdio),  .ma_vccfwdio_1(vccfwdio),  .ma_vccfwdio_2(vccfwdio),  .ma_vccfwdio_3(vccfwdio),  .ma_vccfwdio_4(vccfwdio),

    .ma_vdd1p8_0(vdd1p8),  .ma_vdd1p8_1(vdd1p8),  .ma_vdd1p8_2(vdd1p8),

    .ma_vddc_0(vddc),.ma_vddc_1(vddc),.ma_vddc_2(vddc),.ma_vddc_3(vddc),

    .ma_vss_0(vss),  .ma_vss_1(vss),  .ma_vss_2(vss),  .ma_vss_3(vss),  .ma_vss_4(vss),  .ma_vss_5(vss),  .ma_vss_6(vss),
    .ma_vss_7(vss),  .ma_vss_8(vss),  .ma_vss_9(vss),  .ma_vss_10(vss),  .ma_vss_11(vss),  .ma_vss_12(vss),  .ma_vss_13(vss),
    .ma_vss_14(vss),  .ma_vss_15(vss),  .ma_vss_16(vss),  .ma_vss_17(vss),  .ma_vss_18(vss),  .ma_vss_19(vss),  .ma_vss_20(vss),
    .ma_vss_21(vss),  .ma_vss_22(vss),  .ma_vss_23(vss),  .ma_vss_24(vss),  .ma_vss_25(vss),  .ma_vss_26(vss),  .ma_vss_27(vss),
    .ma_vss_28(vss),  .ma_vss_29(vss),  .ma_vss_30(vss),  .ma_vss_31(vss),  .ma_vss_32(vss),  .ma_vss_33(vss),  .ma_vss_34(vss),
    .ma_vss_35(vss),  .ma_vss_36(vss),  .ma_vss_37(vss),  .ma_vss_38(vss),  .ma_vss_39(vss),  .ma_vss_40(vss),  .ma_vss_41(vss),
    .ma_vss_42(vss),  .ma_vss_43(vss),  .ma_vss_44(vss),  .ma_vss_45(vss),  .ma_vss_46(vss),  .ma_vss_47(vss),  .ma_vss_48(vss),
    .ma_vss_49(vss),  .ma_vss_50(vss),  .ma_vss_51(vss),  .ma_vss_52(vss),  .ma_vss_53(vss),  .ma_vss_54(vss),  .ma_vss_55(vss),
    .ma_vss_56(vss),  .ma_vss_57(vss),  .ma_vss_58(vss),  .ma_vss_59(vss),  .ma_vss_60(vss),  .ma_vss_61(vss),  .ma_vss_62(vss),
    .ma_vss_63(vss),  .ma_vss_64(vss),  .ma_vss_65(vss),  .ma_vss_66(vss),  .ma_vss_67(vss),  .ma_vss_68(vss),  .ma_vss_69(vss),
    .ma_vss_70(vss),  .ma_vss_71(vss),  .ma_vss_72(vss),  .ma_vss_73(vss),  .ma_vss_74(vss),  .ma_vss_75(vss),  .ma_vss_76(vss),
    .ma_vss_77(vss),  .ma_vss_78(vss),  .ma_vss_79(vss),  .ma_vss_80(vss),  .ma_vss_81(vss),  .ma_vss_82(vss),  .ma_vss_83(vss),
    .ma_vss_84(vss),  .ma_vss_85(vss),  .ma_vss_86(vss),  .ma_vss_87(vss),  .ma_vss_88(vss),  .ma_vss_89(vss),  .ma_vss_90(vss),
    .ma_vss_91(vss),  .ma_vss_92(vss),  .ma_vss_93(vss),  .ma_vss_94(vss),  .ma_vss_95(vss),  .ma_vss_96(vss),  .ma_vss_97(vss),
    .ma_vss_98(vss),  .ma_vss_99(vss),  .ma_vss_100(vss),  .ma_vss_101(vss),  .ma_vss_102(vss),  .ma_vss_103(vss),  .ma_vss_104(vss),
    .ma_vss_105(vss),  .ma_vss_106(vss),  .ma_vss_107(vss),  .ma_vss_108(vss),  .ma_vss_109(vss),  .ma_vss_110(vss),  .ma_vss_111(vss),
    .ma_vss_112(vss),  .ma_vss_113(vss),  .ma_vss_114(vss),  .ma_vss_115(vss),  .ma_vss_116(vss),  .ma_vss_117(vss),  .ma_vss_118(vss),
    .ma_vss_119(vss),  .ma_vss_120(vss),  .ma_vss_121(vss),  .ma_vss_122(vss),  .ma_vss_123(vss),  .ma_vss_124(vss),  .ma_vss_125(vss),
    .ma_vss_126(vss),  .ma_vss_127(vss),  .ma_vss_128(vss),  .ma_vss_129(vss),  .ma_vss_130(vss),  .ma_vss_131(vss),  .ma_vss_132(vss),
  

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
    // Power and Grounds
    .ve_vccio_0(vccio),   .ve_vccio_1(vccio),  .ve_vccio_2(vccio),  .ve_vccio_3(vccio),  .ve_vccio_4(vccio),  .ve_vccio_5(vccio),  .ve_vccio_6(vccio),  .ve_vccio_7(vccio),  .ve_vccio_8(vccio),  .ve_vccio_9(vccio),
    .ve_vccio_10(vccio),  .ve_vccio_11(vccio),  .ve_vccio_12(vccio),  .ve_vccio_13(vccio),  .ve_vccio_14(vccio),  .ve_vccio_15(vccio),  .ve_vccio_16(vccio),  .ve_vccio_17(vccio),  .ve_vccio_18(vccio),  .ve_vccio_19(vccio),
    .ve_vccio_20(vccio),  .ve_vccio_21(vccio),  .ve_vccio_22(vccio),  .ve_vccio_23(vccio),  .ve_vccio_24(vccio),  .ve_vccio_25(vccio),  .ve_vccio_26(vccio),  .ve_vccio_27(vccio),  .ve_vccio_28(vccio),  .ve_vccio_29(vccio),
    .ve_vccio_30(vccio),  .ve_vccio_31(vccio),  .ve_vccio_32(vccio),  .ve_vccio_33(vccio),  .ve_vccio_34(vccio),  .ve_vccio_35(vccio),  .ve_vccio_36(vccio),  .ve_vccio_37(vccio),  .ve_vccio_38(vccio),  .ve_vccio_39(vccio),  
    .ve_vccio_40(vccio),  .ve_vccio_41(vccio),  .ve_vccio_42(vccio),  .ve_vccio_43(vccio),  .ve_vccio_44(vccio),  .ve_vccio_45(vccio),  .ve_vccio_46(vccio),  .ve_vccio_47(vccio),  .ve_vccio_48(vccio),  .ve_vccio_49(vccio),
    .ve_vccio_50(vccio),  .ve_vccio_51(vccio),  .ve_vccio_52(vccio),  .ve_vccio_53(vccio),  .ve_vccio_54(vccio),  .ve_vccio_55(vccio),  .ve_vccio_56(vccio),  .ve_vccio_57(vccio),  .ve_vccio_58(vccio),  .ve_vccio_59(vccio),  
    .ve_vccio_60(vccio),  .ve_vccio_61(vccio),  .ve_vccio_62(vccio),  .ve_vccio_63(vccio),  .ve_vccio_64(vccio),  .ve_vccio_65(vccio),  .ve_vccio_66(vccio),  .ve_vccio_67(vccio),  .ve_vccio_68(vccio),  .ve_vccio_69(vccio),  
    .ve_vccio_70(vccio),  .ve_vccio_71(vccio),  .ve_vccio_72(vccio),  .ve_vccio_73(vccio),  .ve_vccio_74(vccio),  .ve_vccio_75(vccio),  .ve_vccio_76(vccio),  .ve_vccio_77(vccio),  .ve_vccio_78(vccio),  .ve_vccio_79(vccio),  
    .ve_vccio_80(vccio),  .ve_vccio_81(vccio),  .ve_vccio_82(vccio),  .ve_vccio_83(vccio),  .ve_vccio_84(vccio),  .ve_vccio_85(vccio),  .ve_vccio_86(vccio),  .ve_vccio_87(vccio),  .ve_vccio_88(vccio),  .ve_vccio_89(vccio),  
    .ve_vccio_90(vccio),  .ve_vccio_91(vccio),  .ve_vccio_92(vccio),  .ve_vccio_93(vccio),  .ve_vccio_94(vccio),  .ve_vccio_95(vccio),  .ve_vccio_96(vccio),  .ve_vccio_97(vccio),  .ve_vccio_98(vccio),  .ve_vccio_99(vccio),  
    .ve_vccio_100(vccio),  .ve_vccio_101(vccio),  .ve_vccio_102(vccio),  .ve_vccio_103(vccio),  .ve_vccio_104(vccio),  .ve_vccio_105(vccio),  .ve_vccio_106(vccio),  .ve_vccio_107(vccio),  .ve_vccio_108(vccio),
    .ve_vccio_109(vccio),  .ve_vccio_110(vccio),  .ve_vccio_111(vccio),  .ve_vccio_112(vccio),  .ve_vccio_113(vccio),  .ve_vccio_114(vccio),  .ve_vccio_115(vccio),  .ve_vccio_116(vccio),  .ve_vccio_117(vccio),
    .ve_vccio_118(vccio),  .ve_vccio_119(vccio),  .ve_vccio_120(vccio),  .ve_vccio_121(vccio),  .ve_vccio_122(vccio),  .ve_vccio_123(vccio),  .ve_vccio_124(vccio),  .ve_vccio_125(vccio),  .ve_vccio_126(vccio),

    .ve_vccfwdio_0(vccfwdio), .ve_vccfwdio_1(vccfwdio), .ve_vccfwdio_2(vccfwdio), .ve_vccfwdio_3(vccfwdio), .ve_vccfwdio_4(vccfwdio), .ve_vccfwdio_5(vccfwdio), .ve_vccfwdio_6(vccfwdio),

    .ve_vdd1p8_0(vdd1p8), .ve_vdd1p8_1(vdd1p8), .ve_vdd1p8_2(vdd1p8), .ve_vdd1p8_3(vdd1p8),

    .ve_vddc_0(vddc), .ve_vddc_1(vddc), .ve_vddc_2(vddc), .ve_vddc_3(vddc),

    .ve_vss_0(vss), .ve_vss_1(vss), .ve_vss_2(vss), .ve_vss_3(vss), .ve_vss_4(vss), .ve_vss_5(vss), .ve_vss_6(vss), .ve_vss_7(vss), .ve_vss_8(vss), .ve_vss_9(vss), .ve_vss_10(vss), .ve_vss_11(vss), .ve_vss_12(vss), .ve_vss_13(vss),
    .ve_vss_14(vss), .ve_vss_15(vss), .ve_vss_16(vss), .ve_vss_17(vss), .ve_vss_18(vss), .ve_vss_19(vss), .ve_vss_20(vss), .ve_vss_21(vss), .ve_vss_22(vss), .ve_vss_23(vss), .ve_vss_24(vss), .ve_vss_25(vss), .ve_vss_26(vss),
    .ve_vss_27(vss), .ve_vss_28(vss), .ve_vss_29(vss), .ve_vss_30(vss), .ve_vss_31(vss), .ve_vss_32(vss), .ve_vss_33(vss), .ve_vss_34(vss), .ve_vss_35(vss), .ve_vss_36(vss), .ve_vss_37(vss), .ve_vss_38(vss), .ve_vss_39(vss),
    .ve_vss_40(vss), .ve_vss_41(vss), .ve_vss_42(vss), .ve_vss_43(vss), .ve_vss_44(vss), .ve_vss_45(vss), .ve_vss_46(vss), .ve_vss_47(vss), .ve_vss_48(vss), .ve_vss_49(vss), .ve_vss_50(vss), .ve_vss_51(vss), .ve_vss_52(vss),
    .ve_vss_53(vss),  .ve_vss_54(vss), .ve_vss_55(vss), .ve_vss_56(vss), .ve_vss_57(vss), .ve_vss_58(vss), .ve_vss_59(vss), .ve_vss_60(vss), .ve_vss_61(vss), .ve_vss_62(vss), .ve_vss_63(vss), .ve_vss_64(vss), .ve_vss_65(vss),
    .ve_vss_66(vss), .ve_vss_67(vss), .ve_vss_68(vss), .ve_vss_69(vss), .ve_vss_70(vss), .ve_vss_71(vss), .ve_vss_72(vss), .ve_vss_73(vss), .ve_vss_74(vss), .ve_vss_75(vss), .ve_vss_76(vss), .ve_vss_77(vss), .ve_vss_78(vss),
    .ve_vss_79(vss), .ve_vss_80(vss), .ve_vss_81(vss), .ve_vss_82(vss), .ve_vss_83(vss), .ve_vss_84(vss), .ve_vss_85(vss), .ve_vss_86(vss), .ve_vss_87(vss), .ve_vss_88(vss), .ve_vss_89(vss), .ve_vss_90(vss), .ve_vss_91(vss),
    .ve_vss_92(vss), .ve_vss_93(vss), .ve_vss_94(vss), .ve_vss_95(vss), .ve_vss_96(vss), .ve_vss_97(vss), .ve_vss_98(vss), .ve_vss_99(vss), .ve_vss_100(vss), .ve_vss_101(vss), .ve_vss_102(vss), .ve_vss_103(vss), .ve_vss_104(vss),
    .ve_vss_105(vss), .ve_vss_106(vss), .ve_vss_107(vss), .ve_vss_108(vss), .ve_vss_109(vss), .ve_vss_110(vss), .ve_vss_111(vss), .ve_vss_112(vss), .ve_vss_113(vss), .ve_vss_114(vss), .ve_vss_115(vss), .ve_vss_116(vss), .ve_vss_117(vss),
    .ve_vss_118(vss), .ve_vss_119(vss), .ve_vss_120(vss), .ve_vss_121(vss), .ve_vss_122(vss), .ve_vss_123(vss), .ve_vss_124(vss), .ve_vss_125(vss), .ve_vss_126(vss), .ve_vss_127(vss), .ve_vss_128(vss), .ve_vss_129(vss), .ve_vss_130(vss),
    .ve_vss_131(vss), .ve_vss_132(vss), .ve_vss_133(vss), .ve_vss_134(vss), .ve_vss_135(vss), .ve_vss_136(vss), .ve_vss_137(vss), .ve_vss_138(vss), .ve_vss_139(vss), .ve_vss_140(vss), .ve_vss_141(vss), .ve_vss_142(vss), .ve_vss_143(vss),
    .ve_vss_144(vss), .ve_vss_145(vss), .ve_vss_146(vss), .ve_vss_147(vss), .ve_vss_148(vss), .ve_vss_149(vss), .ve_vss_150(vss), .ve_vss_151(vss), .ve_vss_152(vss), .ve_vss_153(vss), .ve_vss_154(vss),  .ve_vss_155(vss), .ve_vss_156(vss),
    .ve_vss_157(vss), .ve_vss_158(vss), .ve_vss_159(vss), .ve_vss_160(vss), .ve_vss_161(vss), .ve_vss_162(vss), .ve_vss_163(vss), .ve_vss_164(vss), .ve_vss_165(vss), .ve_vss_166(vss), .ve_vss_167(vss), .ve_vss_168(vss), .ve_vss_169(vss),
    .ve_vss_170(vss),  .ve_vss_171(vss), .ve_vss_172(vss), .ve_vss_173(vss), .ve_vss_174(vss), .ve_vss_175(vss), .ve_vss_176(vss),
  

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

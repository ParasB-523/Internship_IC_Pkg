# Interposer Routing TCL Script
# 29-04-2025

open_block interposer.ndm:interposer.design
link_block
set_app_options -list {flip_chip.route.connect_via_center {true}}




# Set Routing Rule Script - 1

set_routing_rule {ve_ucie32b_rxckRD ve_ucie32b_rxckn ve_ucie32b_rxckp ve_ucie32b_rxcksb ve_ucie32b_rxcksbRD ve_ucie32b_rxdataRD[0] ve_ucie32b_rxdataRD[1] ve_ucie32b_rxdata[0] ve_ucie32b_rxdata[1] ve_ucie32b_rxdata[2] ve_ucie32b_rxdata[3] ve_ucie32b_rxdata[4] ve_ucie32b_rxdata[5] ve_ucie32b_rxdata[6] ve_ucie32b_rxdata[7] ve_ucie32b_rxdata[8] ve_ucie32b_rxdata[9] ve_ucie32b_rxdata[10] ve_ucie32b_rxdata[11] ve_ucie32b_rxdata[12] ve_ucie32b_rxdata[13] ve_ucie32b_rxdata[14] ve_ucie32b_rxdata[15] ve_ucie32b_rxdata[16] ve_ucie32b_rxdata[17] ve_ucie32b_rxdata[18] ve_ucie32b_rxdata[19] ve_ucie32b_rxdata[20] ve_ucie32b_rxdata[21] ve_ucie32b_rxdata[22] ve_ucie32b_rxdata[23] ve_ucie32b_rxdata[24] ve_ucie32b_rxdata[25] ve_ucie32b_rxdata[26] ve_ucie32b_rxdata[27] ve_ucie32b_rxdata[28] ve_ucie32b_rxdata[29] ve_ucie32b_rxdata[30] ve_ucie32b_rxdata[31] ve_ucie32b_rxdatasb ve_ucie32b_rxdatasbRD ve_ucie32b_rxtrk ve_ucie32b_rxvld ve_ucie32b_rxvldRD ve_ucie32b_txckRD ve_ucie32b_txckn ve_ucie32b_txckp ve_ucie32b_txcksb ve_ucie32b_txcksbRD ve_ucie32b_txdataRD[0] ve_ucie32b_txdataRD[1] ve_ucie32b_txdata[0] ve_ucie32b_txdata[1] ve_ucie32b_txdata[2] ve_ucie32b_txdata[3] ve_ucie32b_txdata[4] ve_ucie32b_txdata[5] ve_ucie32b_txdata[6] ve_ucie32b_txdata[7] ve_ucie32b_txdata[8] ve_ucie32b_txdata[9] ve_ucie32b_txdata[10] ve_ucie32b_txdata[11] ve_ucie32b_txdata[12] ve_ucie32b_txdata[13] ve_ucie32b_txdata[14] ve_ucie32b_txdata[15] ve_ucie32b_txdata[16] ve_ucie32b_txdata[17] ve_ucie32b_txdata[18] ve_ucie32b_txdata[19] ve_ucie32b_txdata[20] ve_ucie32b_txdata[21] ve_ucie32b_txdata[22] ve_ucie32b_txdata[23] ve_ucie32b_txdata[24] ve_ucie32b_txdata[25] ve_ucie32b_txdata[26] ve_ucie32b_txdata[27] ve_ucie32b_txdata[28] ve_ucie32b_txdata[29] ve_ucie32b_txdata[30] ve_ucie32b_txdata[31] ve_ucie32b_txdatasb ve_ucie32b_txdatasbRD ve_ucie32b_txtrk ve_ucie32b_txvld ve_ucie32b_txvldRD} -min_routing_layer metal5 -max_routing_layer metal6

set_routing_rule {ma_ucie64b_rxckRD ma_ucie64b_rxckn ma_ucie64b_rxckp ma_ucie64b_rxcksb ma_ucie64b_rxcksbRD ma_ucie64b_rxdataRD[0] ma_ucie64b_rxdataRD[1] ma_ucie64b_rxdataRD[2] ma_ucie64b_rxdataRD[3] ma_ucie64b_rxdata[0] ma_ucie64b_rxdata[1] ma_ucie64b_rxdata[2] ma_ucie64b_rxdata[3] ma_ucie64b_rxdata[4] ma_ucie64b_rxdata[5] ma_ucie64b_rxdata[6] ma_ucie64b_rxdata[7] ma_ucie64b_rxdata[8] ma_ucie64b_rxdata[9] ma_ucie64b_rxdata[10] ma_ucie64b_rxdata[11] ma_ucie64b_rxdata[12] ma_ucie64b_rxdata[13] ma_ucie64b_rxdata[14] ma_ucie64b_rxdata[15] ma_ucie64b_rxdata[16] ma_ucie64b_rxdata[17] ma_ucie64b_rxdata[18] ma_ucie64b_rxdata[19] ma_ucie64b_rxdata[20] ma_ucie64b_rxdata[21] ma_ucie64b_rxdata[22] ma_ucie64b_rxdata[23] ma_ucie64b_rxdata[24] ma_ucie64b_rxdata[25] ma_ucie64b_rxdata[26] ma_ucie64b_rxdata[27] ma_ucie64b_rxdata[28] ma_ucie64b_rxdata[29] ma_ucie64b_rxdata[30] ma_ucie64b_rxdata[31] ma_ucie64b_rxdata[32] ma_ucie64b_rxdata[33] ma_ucie64b_rxdata[34] ma_ucie64b_rxdata[35] ma_ucie64b_rxdata[36] ma_ucie64b_rxdata[37] ma_ucie64b_rxdata[38] ma_ucie64b_rxdata[39] ma_ucie64b_rxdata[40] ma_ucie64b_rxdata[41] ma_ucie64b_rxdata[42] ma_ucie64b_rxdata[43] ma_ucie64b_rxdata[44] ma_ucie64b_rxdata[45] ma_ucie64b_rxdata[46] ma_ucie64b_rxdata[47] ma_ucie64b_rxdata[48] ma_ucie64b_rxdata[49] ma_ucie64b_rxdata[50] ma_ucie64b_rxdata[51] ma_ucie64b_rxdata[52] ma_ucie64b_rxdata[53] ma_ucie64b_rxdata[54] ma_ucie64b_rxdata[55] ma_ucie64b_rxdata[56] ma_ucie64b_rxdata[57] ma_ucie64b_rxdata[58] ma_ucie64b_rxdata[59] ma_ucie64b_rxdata[60] ma_ucie64b_rxdata[61] ma_ucie64b_rxdata[62] ma_ucie64b_rxdata[63] ma_ucie64b_rxdatasb ma_ucie64b_rxdatasbRD ma_ucie64b_rxtrk ma_ucie64b_rxvld ma_ucie64b_rxvldRD ma_ucie64b_txckRD ma_ucie64b_txckn ma_ucie64b_txckp ma_ucie64b_txcksb ma_ucie64b_txcksbRD ma_ucie64b_txdataRD[0] ma_ucie64b_txdataRD[1] ma_ucie64b_txdataRD[2] ma_ucie64b_txdataRD[3] ma_ucie64b_txdata[0] ma_ucie64b_txdata[1] ma_ucie64b_txdata[2] ma_ucie64b_txdata[3] ma_ucie64b_txdata[4] ma_ucie64b_txdata[5] ma_ucie64b_txdata[6] ma_ucie64b_txdata[7] ma_ucie64b_txdata[8] ma_ucie64b_txdata[9] ma_ucie64b_txdata[10] ma_ucie64b_txdata[11] ma_ucie64b_txdata[12] ma_ucie64b_txdata[13] ma_ucie64b_txdata[14] ma_ucie64b_txdata[15] ma_ucie64b_txdata[16] ma_ucie64b_txdata[17] ma_ucie64b_txdata[18] ma_ucie64b_txdata[19] ma_ucie64b_txdata[20] ma_ucie64b_txdata[21] ma_ucie64b_txdata[22] ma_ucie64b_txdata[23] ma_ucie64b_txdata[24] ma_ucie64b_txdata[25] ma_ucie64b_txdata[26] ma_ucie64b_txdata[27] ma_ucie64b_txdata[28] ma_ucie64b_txdata[29] ma_ucie64b_txdata[30] ma_ucie64b_txdata[31] ma_ucie64b_txdata[32] ma_ucie64b_txdata[33] ma_ucie64b_txdata[34] ma_ucie64b_txdata[35] ma_ucie64b_txdata[36] ma_ucie64b_txdata[37] ma_ucie64b_txdata[38] ma_ucie64b_txdata[39] ma_ucie64b_txdata[40] ma_ucie64b_txdata[41] ma_ucie64b_txdata[42] ma_ucie64b_txdata[43] ma_ucie64b_txdata[44] ma_ucie64b_txdata[45] ma_ucie64b_txdata[46] ma_ucie64b_txdata[47] ma_ucie64b_txdata[48] ma_ucie64b_txdata[49] ma_ucie64b_txdata[50] ma_ucie64b_txdata[51] ma_ucie64b_txdata[52] ma_ucie64b_txdata[53] ma_ucie64b_txdata[54] ma_ucie64b_txdata[55] ma_ucie64b_txdata[56] ma_ucie64b_txdata[57] ma_ucie64b_txdata[58] ma_ucie64b_txdata[59] ma_ucie64b_txdata[60] ma_ucie64b_txdata[61] ma_ucie64b_txdata[62] ma_ucie64b_txdata[63] ma_ucie64b_txdatasb ma_ucie64b_txdatasbRD ma_ucie64b_txtrk ma_ucie64b_txvld ma_ucie64b_txvldRD} -min_routing_layer metal5 -max_routing_layer metal6




# Set Routing Rule Script - 2

set_routing_rule {ve_ucie32b_rxckRD ve_ucie32b_rxckn ve_ucie32b_rxckp ve_ucie32b_rxcksb ve_ucie32b_rxcksbRD ve_ucie32b_rxdataRD[0] ve_ucie32b_rxdataRD[1] ve_ucie32b_rxdata[0] ve_ucie32b_rxdata[1] ve_ucie32b_rxdata[2] ve_ucie32b_rxdata[3] ve_ucie32b_rxdata[4] ve_ucie32b_rxdata[5] ve_ucie32b_rxdata[6] ve_ucie32b_rxdata[7] ve_ucie32b_rxdata[8] ve_ucie32b_rxdata[9] ve_ucie32b_rxdata[10] ve_ucie32b_rxdata[11] ve_ucie32b_rxdata[12] ve_ucie32b_rxdata[13] ve_ucie32b_rxdata[14] ve_ucie32b_rxdata[15] ve_ucie32b_rxdata[16] ve_ucie32b_rxdata[17] ve_ucie32b_rxdata[18] ve_ucie32b_rxdata[19] ve_ucie32b_rxdata[20] ve_ucie32b_rxdata[21] ve_ucie32b_rxdata[22] ve_ucie32b_rxdata[23] ve_ucie32b_rxdata[24] ve_ucie32b_rxdata[25] ve_ucie32b_rxdata[26] ve_ucie32b_rxdata[27] ve_ucie32b_rxdata[28] ve_ucie32b_rxdata[29] ve_ucie32b_rxdata[30] ve_ucie32b_rxdata[31] ve_ucie32b_rxdatasb ve_ucie32b_rxdatasbRD ve_ucie32b_rxtrk ve_ucie32b_rxvld ve_ucie32b_rxvldRD ve_ucie32b_txckRD ve_ucie32b_txckn ve_ucie32b_txckp ve_ucie32b_txcksb ve_ucie32b_txcksbRD ve_ucie32b_txdataRD[0] ve_ucie32b_txdataRD[1] ve_ucie32b_txdata[0] ve_ucie32b_txdata[1] ve_ucie32b_txdata[2] ve_ucie32b_txdata[3] ve_ucie32b_txdata[4] ve_ucie32b_txdata[5] ve_ucie32b_txdata[6] ve_ucie32b_txdata[7] ve_ucie32b_txdata[8] ve_ucie32b_txdata[9] ve_ucie32b_txdata[10] ve_ucie32b_txdata[11] ve_ucie32b_txdata[12] ve_ucie32b_txdata[13] ve_ucie32b_txdata[14] ve_ucie32b_txdata[15] ve_ucie32b_txdata[16] ve_ucie32b_txdata[17] ve_ucie32b_txdata[18] ve_ucie32b_txdata[19] ve_ucie32b_txdata[20] ve_ucie32b_txdata[21] ve_ucie32b_txdata[22] ve_ucie32b_txdata[23] ve_ucie32b_txdata[24] ve_ucie32b_txdata[25] ve_ucie32b_txdata[26] ve_ucie32b_txdata[27] ve_ucie32b_txdata[28] ve_ucie32b_txdata[29] ve_ucie32b_txdata[30] ve_ucie32b_txdata[31] ve_ucie32b_txdatasb ve_ucie32b_txdatasbRD ve_ucie32b_txtrk ve_ucie32b_txvld ve_ucie32b_txvldRD} -min_routing_layer metal4 -max_routing_layer metal6

set_routing_rule {ma_ucie64b_rxckRD ma_ucie64b_rxckn ma_ucie64b_rxckp ma_ucie64b_rxcksb ma_ucie64b_rxcksbRD ma_ucie64b_rxdataRD[0] ma_ucie64b_rxdataRD[1] ma_ucie64b_rxdataRD[2] ma_ucie64b_rxdataRD[3] ma_ucie64b_rxdata[0] ma_ucie64b_rxdata[1] ma_ucie64b_rxdata[2] ma_ucie64b_rxdata[3] ma_ucie64b_rxdata[4] ma_ucie64b_rxdata[5] ma_ucie64b_rxdata[6] ma_ucie64b_rxdata[7] ma_ucie64b_rxdata[8] ma_ucie64b_rxdata[9] ma_ucie64b_rxdata[10] ma_ucie64b_rxdata[11] ma_ucie64b_rxdata[12] ma_ucie64b_rxdata[13] ma_ucie64b_rxdata[14] ma_ucie64b_rxdata[15] ma_ucie64b_rxdata[16] ma_ucie64b_rxdata[17] ma_ucie64b_rxdata[18] ma_ucie64b_rxdata[19] ma_ucie64b_rxdata[20] ma_ucie64b_rxdata[21] ma_ucie64b_rxdata[22] ma_ucie64b_rxdata[23] ma_ucie64b_rxdata[24] ma_ucie64b_rxdata[25] ma_ucie64b_rxdata[26] ma_ucie64b_rxdata[27] ma_ucie64b_rxdata[28] ma_ucie64b_rxdata[29] ma_ucie64b_rxdata[30] ma_ucie64b_rxdata[31] ma_ucie64b_rxdata[32] ma_ucie64b_rxdata[33] ma_ucie64b_rxdata[34] ma_ucie64b_rxdata[35] ma_ucie64b_rxdata[36] ma_ucie64b_rxdata[37] ma_ucie64b_rxdata[38] ma_ucie64b_rxdata[39] ma_ucie64b_rxdata[40] ma_ucie64b_rxdata[41] ma_ucie64b_rxdata[42] ma_ucie64b_rxdata[43] ma_ucie64b_rxdata[44] ma_ucie64b_rxdata[45] ma_ucie64b_rxdata[46] ma_ucie64b_rxdata[47] ma_ucie64b_rxdata[48] ma_ucie64b_rxdata[49] ma_ucie64b_rxdata[50] ma_ucie64b_rxdata[51] ma_ucie64b_rxdata[52] ma_ucie64b_rxdata[53] ma_ucie64b_rxdata[54] ma_ucie64b_rxdata[55] ma_ucie64b_rxdata[56] ma_ucie64b_rxdata[57] ma_ucie64b_rxdata[58] ma_ucie64b_rxdata[59] ma_ucie64b_rxdata[60] ma_ucie64b_rxdata[61] ma_ucie64b_rxdata[62] ma_ucie64b_rxdata[63] ma_ucie64b_rxdatasb ma_ucie64b_rxdatasbRD ma_ucie64b_rxtrk ma_ucie64b_rxvld ma_ucie64b_rxvldRD ma_ucie64b_txckRD ma_ucie64b_txckn ma_ucie64b_txckp ma_ucie64b_txcksb ma_ucie64b_txcksbRD ma_ucie64b_txdataRD[0] ma_ucie64b_txdataRD[1] ma_ucie64b_txdataRD[2] ma_ucie64b_txdataRD[3] ma_ucie64b_txdata[0] ma_ucie64b_txdata[1] ma_ucie64b_txdata[2] ma_ucie64b_txdata[3] ma_ucie64b_txdata[4] ma_ucie64b_txdata[5] ma_ucie64b_txdata[6] ma_ucie64b_txdata[7] ma_ucie64b_txdata[8] ma_ucie64b_txdata[9] ma_ucie64b_txdata[10] ma_ucie64b_txdata[11] ma_ucie64b_txdata[12] ma_ucie64b_txdata[13] ma_ucie64b_txdata[14] ma_ucie64b_txdata[15] ma_ucie64b_txdata[16] ma_ucie64b_txdata[17] ma_ucie64b_txdata[18] ma_ucie64b_txdata[19] ma_ucie64b_txdata[20] ma_ucie64b_txdata[21] ma_ucie64b_txdata[22] ma_ucie64b_txdata[23] ma_ucie64b_txdata[24] ma_ucie64b_txdata[25] ma_ucie64b_txdata[26] ma_ucie64b_txdata[27] ma_ucie64b_txdata[28] ma_ucie64b_txdata[29] ma_ucie64b_txdata[30] ma_ucie64b_txdata[31] ma_ucie64b_txdata[32] ma_ucie64b_txdata[33] ma_ucie64b_txdata[34] ma_ucie64b_txdata[35] ma_ucie64b_txdata[36] ma_ucie64b_txdata[37] ma_ucie64b_txdata[38] ma_ucie64b_txdata[39] ma_ucie64b_txdata[40] ma_ucie64b_txdata[41] ma_ucie64b_txdata[42] ma_ucie64b_txdata[43] ma_ucie64b_txdata[44] ma_ucie64b_txdata[45] ma_ucie64b_txdata[46] ma_ucie64b_txdata[47] ma_ucie64b_txdata[48] ma_ucie64b_txdata[49] ma_ucie64b_txdata[50] ma_ucie64b_txdata[51] ma_ucie64b_txdata[52] ma_ucie64b_txdata[53] ma_ucie64b_txdata[54] ma_ucie64b_txdata[55] ma_ucie64b_txdata[56] ma_ucie64b_txdata[57] ma_ucie64b_txdata[58] ma_ucie64b_txdata[59] ma_ucie64b_txdata[60] ma_ucie64b_txdata[61] ma_ucie64b_txdata[62] ma_ucie64b_txdata[63] ma_ucie64b_txdatasb ma_ucie64b_txdatasbRD ma_ucie64b_txtrk ma_ucie64b_txvld ma_ucie64b_txvldRD} -min_routing_layer metal4 -max_routing_layer metal6









# Create PG Mesh Scripts

#man create_pg_mesh_pattern
#man set_pg_strategy

#1
create_pg_mesh_pattern power_mesh\
		      -layers {{{vertical_layer: metal4} {width: 0.15}\
		               {pitch: 50} {offset: 20}}\
			       {{horizontal_layer: metal3} {width: 0.15}\
			        {pitch: 50} {offset: 20}}}



#2
create_pg_mesh_pattern power_mesh\
		      -layers {{{vertical_layer: metal3} {width: 0.15}\
		               {pitch: 50} {offset: 20}}\
			       {{horizontal_layer: metal2} {width: 0.15}\
			        {pitch: 50} {offset: 20}}}


# Track Width - 0.7 um

#3
create_pg_mesh_pattern power_mesh\
		      -layers {{{vertical_layer: metal4} {width: 0.7}\
		               {pitch: 50} {offset: 20}}\
			       {{horizontal_layer: metal3} {width: 0.7}\
			        {pitch: 50} {offset: 20}}}



#4
create_pg_mesh_pattern power_mesh\
		      -layers {{{vertical_layer: metal3} {width: 0.7}\
		               {pitch: 50} {offset: 20}}\
			       {{horizontal_layer: metal2} {width: 0.7}\
			        {pitch: 50} {offset: 20}}}





# Create PG Region Script

#man create_pg_region

create_pg_region PG_REGION -polygon {{700 18} {700 5000} {1722 5000} {1722 18}}



# Set PG Strategy Script

set_pg_strategy PG_Mesh -pg_region PG_REGION -pattern {{name: power_mesh} {nets: vss vccio vccfwdio vddc vdd1p8}}




# Compiling PG mesh

#compile_pg power_mesh
#man compile_pg

compile_pg -strategies PG_Mesh



# Create Vertical Connection Scripts

#1
#man create_vertical_connection

create_vertical_connection -lib_cells {C4BUMP} -net {vss} -layer metal3 -route_layers {metal2}
create_vertical_connection -lib_cells {C4BUMP} -net {vddc} -layer metal3 -route_layers {metal2}
create_vertical_connection -lib_cells {C4BUMP} -net {vdd1p8} -layer metal3 -route_layers {metal2}
create_vertical_connection -lib_cells {C4BUMP} -net {vccfwdio} -layer metal3 -route_layers {metal2}
create_vertical_connection -lib_cells {C4BUMP} -net {vccio} -layer metal3 -route_layers {metal2}


#2
#man create_vertical_connection

create_vertical_connection -lib_cells {C4BUMP} -net {vss} -layer metal2 -route_layers {metal1}
create_vertical_connection -lib_cells {C4BUMP} -net {vddc} -layer metal2 -route_layers {metal1}
create_vertical_connection -lib_cells {C4BUMP} -net {vdd1p8} -layer metal2 -route_layers {metal1}
create_vertical_connection -lib_cells {C4BUMP} -net {vccfwdio} -layer metal2 -route_layers {metal1}
create_vertical_connection -lib_cells {C4BUMP} -net {vccio} -layer metal2 -route_layers {metal1}





# UCIe Routing Scripts


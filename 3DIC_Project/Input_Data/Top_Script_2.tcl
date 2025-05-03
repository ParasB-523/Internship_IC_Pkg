# TCL Script for Top Model Configuration - 2
# 03-05-2025

create_lib -technology tech.tf -ref_libs {C4BUMP.ndm/ UBUMP.ndm/ interposer.ndm/ eridani.ndm/ maia.ndm/ vega.ndm/} top_alnitak_2.ndm
create_block top_alnitak_2 -origin_type bottom_left -dimensions {2422 5018} -design_type 3dic
link_block

read_verilog top_alnitak_2.v
link_block

set_cell_location -coordinates {790 2608.38} -orientation MX -z_offset 1 [get_cells -design [current_block] {eridani_inst}]
set_cell_location -coordinates {790 263} -orientation MX -z_offset 1 [get_cells -design [current_block] {maia_inst}]
set_cell_location -coordinates {1235.48 263} -orientation MX -z_offset 1 [get_cells -design [current_block] {vega_inst}]
set_cell_location -coordinates {0 0} -orientation MX -mirror -z_offset 0 [get_cells -design [current_block] {interposer_inst}]

report_3d_chip_placement

save_lib

create_3d_mirror_bumps -from eridani_inst -to interposer_inst -ref_cell UBUMP -prefix inst_
create_3d_mirror_bumps -from maia_inst -to interposer_inst -ref_cell UBUMP -prefix inst_
create_3d_mirror_bumps -from vega_inst -to interposer_inst -ref_cell UBUMP -prefix inst_
assign_3d_interchip_nets
save_block -hierarchical top_alnitak_2.ndm:top_alnitak_2

save_lib; close_lib

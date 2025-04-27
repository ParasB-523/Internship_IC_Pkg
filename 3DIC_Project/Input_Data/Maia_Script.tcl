# TCL Script for Maia Die Creation
# 27-04-2025

create_lib -technology tech.tf -ref_libs UBUMP.ndm maia.ndm
create_block maia -origin_type bottom_left -design_type die -dimensions {396.52 2273.9}
link_block
read_design_io -file_name_list Maia_BM_coords.csv -create_ports -power {vddc vccio vdd1p8 vccfwdio} -ground vss -die_origin {0 0}
save_lib; close_lib

open_block -edit maia.ndm:maia.design
link_block

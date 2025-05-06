# TCL Script for Interposer Die Creation
# 27-04-2025

create_lib -technology tech.tf -ref_libs {C4BUMP.ndm UBUMP.ndm} interposer.ndm
create_block interposer -origin_type bottom_left -design_type interposer -dimensions {2422 5018}
link_block
read_design_io -file_name_list C4_Bumpmap_coords.csv -create_ports -power {vddc vccio vdd1p8 vccfwdio} -ground vss -die_origin {0 0}
save_lib; close_lib

open_block -edit interposer.ndm:interposer.design
link_block

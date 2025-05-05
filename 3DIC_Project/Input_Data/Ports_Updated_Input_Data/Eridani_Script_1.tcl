# TCL Script for Eridani Die Creation
# 27-04-2025

create_lib -technology tech.tf -ref_libs UBUMP.ndm eridani.ndm
create_block eridani -origin_type bottom_left -design_type die -dimensions {842 2146.62}
link_block
read_design_io -file_name_list {Ports_Updated_CSV/PO_Eridani_BM_coords.csv} -create_ports -power {vddc vccio vdd1p8 vccfwdio} -ground vss -die_origin {0 0}
save_lib; close_lib

open_block -edit eridani.ndm:eridani.design
link_block

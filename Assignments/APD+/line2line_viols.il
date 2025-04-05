/*This is the SKILL Code to get the L2L Spacing DRC Violations printed in the Terminal Window from the mitikas_with_two_DRC_viols.mcm file.*/

printf("L2L Spacing DRC Violations from the mitikas_with_two_DRC_viols.mcm file are listed below.\n")
d = axlDBGetDesign()
L2L_DRCs = outfile("L2L_DRCs_mitikas.txt")
drc_list = d->drcs
printf("Type of Violation	Location\n")
fprintf(L2L_DRCs "Type of Violation	Location\n")
foreach(temp_drc drc_list 
	case(temp_drc->name 
	    ("Line to Line Spacing" printf("%L\t%L\n", temp_drc->name temp_drc->xy)
				    fprintf(L2L_DRCs "%L\t%L\n", temp_drc->name temp_drc->xy))
	    (t )
	    )
	)
close(L2L_DRCs)

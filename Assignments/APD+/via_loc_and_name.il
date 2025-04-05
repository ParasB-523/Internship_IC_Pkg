/*This is the SKILL Code to get the Via Locations and Padstack name(present in a Bounding Box drawn by the user) in the Terminal Window and Text File from the mitikas.mcm file.*/

printf("Via Locations and Padstack name in the Bounding Box drawn in the mitikas.mcm file are listed below.\n")
d = axlDBGetDesign()
VIA_L = outfile("Vias_mitikas.txt")
fprintf(VIA_L "Via Locations and Padstack name in the Bounding Box drawn in the mitikas.mcm file are listed below.\n")
axlSetFindFilter( ?enabled "VIAS"
		  ?onButtons "VIAS" )
axlSingleSelectBox(nil)
v_list = axlGetSelSet()
printf("Padstack Used	Location\n")
fprintf(VIA_L "Padstack Used	Location\n")
j=1
foreach(v_sam v_list 
	printf("%L.\t%L\t%L\n",j v_sam->name v_sam->xy)
	fprintf(VIA_L "%L.\t%L\t%L\n",j v_sam->name v_sam->xy)
	j++)
printf("Total number of Vias Found in the bBox = %L\n", axlGetSelSetCount())
fprintf(VIA_L "Total number of Vias Found in the bBox = %L\n", axlGetSelSetCount())
close(VIA_L)

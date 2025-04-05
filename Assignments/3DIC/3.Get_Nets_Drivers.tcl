# This is the TCL Script to Get Nets and the connected Ports and Pins of the Net from the current Design Database.

# Set File Variable to write the Result in the File.
set po [open "3.Nets_and_Drivers.txt" w+] 

# Set Counter. Iterations to write each Net and its Drivers in File.
set i 0 
puts $po "SL. NO.  NETS\t\t\tNET DRIVERS\n"
foreach_in_collection net $NETS { puts $po "[incr i].\tNET : [get_object_name $net]"
				  set ports [get_ports -filter "direction == inout" [all_connected $net]]
				  foreach_in_collection p $ports {puts $po "                        Driver : [get_object_name $p]\t\t --- Inout Port"}
				}

puts $po "\n\nThere are [sizeof_collection $NETS] Nets."

# Close the File.
close $po 	


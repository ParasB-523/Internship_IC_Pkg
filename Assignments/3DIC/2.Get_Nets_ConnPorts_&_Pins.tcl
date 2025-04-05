# This is the TCL Script to Get Nets and the connected Ports and Pins of the Net from the current Design Database.

# Set File Variable to write the Result in the File.
set po [open "2.Nets_Conn_Pins_Ports.txt" w+] 

# Set Counter. Iterations to write each Net and its connected Ports and Pins in File.
set i 0 
puts $po "SL. NO.  NETS\t\t\tCONNECTED PORTS AND PINS\n"
foreach_in_collection x $NETS { puts $po "[incr i].\t[get_object_name $x]"
				set pap [all_connected $x]
				foreach_in_collection p $pap {puts $po "\t\t\t\t[get_object_name $p]"}
				puts $po "\n"
			      }

puts $po "\n\nThere are [sizeof_collection $NETS] Nets."

# Close the File.
close $po 	

# This is the TCL Script to Get Input the and Output Ports from the current Design Database.

# Set Input Collection. Set Output Collection.
set ALLINP [all_inputs]                                                               
set ALLOUTP [all_outputs]   
                                                          
# Set File Variable to write the ports in the File.
set po [open "Ports.txt" w+]                                                          

# Set Counter. Iterations to write each Input Port in File.
set i 0                                                                               
puts $po "Section 1: INPUT PORTS\n"
foreach_in_collection x $ALLINP {puts $po "[incr i]. [get_object_name $x]"}           
puts $po "There are [sizeof_collection $ALLINP] Input Ports.\n\n"

# Set Counter. Iterations to write each Output Port in File.
set i 0                                                                               
puts $po "Section 2: OUTPUT PORTS\n"
foreach_in_collection x $ALLOUTP {puts $po "[incr i]. [get_object_name $x]"}          
puts $po "There are [sizeof_collection $ALLOUTP] Output Ports.\n\n"

# Close the File.
close $po 									     


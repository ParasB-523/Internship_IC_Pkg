import pandas as pd                                                                                 # type: ignore
import numpy as np                                                                                  # type: ignore

def generate_bump_data(input_excel, output_excel, x_pitch=31.82,y_pitch=31.82):                     # PITCH = 31.82 for Dies Horizontally and Vertically,
                                                                                                    # Pitch = 45 Diagonally
#def generate_bump_data(input_excel, output_excel, x_pitch=59,y_pitch=59):                           # For Interposer, Pitch = 118, hence due to Grid Map with 
                                                                                                     # one cell gap in b/w Pitch is halved

#def generate_bump_data(input_excel, output_excel, output_txt, x_pitch=120, y_pitch=120):            # PITCH = 120 FOR DIES
#def generate_bump_data(input_excel, output_excel, x_pitch=650,y_pitch=650):                         # PITCH = 650 FOR BGA                                                                                                     
    """
    Generates a staggered bump matrix with calculated coordinates and assigns VDD or VSS as net names, 
    reading from an input Excel file that contains bump names.

    Parameters:
        input_excel (str): Path to the input Excel file containing bump names or empty cells.
        output_excel (str): Path to save the output Excel file.
        output_txt (str): Path to save the output TXT file.
        x_pitch (float): Horizontal pitch between bumps in micrometers.
        y_pitch (float): Vertical pitch between bumps in micrometers.
    """
    try:
        # Read the Excel file that contains bump names (or empty cells)
        df_input = pd.read_excel(input_excel, header=None)

        # Initialize lists to store bump data                                                       # For Ubumps and C4Bumps only
        Reference_name = []
        Ubump_inst = []                                                                             # For UBumps only
        #C4bump_inst = []                                                                           # For C4Bumps only
        X_origin = []
        Y_origin = []
        Orientation = []
        Port_name = []
        Net_name = []

        # Initialize lists to store bump data                                                       # For Ubumps on Substrate and Balls only (SDP)
        #bump_names = []
        #padstack = []
        #x_coords = []
        #y_coords = []
        #rotation = []
        #pin_uses = []        
        #net_names = []

        # Initialize counter variables for unique instance naming                                   # For Die and Interposer csv creation
        i_vss = i_vccfwdio = i_vddc = i_vccio = i_vdd1p8 = i_db = 0                                 # Count for Power and Ground Pins

        # Generate bump data based on the Excel content
        for row in range(df_input.shape[0]):                                                        # Iterate through rows
            for col in range(df_input.shape[1]):                                                    # Iterate through columns
                cell_value = df_input.iloc[row, col]

                # If the cell is not empty, generate bump data
                if pd.notna(cell_value) and cell_value != '':                                       # If the cell has a value (not NaN or empty string)
                    # Calculate x and y coordinates
                    x = col * x_pitch + 12                                                          # For Dies csv creation only
                    y = row * y_pitch + 12                                                          # For Dies csv creation only

                    #x = col * x_pitch + 114                                                        # For Interposer csv creation only
                    #y = row * y_pitch + 114                                                        # For Interposer csv creation only
                    
                    #x = col * x_pitch                                                              # For Ubumps on Substrate and Balls only (SDP)
                    #y = row * y_pitch                                                              # For Ubumps on Substrate and Balls only (SDP)

                    # Assigning Reference Library and Orientation
                    #Reference_name = "C4BUMP"                                                      # For Interposer csv creation only
                    Reference_name = "UBUMP"                                                        # For Dies csv creation only
                    Orientation = "R0"
                   
                    # Assigning Bump, Net and Port Name                                             # For Dies csv creation only
                    if cell_value == "vss" :
                        bump_name = 've_' + cell_value + "_" + str(i_vss)
                        port_name = bump_name
                        i_vss += 1
                    elif cell_value == "vddc" :
                        bump_name = 've_' + cell_value + "_" + str(i_vddc)
                        port_name = bump_name
                        i_vddc += 1
                    elif cell_value == "vdd1p8" :
                        bump_name = 've_' + cell_value + "_" + str(i_vdd1p8)
                        port_name = bump_name
                        i_vdd1p8 += 1
                    elif cell_value == "vccio" :
                        bump_name = 've_' + cell_value + "_" + str(i_vccio)
                        port_name = bump_name
                        i_vccio += 1
                    elif cell_value == "vccfwdio" :
                        bump_name = 've_' + cell_value + "_" + str(i_vccfwdio)
                        port_name = bump_name
                        i_vccfwdio += 1        
                    else :
                        bump_name = cell_value 
                        port_name = cell_value           

                    # Assign net names based on cell value
                    net_name = cell_value
                    #port_name = cell_value



                    # Assigning Bump, Net and Port Name                                             # For Interposer csv creation only
                    #if cell_value == 'db':                                                         # This segment is for Interposerr csv creation only
                    #    port_name = ""
                    #    net_name = ""
                    #    bump_name = cell_value + "_" + str(i_db)  
                    #    i_db += 1 
                    #else :
                    #    #port_name = cell_value
                    #    net_name = cell_value
                    #    if cell_value == "vss" :
                    #        bump_name = 've_' + cell_value + "_" + str(i_vss)
                    #        port_name = bump_name
                    #        i_vss += 1
                    #    elif cell_value == "vddc" :
                    #        bump_name = 've_' + cell_value + "_" + str(i_vddc)
                    #        port_name = bump_name
                    #        i_vddc += 1
                    #    elif cell_value == "vdd1p8" :
                    #        bump_name = 've_' + cell_value + "_" + str(i_vdd1p8)
                    #        port_name = bump_name
                    #        i_vdd1p8 += 1
                    #    elif cell_value == "vccio" :
                    #        bump_name = 've_' + cell_value + "_" + str(i_vccio)
                    #        port_name = bump_name
                    #        i_vccio += 1
                    #    elif cell_value == "vccfwdio" :
                    #        bump_name = 've_' + cell_value + "_" + str(i_vccfwdio)
                    #        port_name = bump_name
                    #        i_vccfwdio += 1        
                    #    else :
                    #        bump_name = cell_value 
                    #        port_name = cell_value           

                    # Append data to lists
                    Ubump_inst.append(bump_name)                                                    # For Dies csv creation only
                    #C4bump_inst.append(bump_name)                                                  # For Interposer csv creation only
                    X_origin.append(x)
                    Y_origin.append(y)
                    Net_name.append(net_name)
                    Port_name.append(port_name)


                    # Assigning Padstack and Orientation                                            # For Ubumps on Substrate and Balls only (SDP) 
                    #padstack = "DIE_PAD"                                                            # This line is for Die txt file Creation only
                    #padstack = "BGA_PAD"                                                           # This line is for BGA txt file Creation only
                    #rotation = 0

                    # Assign net names and pin_use based on cell value
                    #if cell_value == "vdd":
                    #    net_name = "VDD"
                    #    pin_use = "POWER"
                    #elif cell_value == "vss":
                    #    net_name = "VSS"
                    #    pin_use = "GROUND"
                    #else:
                    #    # For other values, leave net_name and pin_use empty
                    #    net_name = ""
                    #    pin_use = "BI"

                    # Generate bump name
                    #bump_name = f"BUMP_{row+1}_{col+1}"

        # Create a DataFrame to store the bump matrix data
        df_output = pd.DataFrame({
            "Reference_name" : Reference_name,
            "Ubump_inst": Ubump_inst,                                                               # For UBumps only
            #"C4_inst" : C4bump_inst,                                                               # For C4Bumps only
            "X_origin": X_origin,
            "Y_origin": Y_origin,
            "Orientation" : Orientation,
            "Port_name": Port_name,
            "Net_name": Net_name,
        })

        # Append data to lists                                                                      # For Ubumps on Substrate and Balls only (SDP) 
        #bump_names.append(bump_name)
        #x_coords.append(x)
        #y_coords.append(y)
        #net_names.append(net_name)
        #pin_uses.append(pin_use)

        # Write to Excel
        df_output.to_excel(output_excel, index=False)
        print(f"Bump matrix successfully written to {output_excel}")

        # Write to TXT
        #with open(output_txt, 'w') as f:
        #   for index, row in df_output.iterrows():
        #        f.write(f"{row['Bump Name']}, {row['X-Coordinate (um)']}, {row['Y-Coordinate (um)']}, {row['Pin Use']}, {row['Net Name']}\n")
        #print(f"Bump matrix successfully written to {output_txt}")

    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage
input_excel_path = "F:/KLETU/SEM 8/Internship Project/Alnitak -- Seniors Design Resource/Alnitak/Bump_map/Vega_BM_edited.xlsx"  # Path to the input Excel file
output_excel_path = "F:/KLETU/SEM 8/Internship Project/Alnitak -- Seniors Design Resource/Alnitak/Bump_map/Ports_Updated_CSV/PO_Vega_BM_coords.xlsx"  # Path to the output Excel file
#output_txt_path = "D:\\PBB\\KLETU\\SEM 7\\Senior Design Project\\DIE1_data.txt"    # Path to the output TXT file

#generate_bump_data(input_excel_path, output_excel_path, output_txt_path)
generate_bump_data(input_excel_path, output_excel_path)

import pandas as pd                                                                                 # type: ignore
import numpy as np                                                                                  # type: ignore

def generate_bump_data(input_excel, output_excel, x_pitch=59,y_pitch=59):                           # For Interposer, Pitch = 118, hence due to Grid Map with 
                                                                                                    # one cell gap in b/w Pitch is halved
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

        # Initialize lists to store bump data
        Reference_name = []
        C4bump_inst = []
        X_origin = []
        Y_origin = []
        Orientation = []
        Port_name = []        
        Net_name = []
       
        # Initialize counter variables for unique instance naming
        i_vss = i_vccfwdio = i_vddc = i_vccio = i_vdd1p8 = i_db = 0                                 # Count for Power and Ground Pins

        # Generate bump data based on the Excel content
        for row in range(df_input.shape[0]):                                                        # Iterate through rows
            for col in range(df_input.shape[1]):                                                    # Iterate through columns
                cell_value = df_input.iloc[row, col]

                # If the cell is not empty, generate bump data
                if pd.notna(cell_value) and cell_value != '':                                       # If the cell has a value (not NaN or empty string)
                    # Calculate x and y coordinates
                    x = col * x_pitch + 114
                    y = row * y_pitch + 114

                    # Assigning Reference Library and Orientation
                    Reference_name = "C4BUMP"
                    Orientation = "R0"

                    # Assigning Bump, Net and Port Name
                    if cell_value == 'db':
                        bump_name = cell_value + "_" + str(i_db)  
                        port_name = ""
                        net_name = ""
                        i_db += 1 
                    else :
                        #port_name = cell_value
                        net_name = cell_value
                        if cell_value == "vss" :
                            bump_name = cell_value + "_" + str(i_vss)
                            port_name = bump_name
                            i_vss += 1
                        elif cell_value == "vddc" :
                            bump_name = cell_value + "_" + str(i_vddc)
                            port_name = bump_name
                            i_vddc += 1
                        elif cell_value == "vdd1p8" :
                            bump_name = cell_value + "_" + str(i_vdd1p8)
                            port_name = bump_name
                            i_vdd1p8 += 1
                        elif cell_value == "vccio" :
                            bump_name = cell_value + "_" + str(i_vccio)
                            port_name = bump_name
                            i_vccio += 1
                        elif cell_value == "vccfwdio" :
                            bump_name = cell_value + "_" + str(i_vccfwdio)
                            port_name = bump_name
                            i_vccfwdio += 1        
                        else :
                            bump_name = cell_value 
                            port_name = cell_value           

                    # Append data to lists
                    C4bump_inst.append(bump_name)
                    X_origin.append(x)
                    Y_origin.append(y)
                    Net_name.append(net_name)
                    Port_name.append(port_name)

        # Create a DataFrame to store the bump matrix data
        df_output = pd.DataFrame({
            "Reference_name" : Reference_name,
            "C4_inst" : C4bump_inst,
            "X_origin": X_origin,
            "Y_origin": Y_origin,
            "Orientation" : Orientation,
            "Port_name": Port_name,
            "Net_name": Net_name,
        })

        # Write to Excel
        df_output.to_excel(output_excel, index=False)
        print(f"Bump matrix successfully written to {output_excel}")

    except Exception as e:
        print(f"An error occurred: {e}")

# Path to the input Excel file
input_excel_path = "F:/KLETU/SEM 8/Internship Project/Alnitak -- Seniors Design Resource/Alnitak/Bump_map/C4_Bumpmap_edited.xlsx"
# Path to the output Excel file
output_excel_path = "F:/KLETU/SEM 8/Internship Project/Alnitak -- Seniors Design Resource/Alnitak/Bump_map/Ports_Updated_CSV/PO_C4_Bumpmap_coords.xlsx"

generate_bump_data(input_excel_path, output_excel_path)

#
# ZedBoard HDMI I2C Controller
#

set_property PACKAGE_PIN AA18 [get_ports {zed_hdmi_iic_scl_io}]
#set_property IOSTANDARD LVCMOS33 [get_ports {zed_hdmi_iic_scl_io}]
set_property SLEW SLOW [get_ports {zed_hdmi_iic_scl_io}]
set_property DRIVE 8 [get_ports {zed_hdmi_iic_scl_io}]

set_property PACKAGE_PIN Y16 [get_ports {zed_hdmi_iic_sda_io}]
#set_property IOSTANDARD LVCMOS33 [get_ports {zed_hdmi_iic_sda_io}]
set_property SLEW SLOW [get_ports {zed_hdmi_iic_sda_io}]
set_property DRIVE 8 [get_ports {zed_hdmi_iic_sda_io}]

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {vid_locked}];  # "LD0"

# ----------------------------------------------------------------------------
# HDMI Output - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN W18  [get_ports {vid_clk}];  # "HD-CLK"
set_property PACKAGE_PIN Y13  [get_ports {vid_data[0]}];  # "HD-D0"
set_property PACKAGE_PIN AA13 [get_ports {vid_data[1]}];  # "HD-D1"
set_property PACKAGE_PIN W13  [get_ports {vid_data[10]}];  # "HD-D10"
set_property PACKAGE_PIN W15  [get_ports {vid_data[11]}];  # "HD-D11"
set_property PACKAGE_PIN V15  [get_ports {vid_data[12]}];  # "HD-D12"
set_property PACKAGE_PIN U17  [get_ports {vid_data[13]}];  # "HD-D13"
set_property PACKAGE_PIN V14  [get_ports {vid_data[14]}];  # "HD-D14"
set_property PACKAGE_PIN V13  [get_ports {vid_data[15]}];  # "HD-D15"
set_property PACKAGE_PIN AA14 [get_ports {vid_data[2]}];  # "HD-D2"
set_property PACKAGE_PIN Y14  [get_ports {vid_data[3]}];  # "HD-D3"
set_property PACKAGE_PIN AB15 [get_ports {vid_data[4]}];  # "HD-D4"
set_property PACKAGE_PIN AB16 [get_ports {vid_data[5]}];  # "HD-D5"
set_property PACKAGE_PIN AA16 [get_ports {vid_data[6]}];  # "HD-D6"
set_property PACKAGE_PIN AB17 [get_ports {vid_data[7]}];  # "HD-D7"
set_property PACKAGE_PIN AA17 [get_ports {vid_data[8]}];  # "HD-D8"
set_property PACKAGE_PIN Y15  [get_ports {vid_data[9]}];  # "HD-D9"
set_property PACKAGE_PIN U16  [get_ports {vid_active_video}];  # "HD-DE"
set_property PACKAGE_PIN V17  [get_ports {vid_hsync}];  # "HD-HSYNC"
#set_property PACKAGE_PIN W16  [get_ports {HD_INT}];  # "HD-INT"
#set_property PACKAGE_PIN AA18 [get_ports {HD_SCL}];  # "HD-SCL"
#set_property PACKAGE_PIN Y16  [get_ports {HD_SDA}];  # "HD-SDA"
#set_property PACKAGE_PIN U15  [get_ports {HD_SPDIF}];  # "HD-SPDIF"
#set_property PACKAGE_PIN Y18  [get_ports {HD_SPDIFO}];  # "HD-SPDIFO"
set_property PACKAGE_PIN W17  [get_ports {vid_vsync}];  # "HD-VSYNC"



# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
##set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
##set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
##set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
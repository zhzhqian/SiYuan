## Buttons
set_property -dict {PACKAGE_PIN AL10 IOSTANDARD LVCMOS12} [get_ports cpu_reset]

## UART
set_property -dict {PACKAGE_PIN AL17 IOSTANDARD LVCMOS12} [get_ports tx]
set_property -dict {PACKAGE_PIN AH17 IOSTANDARD LVCMOS12} [get_ports rx]

## LEDs
set_property -dict {PACKAGE_PIN AL11 IOSTANDARD LVCMOS12} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN AL13 IOSTANDARD LVCMOS12} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN AK13 IOSTANDARD LVCMOS12} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN AE15 IOSTANDARD LVCMOS12} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN AM8  IOSTANDARD LVCMOS12} [get_ports {led[4]}]
set_property -dict {PACKAGE_PIN AM9  IOSTANDARD LVCMOS12} [get_ports {led[5]}]
set_property -dict {PACKAGE_PIN AM10 IOSTANDARD LVCMOS12} [get_ports {led[6]}]
set_property -dict {PACKAGE_PIN AM11 IOSTANDARD LVCMOS12} [get_ports {led[7]}]

## Switches
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS18} [get_ports {sw[0]}]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS18} [get_ports {sw[1]}]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS18} [get_ports {sw[2]}]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS18} [get_ports {sw[3]}]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS18} [get_ports {sw[4]}]
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS18} [get_ports {sw[5]}]
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS18} [get_ports {sw[6]}]
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS18} [get_ports {sw[7]}]

## Fan Control
# set_property -dict {PACKAGE_PIN BA37 IOSTANDARD LVCMOS18} [get_ports fan_pwm]

#############################################
## SD Card (SPI)
#############################################
# set_property -dict {PACKAGE_PIN AN30 IOSTANDARD LVCMOS18} [get_ports spi_clk_o]
# set_property -dict {PACKAGE_PIN AT30 IOSTANDARD LVCMOS18} [get_ports spi_ss]
# set_property -dict {PACKAGE_PIN AR30 IOSTANDARD LVCMOS18} [get_ports spi_miso]
# set_property -dict {PACKAGE_PIN AP30 IOSTANDARD LVCMOS18} [get_ports spi_mosi]
## please copy over all contents of the XDC when it is merged with othe XDC files ##

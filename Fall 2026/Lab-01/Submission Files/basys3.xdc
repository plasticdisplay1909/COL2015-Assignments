## Switches

## AND GATE Input
### SW0, SW1 --> a,b
set_property PACKAGE_PIN V17 [get_ports {a}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {a}]
set_property PACKAGE_PIN V16 [get_ports {b}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {b}]
	
## OR GATE Input
### SW2, SW3 --> d,e
set_property PACKAGE_PIN W16 [get_ports {d}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {d}]
set_property PACKAGE_PIN W17 [get_ports {e}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {e}]
	
## NOT GATE Input
### SW4 --> g
set_property PACKAGE_PIN W15 [get_ports {g}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {g}]
	
## LEDs

## AND GATE Output
### LED0 --> c
set_property PACKAGE_PIN U16 [get_ports {c}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {c}]

## OR GATE Output
### LED1 --> f
set_property PACKAGE_PIN E19 [get_ports {f}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {f}]

## NOT GATE Output
### LED2 --> h
set_property PACKAGE_PIN U19 [get_ports {h}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {h}]





#=========================================================#
#=========================================================#
#           REST OF PART IS NOT USEFUL                    #
#=========================================================#
#=========================================================#

## Added just to remove error messages
#Configrations
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]



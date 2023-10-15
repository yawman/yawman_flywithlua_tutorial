-- show hover overs in control menu  
-- show button_sniffer.lua
-- also show a quarantine error, and a script stop error 

clear_all_button_assignments()

set_button_assignment(6, "sim/general/hat_switch_left") -- pov left
set_button_assignment(2, "sim/general/hat_switch_right") -- pov right
set_button_assignment(0, "sim/general/hat_switch_up") -- pov up 
set_button_assignment(4, "sim/general/hat_switch_down") -- pov down 

set_button_assignment(21, "sim/general/zoom_in") -- dpad up
set_button_assignment(23, "sim/general/zoom_out") -- dpad down

set_button_assignment(19, "sim/flight_controls/pitch_trim_down") -- wheel down 
set_button_assignment(20, "sim/flight_controls/pitch_trim_up") -- wheel up 

set_button_assignment(22, "sim/autopilot/heading_down") -- dpad left
set_button_assignment(24, "sim/autopilot/heading_up") -- dpad right 
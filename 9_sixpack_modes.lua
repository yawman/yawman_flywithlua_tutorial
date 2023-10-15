clear_all_button_assignments()

POV_UP = 0
POV_RIGHT = 2
POV_DOWN = 4
POV_LEFT = 6
THUMBSTICK_CLK = 8
SIXPACK_1 = 9
SIXPACK_2 = 10
SIXPACK_3 = 11
SIXPACK_4 = 12
SIXPACK_5 = 13
SIXPACK_6 = 14
POV_CENTER = 15
RIGHT_BUMPER = 16
DPAD_CENTER = 17
LEFT_BUMPER = 18
WHEEL_DOWN = 19
WHEEL_UP = 20
DPAD_UP = 21
DPAD_LEFT = 22
DPAD_DOWN = 23
DPAD_RIGHT = 24

function multipress_buttons() 

    sixpack_5_pressed = button(SIXPACK_5)
    sixpack_6_pressed = button(SIXPACK_6)

    if sixpack_5_pressed then 
        set_button_assignment(DPAD_DOWN, "sim/autopilot/heading_down")
        set_button_assignment(DPAD_UP, "sim/autopilot/heading_up")
    elseif sixpack_6_pressed then 
        set_button_assignment(DPAD_DOWN, "sim/autopilot/vertical_speed_down")
        set_button_assignment(DPAD_UP, "sim/autopilot/vertical_speed_up")
    else
        set_button_assignment(DPAD_UP, "sim/general/zoom_in")
        set_button_assignment(DPAD_DOWN, "sim/general/zoom_out")
    end

end 

set_button_assignment(POV_LEFT, "sim/general/hat_switch_left")
set_button_assignment(POV_RIGHT, "sim/general/hat_switch_right")
set_button_assignment(POV_UP, "sim/general/hat_switch_up")
set_button_assignment(POV_DOWN, "sim/general/hat_switch_down") 

do_every_draw("multipress_buttons()")

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

    left_bumper_pressed = button(LEFT_BUMPER)
    right_bumper_pressed = button(RIGHT_BUMPER)

    if left_bumper_pressed then 
        set_button_assignment(POV_LEFT, "sim/general/left")
        set_button_assignment(POV_RIGHT, "sim/general/right")
        set_button_assignment(POV_UP, "sim/general/up")
        set_button_assignment(POV_DOWN, "sim/general/down")

    elseif right_bumper_pressed then 
        set_button_assignment(POV_LEFT, "sim/autopilot/heading_down")
        set_button_assignment(POV_RIGHT, "sim/autopilot/heading_up")
        set_button_assignment(POV_UP, "sim/flight_controls/flaps_up")
        set_button_assignment(POV_DOWN, "sim/flight_controls/flaps_down")
        
    else -- no bumpers pressed 
        set_button_assignment(POV_LEFT, "sim/general/hat_switch_left")
        set_button_assignment(POV_RIGHT, "sim/general/hat_switch_right")
        set_button_assignment(POV_UP, "sim/general/hat_switch_up")
        set_button_assignment(POV_DOWN, "sim/general/hat_switch_down") 

    end
end 

-- buttons unaffected by modifiers 
set_button_assignment(DPAD_UP, "sim/general/zoom_in")
set_button_assignment(DPAD_DOWN, "sim/general/zoom_out")

set_button_assignment(WHEEL_DOWN, "sim/flight_controls/pitch_trim_down")
set_button_assignment(WHEEL_UP, "sim/flight_controls/pitch_trim_up") 

set_button_assignment(DPAD_LEFT, "sim/autopilot/heading_down")
set_button_assignment(DPAD_RIGHT, "sim/autopilot/heading_up")

-- the multipress_buttons() function will be called by the simulator on every frame 
do_every_frame("multipress_buttons()")

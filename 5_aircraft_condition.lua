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

function context_specific_buttons() 

    set_button_assignment(POV_LEFT, "sim/general/hat_switch_left")
    set_button_assignment(POV_RIGHT, "sim/general/hat_switch_right")
    
    set_button_assignment(DPAD_UP, "sim/general/zoom_in")
    set_button_assignment(DPAD_DOWN, "sim/general/zoom_out")

    set_button_assignment(DPAD_LEFT, "sim/autopilot/heading_down")
    set_button_assignment(DPAD_RIGHT, "sim/autopilot/heading_up")

    -- conditionally change what SIXPACK 4 button does depending if view is external or not 
    DataRef("is_external", "sim/graphics/view/view_is_external", "readonly")

    if is_external == 1 then 
        set_button_assignment(SIXPACK_4, "sim/view/default_view")
    else
        set_button_assignment(SIXPACK_4, "sim/view/chase")
    end 

    -- conditionally change how to trim down/trim up depending if it's a CESSNA 172 or BOEING 737 800 aircraft 
    if PLANE_ICAO == "C172" then
        set_button_assignment(WHEEL_DOWN, "sim/flight_controls/pitch_trim_down")
        set_button_assignment(WHEEL_UP, "sim/flight_controls/pitch_trim_up") 

        set_button_assignment(POV_UP, "sim/general/hat_switch_up")
        set_button_assignment(POV_DOWN, "sim/general/hat_switch_down") 

    elseif PLANE_ICAO == "B738" then 
        set_button_assignment(POV_UP, "sim/flight_controls/pitch_trim_down")
        set_button_assignment(POV_DOWN, "sim/flight_controls/pitch_trim_up") 
    end 

end 

clear_all_button_assignments()

-- the context_specific_buttons() function will be called by the simulator
-- repeatedly 
do_every_frame("context_specific_buttons()")

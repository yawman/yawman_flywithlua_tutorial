
function assign_axes() 

    clear_all_axis_assignments()

    STICK_X = 0 
    STICK_Y = 1
    POLE_RIGHT = 2 
    POLE_LEFT = 3
    RUDDER = 4
    SLIDER_LEFT = 5
    SLIDER_RIGHT = 6 

    set_axis_assignment(STICK_X, "roll", "normal" )
    set_axis_assignment(STICK_Y, "pitch", "normal" )
    set_axis_assignment(POLE_RIGHT, "mixture", "normal")
    set_axis_assignment(RUDDER, "yaw", "normal" )

    set_axis_assignment(SLIDER_RIGHT, "flaps", "reverse")

    if PLANE_ICAO == "C172" then
        set_axis_assignment(POLE_LEFT, "throttle", "reverse" )
        set_axis_assignment(SLIDER_LEFT, "prop", "normal")
    else
        set_axis_assignment(SLIDER_LEFT, "throttle", "reverse" )
        set_axis_assignment(POLE_LEFT, "prop", "normal")
    end 
    
    -- you can set other axes configurations
    set("sim/joystick/joystick_pitch_nullzone", 0.10)
    set("sim/joystick/joystick_roll_nullzone", 0.10)
    
end 

add_macro("Assign Yawman Axes", "assign_axes()")
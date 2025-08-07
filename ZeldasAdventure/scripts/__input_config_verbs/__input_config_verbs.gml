// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse_button() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    input_binding_key(vk_up),
            down:  input_binding_key(vk_down),
            left:  input_binding_key(vk_left),
            right: input_binding_key(vk_right),
            
            action1: input_binding_key(ord("Z")),
            action2: input_binding_key(ord("X")),
            inventory:  input_binding_key(ord("C")),
            map:  input_binding_key(ord("V")),
            menu:  input_binding_key(vk_escape),
			accept: input_binding_key(vk_enter),
			
			joyleft: undefined,
			joyright: undefined,
			joyup: undefined,
			joydown: undefined,
        },
        
        gamepad:
        {
            up:    input_binding_gamepad_button(gp_padu),
            down:  input_binding_gamepad_button(gp_padd),
            left:  input_binding_gamepad_button(gp_padl),
            right: input_binding_gamepad_button(gp_padr),
            
            action1:  input_binding_gamepad_button(gp_face1), //A Button
            action2:  input_binding_gamepad_button(gp_face2), //B Button
            inventory:  input_binding_gamepad_button(gp_face3), //X Button
            map:  input_binding_gamepad_button(gp_face4), //Y Button
            menu: input_binding_gamepad_button(gp_start),
			
			joyleft: input_binding_gamepad_axis(gp_axislh,true),
			joyright: input_binding_gamepad_axis(gp_axislh,false),
			joyup: input_binding_gamepad_axis(gp_axislv,true),
			joydown: input_binding_gamepad_axis(gp_axislv,false),
        },
        
        touch:
        {
			
            up:    input_binding_virtual_button(),
            down:  input_binding_virtual_button(),
            left:  input_binding_virtual_button(),
            right: input_binding_virtual_button(),
            
            action1:  input_binding_virtual_button(), //A Button
            action2:  input_binding_virtual_button(), //B Button
            inventory:  input_binding_virtual_button(), //X Button
            map:  input_binding_virtual_button(), //Y Button
            menu: input_binding_virtual_button(),
			
			joyleft: undefined,
			joyright: undefined,
			joyup: undefined,
			joydown: undefined,
        }
    };
}
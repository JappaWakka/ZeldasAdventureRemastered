// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
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
            
            action1: input_binding_key(vk_control),
            action2: input_binding_key(vk_alt),
            inventory:  input_binding_key(vk_space),
            menu:  input_binding_key(vk_escape),
			accept: input_binding_key(vk_enter),
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
            menu: input_binding_gamepad_button(gp_start),
        },
        
        touch:
        {
            up:    input_binding_virtual_button(),
            down:  input_binding_virtual_button(),
            left:  input_binding_virtual_button(),
            right: input_binding_virtual_button(),
            
            action1:  input_binding_virtual_button(),
            action2:  input_binding_virtual_button(),
            inventory:  input_binding_virtual_button(),
            menu: input_binding_virtual_button(),
        }
    };
}
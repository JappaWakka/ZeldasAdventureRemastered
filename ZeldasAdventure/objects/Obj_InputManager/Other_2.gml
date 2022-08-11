/// bind Default Verbs

	input_default_key(vk_left, "Left");
	input_default_key(vk_right, "Right");
	input_default_key(vk_up, "Up");
	input_default_key(vk_down, "Down");
	
	input_default_key(vk_control, "Action"); //A Button
	input_default_key(vk_alt, "Special"); //B Button
	input_default_key(vk_space, "Inventory"); //Select Button
	input_default_key(vk_escape, "Menu"); //Start Button
	
	input_default_gamepad_button(gp_padl, "Left");
	input_default_gamepad_button(gp_padr, "Right");
	input_default_gamepad_button(gp_padr, "Up");
	input_default_gamepad_button(gp_padd, "Down");
	
	input_default_gamepad_button(gp_face1, "Action"); //A Button
	input_default_gamepad_button(gp_face2, "Special"); //B Button
	input_default_gamepad_button(gp_face3, "Inventory"); //X Button
	input_default_gamepad_button(gp_start, "Menu"); //Start Button
	
	input_player_source_set(INPUT_SOURCE.KEYBOARD_AND_MOUSE)
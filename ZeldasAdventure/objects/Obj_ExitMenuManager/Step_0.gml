if QuitToMainMenu = false and OpeningClosing == false
{
	if Alpha = 255
	{
		var CurrentGrid = ds_Menu_Exit;
		var GridHeight = ds_grid_height(CurrentGrid);
		if input_check_pressed("action1") = true or input_check_pressed("accept")
		{
			audio_play_sound(Settings_Accept,1000,false)
			script_execute(CurrentGrid[# 1, CurrentEntry])
		}
		var OptionChange = input_check_pressed("down") - input_check_pressed("up");
		if OptionChange !=0
		{
			CurrentEntry += OptionChange;
			if (CurrentEntry > GridHeight - 1)
			{
				CurrentEntry = 0;
			}
			if (CurrentEntry < 0)
			{
				CurrentEntry = GridHeight - 1;
			}
		}
		if input_check_pressed("action2") or input_check_pressed("menu")
		{
			if global.FadeAlpha == 0 && OpeningClosing == false
			{
				global.FadeProgress = 0;
				global.FadeSpeed = 16;
				OpeningClosing = true;
			}
		}
		if input_check_pressed("inventory")
		{
			if global.FadeAlpha == 0 && OpeningClosing == false
			{
				global.FadeProgress = 0;
				global.FadeSpeed = 16;
				OpeningClosing = true;
				if Obj_InventoryManager.Alpha = 255
				{
					Obj_InventoryManager.OpeningClosing = true;
				}
			}
		}
	}
	else
	{
		if input_check_pressed("menu")
		{
			if global.FadeAlpha == 0 && OpeningClosing == false
			{
				global.FadeProgress = 0;
				OpeningClosing = true;
			}
		}
	}
}
else
{
	if global.FadeProgress > 0
	{
		if Alpha = 0
		{
			Alpha = 255;
			if Obj_InventoryManager.Alpha = 0
			{
				instance_deactivate_object(Entity_Parent_Player)
				if object_exists(Entity_Parent_NPC) = true
				{
					Entity_Parent_NPC.speed = 0;
					Entity_Parent_NPC.image_speed = 0;
					Entity_Parent_NPC.visible = false;
				}
				instance_deactivate_layer("Enemies");
			}
		}
		else
		{
			Alpha = 0;
			if Obj_InventoryManager.Alpha = 0
			{
				instance_activate_object(Entity_Parent_Player)
				if object_exists(Entity_Parent_NPC) = true
				{
					Entity_Parent_NPC.speed = Entity_Parent_NPC.DefaultSpeed;
					Entity_Parent_NPC.image_speed = Entity_Parent_NPC.ImageSpeed;
					Entity_Parent_NPC.visible = true;
				}
				instance_activate_layer("Enemies");
			}
		}
		global.FadeSpeed = 12;
		OpeningClosing = false;
	}
}

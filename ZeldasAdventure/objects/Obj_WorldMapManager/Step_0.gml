if Alpha == 255
{
	if input_check_pressed("action1") or input_check_pressed("action2") or input_check_pressed("map")
	{
		if global.FadeAlpha == 0 && OpeningClosing == false
		{
			global.FadeProgress = 0;
			OpeningClosing = true;
		}
	}
	if input_check_pressed("inventory")
	{
		if global.FadeAlpha == 0 && OpeningClosing == false
		{
			global.FadeProgress = 0;
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
	if input_check_pressed("map")
	{
		if global.FadeAlpha == 0 && OpeningClosing == false
		{
			global.FadeProgress = 0;
			OpeningClosing = true;
		}
	}
}

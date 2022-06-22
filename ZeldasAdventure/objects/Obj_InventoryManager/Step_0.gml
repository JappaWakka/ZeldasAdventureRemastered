if global.CurrentRubies == 0
{
	global.Inventory_Treasure[Treasure.Rubies] = false
}
else
{
	if global.Inventory_Treasure[Treasure.Rubies] = false
	{
		global.Inventory_Treasure[Treasure.Rubies] = true
	}
}

if mouse_wheel_down() = true or input_check_pressed("Right") = true
{
	if SelectedIndex[0] < INVENTORY_SLOTS_TREASURE_USED - 1 - RemovedItems
	{
		SelectedIndex[0] +=1
	}
	
	if SelectedIndex[0] > ScrollOffsetX_Treasure + 5
	{
		if ScrollOffsetX_Treasure < INVENTORY_SLOTS_TREASURE_USED - 7 - RemovedItems
		{
			ScrollOffsetX_Treasure += 1
		}	
	}
}

if mouse_wheel_up() = true or input_check_pressed("Left") = true
{
	if SelectedIndex[0] > 0
	{
		SelectedIndex[0] -=1
	}
	
	if SelectedIndex[0] < ScrollOffsetX_Treasure
	{
		if ScrollOffsetX_Treasure > 0
		{
			ScrollOffsetX_Treasure -= 1
		}	
	}
}

if global.CurrentRubies == 0
{
	global.Inventory.Treasure[Treasure.Rubies] = false
}
else
{
	if global.Inventory.Treasure[Treasure.Rubies] = false
	{
		global.Inventory.Treasure[Treasure.Rubies] = true
	}
}
if Alpha = 255
{
	if mouse_wheel_down() = true or input_check_pressed("Right") = true
	{
		if InventoryIndex = 0
		{
			if SelectedIndex[InventoryIndex] < array_length(RemainingItems[InventoryIndex])
			{
				SelectedIndex[InventoryIndex] +=1;
			}
			if SelectedIndex[InventoryIndex] > ScrollOffsetX_Treasure + 5
			{
				if ScrollOffsetX_Treasure < array_length(RemainingItems[InventoryIndex]) - 7
				{
					ScrollOffsetX_Treasure += 1;
				}	
			}
		}
		else if InventoryIndex = 1
		{
			if SelectedIndex[InventoryIndex] < array_length(RemainingItems[InventoryIndex])
			{
				SelectedIndex[InventoryIndex] +=1;
			}
			if SelectedIndex[InventoryIndex] > ScrollOffsetX_Spells + 5
			{
				if ScrollOffsetX_Spells < array_length(RemainingItems[InventoryIndex]) - 7
				{
					ScrollOffsetX_Spells += 1;
				}	
			}
		}
	}
		
	
	if mouse_wheel_up() = true or input_check_pressed("Left") = true
	{
		if InventoryIndex = 0
		{
			if SelectedIndex[InventoryIndex] > 0
			{
				SelectedIndex[InventoryIndex] -=1
			}
			
			if SelectedIndex[InventoryIndex] < ScrollOffsetX_Treasure
			{
				if ScrollOffsetX_Treasure > 0
				{
					ScrollOffsetX_Treasure -= 1
				}	
			}
		}
		else if InventoryIndex = 1
		{
			if SelectedIndex[InventoryIndex] > 0
			{
				SelectedIndex[InventoryIndex] -=1
			}
			
			if SelectedIndex[InventoryIndex] < ScrollOffsetX_Spells
			{
				if ScrollOffsetX_Spells > 0
				{
					ScrollOffsetX_Spells -= 1
				}	
			}
		}
	}
	
	if input_check_pressed("Down") = true
	{
		if InventoryIndex = 0
		{
			InventoryIndex = 1
		}
		
		if SelectedIndex[0] < ScrollOffsetX_Treasure
		{
			if ScrollOffsetX_Treasure > 0
			{
				ScrollOffsetX_Treasure -= 1
			}	
		}
	}
}

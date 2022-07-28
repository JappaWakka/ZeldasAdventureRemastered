if global.CurrentRubies == 0
{
	Remove_Item(Treasure.Rubies,0)
}
else
{
	if Find_Item(Treasure.Rubies,0) = -1
	{
		Add_Item(Treasure.Rubies,0)
	}
}
if Alpha = 255
{
	if mouse_wheel_down() = true or input_check_pressed("Right") = true
	{
		if InventoryIndex = 0
		{
			if SelectedIndex[InventoryIndex] < array_length(InventoryArray(InventoryIndex))
			{
				SelectedIndex[InventoryIndex] +=1;
			}
			if SelectedIndex[InventoryIndex] > ScrollOffsetX_Treasure + 5
			{
				if ScrollOffsetX_Treasure < array_length(InventoryArray(InventoryIndex)) - 6
				{
					ScrollOffsetX_Treasure += 1;
				}	
			}
		}
		else if InventoryIndex = 1
		{
			if SelectedIndex[InventoryIndex] < array_length(InventoryArray(InventoryIndex))
			{
				SelectedIndex[InventoryIndex] +=1;
			}
			if SelectedIndex[InventoryIndex] > ScrollOffsetX_Spells + 5
			{
				if ScrollOffsetX_Spells < array_length(InventoryArray(InventoryIndex)) - 6
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
		
	}
	if input_check_pressed("Up") = true
	{
		if InventoryIndex = 1
		{
			InventoryIndex = 0
		}
		
	}
}

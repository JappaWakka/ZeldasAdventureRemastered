if input_check_pressed("Inventory")
{
	if global.FadeAlpha == 0 && OpeningClosing == false
	{
		global.FadeProgress = 0;
		OpeningClosing = true;
	}
	if Alpha = 0
	{
		if global.RemasteredMode = true
		{
			SelectedIndex = [Item_FindIndex(global.CurrentTreasure,0), Item_FindIndex(global.CurrentSpell,1)]
			InventoryIndex = 0
		}
		else
		{
			if global.CurrentItem[0] == 0
			{
				SelectedIndex = [Item_FindIndex(global.CurrentItem[1],0),-1]
				InventoryIndex = 0
			}
			else if global.CurrentItem[0] == 1
			{
				SelectedIndex = [-1, Item_FindIndex(global.CurrentItem[1],1)]
				InventoryIndex = 1
			}
			else
			{
				SelectedIndex = [-1,-1]
				InventoryIndex = 0
			}
		}
	}
}
if SelectedIndex[0] == -1
{
	SelectedIndex[0] = 0
}
if SelectedIndex[1] == -1
{
	SelectedIndex[1] = 0
}
if Alpha == 255
{
	if input_check_pressed("Action") or input_check_pressed("Special")
	{
		if InventoryIndex = 2
		{
			//Open Map Menu
		}
		else if InventoryIndex = 3
		{
			//Open SaveMenu
		}
		else //Treasures or Spells
		{
			if ds_list_empty(InventoryList(InventoryIndex)) = false
			{
				var ItemValue = Item_FindValue(SelectedIndex[InventoryIndex],InventoryIndex)
				var ItemIndex = Item_FindIndex(ItemValue,InventoryIndex)
				global.CurrentItem = [InventoryIndex,ItemIndex]
			}
		}
	}
}
//If no rubies, remove the item
if global.CurrentRubies == 0
{
	Item_Remove(Treasure.Rubies,0)
}
else
{
	//If there are rubies, add the item back
	if Item_FindIndex(Treasure.Rubies,0) = -1
	{
		Item_Add(Treasure.Rubies,0)
	}
}
if Alpha = 255
{
	if mouse_wheel_down() = true or input_check_pressed("Right") = true
	{
		if InventoryIndex = 0
		{
			if SelectedIndex[0] < ds_list_size(InventoryList(0)) - 1
			{
				SelectedIndex[0] +=1;
			}
			if SelectedIndex[0] > ScrollOffsetX_Treasure + 5
			{
				if ScrollOffsetX_Treasure < ds_list_size(InventoryList(0)) - 6
				{
					ScrollOffsetX_Treasure += 1;
					Scrolled = [1,0]  // Direction, InventoryIndex
					alarm[0] = room_speed / 4
				}	
			}
		}
		else if InventoryIndex = 1
		{
			if SelectedIndex[1] < ds_list_size(InventoryList(1)) - 1
			{
				SelectedIndex[1] +=1;
			}
			if SelectedIndex[1] > ScrollOffsetX_Spells + 5
			{
				if ScrollOffsetX_Spells < ds_list_size(InventoryList(1)) - 6
				{
					ScrollOffsetX_Spells += 1;
					Scrolled = [1,1]  // Direction, InventoryIndex
					alarm[0] = room_speed / 4
				}	
			}
		}
		else if InventoryIndex = 2
		{
			InventoryIndex = 3
		}
	}
		
	
	if mouse_wheel_up() = true or input_check_pressed("Left") = true
	{
		if InventoryIndex = 0
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
					Scrolled = [-1,0]  // Direction, InventoryIndex
					alarm[0] = room_speed / 4
				}	
			}
		}
		else if InventoryIndex = 1
		{
			if SelectedIndex[1] > 0
			{
				SelectedIndex[1] -=1
			}
			
			if SelectedIndex[1] < ScrollOffsetX_Spells
			{
				if ScrollOffsetX_Spells > 0
				{
					ScrollOffsetX_Spells -= 1
					Scrolled = [-1,1]  // Direction, InventoryIndex
					alarm[0] = room_speed / 4
				}	
			}
		}
		else if InventoryIndex = 3
		{
			InventoryIndex = 2
		}
	}
	 
	if input_check_pressed("Down") = true
	{
		if InventoryIndex = 2 or InventoryIndex = 3 //Map Menu or Save Menu buttons
		{
			InventoryIndex = 0
		}
		else if InventoryIndex = 0
		{
				InventoryIndex = 1
				SelectedIndex[1] = ScrollOffsetX_Spells + (SelectedIndex[0] - ScrollOffsetX_Treasure)
		}
	}
	
	if input_check_pressed("Up") = true
	{
		if InventoryIndex = 1
		{
			InventoryIndex = 0
			SelectedIndex[0] = ScrollOffsetX_Treasure + (SelectedIndex[1] - ScrollOffsetX_Spells)
		}
		else if InventoryIndex = 0
		{
			if SelectedIndex[0] > 2
			{
				InventoryIndex = 3 // Map Menu Button
			}
			else
			{
				InventoryIndex = 2 // Save Menu Button
			}
		}
	}
}

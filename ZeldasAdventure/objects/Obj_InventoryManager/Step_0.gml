if global.CameraIsPanning = false
{
	if input_check_pressed("inventory")
	{
		if global.FadeAlpha == 0 && OpeningClosing == false
		{
			if IsOtherMenuThanInventoryVisible() = false
			{
				global.FadeProgress = 0;
				OpeningClosing = true;
			}
		}
		if Alpha = 0
		{
			if global.RemasteredMode = true
			{
				SelectedIndex = [global.CurrentTreasure, global.CurrentSpell]
				InventoryIndex = 0
			}
			else
			{
				if global.CurrentItem[0] == 0
				{
					SelectedIndex = [global.CurrentItem[1],-1]
					InventoryIndex = 0
				}
				else if global.CurrentItem[0] == 1
				{
					SelectedIndex = [-1, global.CurrentItem[1]]
					InventoryIndex = 1
				}
				else
				{
					SelectedIndex = [-1,-1]
					InventoryIndex = 0
				}
			}
			if SelectedIndex[0] < ScrollOffsetX_Treasure or SelectedIndex[0] > ScrollOffsetX_Treasure + 5
			{
				ScrollOffsetX_Treasure = clamp(SelectedIndex[0],0, global.InventorySlots_Max[0] - 6)
			}
			if SelectedIndex[1] < ScrollOffsetX_Spells or SelectedIndex[1] > ScrollOffsetX_Spells + 5
			{
				ScrollOffsetX_Spells = clamp(SelectedIndex[1],0,global.InventorySlots_Max[1] - 6)
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
		if input_check_pressed("action2") = true
		{
			if global.FadeAlpha == 0 && OpeningClosing == false
			{
				if IsOtherMenuThanInventoryVisible() = false
				{
					global.FadeProgress = 0;
					OpeningClosing = true;
				}
			}
		}	
		if IsOtherMenuThanInventoryVisible() = false
		{
			if input_check_pressed("action1") = true
			{
				if InventoryIndex = 2
				{
					//Open WorldMap
					if global.FadeAlpha == 0 && OpeningClosing == false
					{
						audio_play_sound(Settings_Accept,1000,false)
						global.FadeProgress = 0;
						Obj_WorldMapManager.OpeningClosing = true;
					}
				}
				else if InventoryIndex = 3
				{
					//Open ExitMenu
					if global.FadeAlpha == 0 && OpeningClosing == false
					{
						audio_play_sound(Settings_Accept,1000,false)
						global.FadeProgress = 0;
						Obj_ExitMenuManager.OpeningClosing = true;
					}
				}
				else //Treasures or Spells
				{
					if ds_list_empty(InventoryList(InventoryIndex)) = false
					{
						var ItemValue = Item_FindValue(SelectedIndex[InventoryIndex],InventoryIndex)
						var ItemIndex = Item_FindIndex(ItemValue,InventoryIndex)
						if global.RemasteredMode = false
						{
							global.CurrentItem = [InventoryIndex,ItemIndex]
						}
						else
						{
							if InventoryIndex = 1
							{
								global.CurrentSpell = ItemIndex
							}
							else
							{
								global.CurrentTreasure = ItemIndex
							}
						}
					}
				}
			}
		}
	}
	//If no rubies, remove the item
	if global.RemasteredMode = false
	{
		if global.CurrentRubies == 0
		{
			Item_Remove(Treasures.Rubies,0)
		}
		else
		{
			//If there are rubies, add the item back
			if Item_FindIndex(Treasures.Rubies,0) = -1
			{
				Item_Add(Treasures.Rubies,0)
			}
		}
	}
	else
	{
		if Item_FindIndex(Treasures.Rubies,0) != -1
		{
			Item_Remove(Treasures.Rubies,0)
		}
	}
	if Alpha = 255
	{
		if IsOtherMenuThanInventoryVisible() = false and OpeningClosing = false
		{
			if mouse_wheel_down() = true or input_check_pressed("right") = true or input_check_pressed("joyright") = true
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
							alarm[0] = FrameRate / 4
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
							alarm[0] = FrameRate / 4
						}	
					}
				}
				else if InventoryIndex = 2
				{
					InventoryIndex = 3
				}
			}
				
			
			if mouse_wheel_up() = true or input_check_pressed("left") = true or input_check_pressed("joyleft") = true
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
							alarm[0] = FrameRate / 4
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
							alarm[0] = FrameRate / 4
						}	
					}
				}
				else if InventoryIndex = 3
				{
					InventoryIndex = 2
				}
			}
			 
			if input_check_pressed("down") = true or input_check_pressed("joydown") = true
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
			
			if input_check_pressed("up") = true or input_check_pressed("joyup") = true
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
	}
}	
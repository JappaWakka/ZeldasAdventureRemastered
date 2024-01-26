if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	if Item_FindIndex(Spells.Calm,1) = -1 
	{
		if global.CameraIsPanning = false
		{
			visible = true
			
			if instance_number(Entity_ItemCost) = 0
			{
				ItemCost = instance_create_layer(x,y,"Items",Entity_ItemCost)
				ItemCost.Price = 100
			}
			
			if variable_instance_exists(id, "ItemCost")
			{
				if place_meeting(x,y,Entity_Player)
				{
					if ItemCost.Animate = false
					{
						ItemCost.visible = true
					}
					PlayerInBuyRange = true
					ItemCost.Animate = true
				}
				else
				{
					ItemCost.Animate = false
				}
			}
			
			
			if Obj_InventoryManager.Alpha = 0 and Obj_InventoryManager.OpeningClosing = false and global.CurrentDialogue_Asset = Dialog_None and variable_instance_exists(id, "ItemCost")
			{
				if global.RemasteredMode = false and Entity_Player.IsAttacking = false
				{
					if input_check_pressed("action") = true or input_check_pressed("special") = true
						{
							if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasure.Rubies and global.CurrentRubies >= ItemCost.Price and PlayerInBuyRange = true
							{
								RemoveRubies(ItemCost.Price);
								global.CurrentItem[1] = -1
								audio_play_sound_relative(SFX_Pickup_Item,ItemCost.Price,false)
								Item_Add(Spells.Calm,1)
								Audio_StopMusic()
								global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell
								global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LotharTheInnKeeper,global.CurrentDialogue_Asset,500,false)
								
								instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
								visible = false
							}
							
						}
				}
				if global.RemasteredMode = true and Entity_Player.IsAttacking = false
				{
					if input_check_pressed("action") = true
					{
						if Item_FindValue(global.CurrentTreasure,0) = Treasure.Rubies and global.CurrentRubies >= ItemCost.Price and PlayerInBuyRange = true
						{
							RemoveRubies(ItemCost.Price);
							global.CurrentTreasure = -1
							audio_play_sound_relative(SFX_Pickup_Item,ItemCost.Price,false)
							Item_Add(Spells.Calm,1)
							
							global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell
							global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LotharTheInnKeeper,global.CurrentDialogue_Asset,500,false)
							
							instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
							visible = false
						}
					}
				}
			}
		}
		else
		{
			visible = false
		}
				
	}
	else
	{
		if variable_instance_exists(id, "ItemCost")
		{
			instance_destroy(ItemCost)
		}
		instance_destroy()
	}
}
else
{   
	visible = false
	if variable_instance_exists(id, "ItemCost")
	{
		instance_destroy(ItemCost)
	}
	if Item_FindIndex(Spells.Calm,1) <> -1 
	{
		instance_destroy()
	}
}
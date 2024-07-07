if IsPlayerOnSameTile() = true
{
	if Item_FindIndex(Spells.Calm,1) = -1 
	{
		visible = true
		
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
				PlayerInBuyRange = false
			}
		}
		else
		{
			ItemCost = instance_create_layer(x,y,"ItemCosts",Entity_ItemCost)
			ItemCost.Price = 100
		}
		
		
		if IsMenuVisible() = false
		and global.CurrentDialogue_Asset = Dialog_None and variable_instance_exists(id, "ItemCost")
		{
			if global.RemasteredMode = false and Entity_Player.IsAttacking = false
			{
				if input_check_pressed("action1") = true or input_check_pressed("action2") = true
					{
						if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasures.Rubies and PlayerInBuyRange = true
						{
							if global.CurrentRubies >= ItemCost.Price
							{
								RemoveRubies(ItemCost.Price);
								audio_play_sound_relative(SFX_Pickup_Item,ItemCost.Price,false)
								Item_Add(Spells.Calm,1)
								Audio_StopMusic()
								global.CurrentDialogue_Asset = Dialog_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell
								global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_LotharTheInnKeeper,global.CurrentDialogue_Asset,500,false)
								
								instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
								visible = false
							}
							else
							{
								audio_play_sound_relative(SFX_Use_Error,100,false);
							}
						}
						
					}
			}
			if global.RemasteredMode = true and Entity_Player.IsAttacking = false
			{
				if input_check_pressed("action1") = true
				{
					if global.CurrentRubies >= ItemCost.Price and PlayerInBuyRange = true
					{
						RemoveRubies(ItemCost.Price);
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
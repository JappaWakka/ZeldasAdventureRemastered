// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseTreasure_Rubies()
{
	//BeggarWoman
	if global.CurrentTile.x = 9 && global.CurrentTile.y = 21
	{
		//If you already have the Firestorm Spell
		if Item_FindIndex(Spells.Firestorm,1) <> -1
		{
			audio_play_sound_relative(SFX_Use_Error,100,false);
		}
	}
	//Mobilin's Head Inn
	else if global.CurrentTile.x = 10 && global.CurrentTile.y = 21
	{
		//If you already have the Calm Spell
		if Item_FindIndex(Spells.Calm,1) <> -1
		{
			audio_play_sound_relative(SFX_Use_Error,100,false);
		}
		else
		{
			if instance_number(Parent_BuyableItem) > 0
			{
				if Entity_Pickup_Calm.PlayerInBuyRange = false
				{
					audio_play_sound_relative(SFX_Use_Error,100,false);
				}
			}
			else
			{
				audio_play_sound_relative(SFX_Use_Error,100,false);
			}
		}
	}
	//Forest of Ogham Shop
	else if global.CurrentTile.x = 5 && global.CurrentTile.y = 25
	{
		//If you already have both the Magic Shield and Candle
		if Item_FindIndex(Treasures.MagicShield,0) <> -1 && Item_FindIndex(Treasures.Candle,0) <> -1
		{
			audio_play_sound_relative(SFX_Use_Error,100,false);
		}
		else
		{
			var PlayerInBuyRange = false
			if instance_number(Parent_BuyableItem) > 0
			{
				for (var i = 0; i < instance_number(Parent_BuyableItem); ++i;)
				{
				    var BuyableItem = instance_find(Parent_BuyableItem,i);
					if BuyableItem.PlayerInBuyRange = true
					{
						PlayerInBuyRange = true
						break
					}
				}
			}
			if PlayerInBuyRange = false
			{
				audio_play_sound_relative(SFX_Use_Error,100,false);
			}
		}
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false);
	}

}
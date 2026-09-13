function SetLocalizedMapSprites()
{
	var CurrentFilePath = "Localization/"+Obj_LocalizationManager.AvailableLanguagesStruct.Languages[global.CurrentLanguage].SpritesFolder
	var DefaultFilePath = "Localization/"+Obj_LocalizationManager.AvailableLanguagesStruct.Languages[0].SpritesFolder
	
	if directory_exists(working_directory + CurrentFilePath) = true or directory_exists(working_directory + DefaultFilePath) = true
	{
		//Foreground
			var layerID = layer_get_id("Foreground_Transparent")
			var mapSpriteID = noone
			
			//PlainOfAndor
			var PlainOfAndor_15_Above_Sprite = GetLocalizedLocalizedSprite("Maps/PlainOfAndor/PlainOfAndor_15_Above.png")
			if PlainOfAndor_15_Above_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"PlainOfAndor_15_Above_Localized")
				layer_sprite_change(mapSpriteID,PlainOfAndor_15_Above_Sprite)
			}
			
			//PlainOfDonora
			var PlainOfDonora_03_Above_Sprite = GetLocalizedLocalizedSprite("Maps/PlainOfDonora/PlainOfDonora_03_Above.png")
			if PlainOfDonora_03_Above_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"PlainOfDonora_03_Above_Localized")
				layer_sprite_change(mapSpriteID,PlainOfDonora_03_Above_Sprite)
			}
			
			//ForestOfTorian
			var ForestOfTorian_10_Above_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_10_Above.png")
			if ForestOfTorian_10_Above_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_10_Above_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_10_Above_Sprite)
			}
			var ForestOfTorian_17_Above_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_17_Above.png")
			if ForestOfTorian_17_Above_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_17_Above_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_17_Above_Sprite)
			}
			var ForestOfTorian_31_Above_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_31_Above.png")
			if ForestOfTorian_31_Above_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_31_Above_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_31_Above_Sprite)
			}
		
		//Background
			layerID = layer_get_id("Background")
			
			//PlainOfAndor
			var PlainOfAndor_15_Below_Sprite = GetLocalizedLocalizedSprite("Maps/PlainOfAndor/PlainOfAndor_15_Below.png")
			if PlainOfAndor_15_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"PlainOfAndor_15_Below_Localized")
				layer_sprite_change(mapSpriteID,PlainOfAndor_15_Below_Sprite)
			}
			
			//ForestOfFindo
			var ForestOfFindo_02_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfFindo/ForestOfFindo_02_Below.png")
			if ForestOfFindo_02_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfFindo_02_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfFindo_02_Below_Sprite)
			}
			
			//ForestOfOgham
			var ForestOfOgham_03_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfOgham/ForestOfOgham_03_Below.png")
			if ForestOfOgham_03_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfOgham_03_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfOgham_03_Below_Sprite)
			}
			
			//MeadowOfSkotness
			var MeadowOfSkotness_10_Below_Sprite = GetLocalizedLocalizedSprite("Maps/MeadowOfSkotness/MeadowOfSkotness_10_Below.png")
			if MeadowOfSkotness_10_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"MeadowOfSkotness_10_Below_Localized")
				layer_sprite_change(mapSpriteID,MeadowOfSkotness_10_Below_Sprite)
			}
			
			//PlainOfDonora
			var PlainOfDonora_03_Below_Sprite = GetLocalizedLocalizedSprite("Maps/PlainOfDonora/PlainOfDonora_03_Below.png")
			if PlainOfDonora_03_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"PlainOfDonora_03_Below_Localized")
				layer_sprite_change(mapSpriteID,PlainOfDonora_03_Below_Sprite)
			}
			//ForestOfTorian
			var ForestOfTorian_10_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_10_Below.png")
			if ForestOfTorian_10_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_10_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_10_Below_Sprite)
			}
			var ForestOfTorian_17_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_17_Below.png")
			if ForestOfTorian_17_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_17_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_17_Below_Sprite)
			}
			var ForestOfTorian_18_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_18_Below.png")
			if ForestOfTorian_18_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_18_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_18_Below_Sprite)
			}
			var ForestOfTorian_31_Below_Sprite = GetLocalizedLocalizedSprite("Maps/ForestOfTorian/ForestOfTorian_31_Below.png")
			if ForestOfTorian_31_Below_Sprite <> -1
			{
				mapSpriteID = layer_sprite_get_id(layerID,"ForestOfTorian_31_Below_Localized")
				layer_sprite_change(mapSpriteID,ForestOfTorian_31_Below_Sprite)
			}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseItem_Treasure()
{
	var TreasureItem = -1
	var CanUseTreasure = false
	if global.RemasteredMode = false
	{
		TreasureItem = global.CurrentItem[1]
		CanUseTreasure = true
	}
	else
	{
		//Always use Rubies first
		if UseTreasure_Rubies() = false
		{
			//If Rubies have not been used, use the currently equipped Treasure
			TreasureItem = global.CurrentTreasure
			CanUseTreasure = true
		}
	}
	
	if CanUseTreasure = true
	{
		switch Item_FindValue(TreasureItem,0)
		{
			case Treasures.EmptyPitcher:
				UseTreasure_EmptyPitcher()
				break;					
			case Treasures.FullPitcher:
				UseTreasure_FullPitcher()
				break;
			case Treasures.Ladder:
				UseTreasure_Ladder()
				break;
			case Treasures.Candle:
				UseTreasure_Candle()
				break;
			case Treasures.LifePotion:
				UseTreasure_LifePotion()
				break;
			case Treasures.Flute:
				UseTreasure_Flute()
				break;
			case Treasures.Bone:
				UseTreasure_Bone()
				break;
			case Treasures.Harp:
				UseTreasure_Harp()
				break;
			case Treasures.Coal:
				UseTreasure_Coal()
				break;
			case Treasures.Compass_Earth:
				UseTreasure_Compass_Earth();
				break;
			case Treasures.Rubies:
				if global.RemasteredMode = false
				{
					UseTreasure_Rubies();
				}
				break;
			default:
				audio_play_sound_relative(SFX_Use_Error,100,false);
				break;
		}
	}
}

function UseItem_Spell()
{
	var SpellItem = -1
	if global.RemasteredMode = false
	{
		SpellItem = global.CurrentItem[1]
	}
	else
	{
		SpellItem = global.CurrentSpell
	}
	if Item_FindIndex(Spells.Wand, 1) <> -1 and SpellItem <> -1 and global.CurrentRubies >= CastCost(SpellItem)
	{
		// Sprite change & Melee damage if not in Remastered Mode (also happens when using other spells)
		UseSpell_Any();
					
		// Use Spell
		switch Item_FindValue(SpellItem,1)
		{
			case Spells.Wand:
				UseSpell_Wand();
				break;
			case Spells.Firestorm:
				UseSpell_Firestorm()
				break;
			case Spells.JadeRing:
				UseSpell_JadeRing()
				break;
			case Spells.Calm:
				UseSpell_Calm()
				break;
			case Spells.Boomerang:
				UseSpell_Boomerang()
				break;
			case Spells.Dagger:
				UseSpell_Dagger()
				break;
			case Spells.Pyros:
				UseSpell_Pyros()
				break;
			case Spells.TurquoiseRing:
				UseSpell_TurquoiseRing()
				break;
			case Spells.JadeAmulet:
				UseSpell_JadeAmulet()
				break;
			case Spells.ShortAxe:
				UseSpell_ShortAxe()
				break;
			case Spells.RingsOfFire:
				UseSpell_RingsOfFire()
				break;
		}
			
		if global.CanUseSpell = true
		{
			//If casting a spell, pay the casting cost
			global.DesiredRubies -= CastCost(SpellItem)
			if global.CurrentRubies > global.DesiredRubies
			{
				global.CurrentRubies = global.DesiredRubies
			}
		}
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,600,false)
	}
}
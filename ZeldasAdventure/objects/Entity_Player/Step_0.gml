/// @description Continous Events
x = Entity_Collision_Player.x
y = Entity_Collision_Player.y

if IsMenuVisible() = true
{
	if timeline_index = Damage_Player
	{
		timeline_running = false
	}
}
else
{
	if timeline_index = Damage_Player
	{
		timeline_running = true
	}
}

#region SpriteChanges & Direction

#region Action - Using Spells & Treasures
if global.RemasteredMode = false and IsAttacking = false and global.PlayerIsDead = false
{
	if input_check_pressed("action1") = true or input_check_pressed("action2") = true
	{
		//Current Item is a Spell
		if global.CurrentItem[0] = 1
		{
			if Item_FindIndex(Spells.Wand, 1) <> -1 and global.CurrentItem[1] <> -1 and global.CurrentRubies >= CastCost(global.CurrentItem[1])
			{
				// Melee damage and sprite change (happens also when using other spells)
				UseSpell_Any();
				
				// Use Spell - Wand
				if Item_FindValue(global.CurrentItem[1],1) = Spells.Wand
				{
					UseSpell_Wand()
				}
				
				// Use Spell - Firestorm
				if Item_FindValue(global.CurrentItem[1],1) = Spells.Firestorm
				{
					UseSpell_Firestorm()
				}
				// Use Spell - JadeRing
				if Item_FindValue(global.CurrentItem[1],1) = Spells.JadeRing
				{
					UseSpell_JadeRing()
				}
				// Use Spell - Calm
				if Item_FindValue(global.CurrentItem[1],1) = Spells.Calm
				{
					UseSpell_Calm()
				}
				// Use Spell - Boomerang
				if Item_FindValue(global.CurrentItem[1],1) = Spells.Boomerang
				{
					UseSpell_Boomerang()
				}
				// Use Spell - Dagger
				if Item_FindValue(global.CurrentItem[1],1) = Spells.Dagger
				{
					UseSpell_Dagger()
				}
				
				if global.CanUseSpell = true
				{
					//If casting a spell, pay the casting cost
					global.DesiredRubies -= CastCost(global.CurrentItem[1])
					if global.CurrentRubies > global.DesiredRubies
					{
						global.CurrentRubies = global.DesiredRubies
					}
					
				}
			}
			else
			{
				audio_play_sound_relative(SFX_Use_Error,100,false)
			}
		//Current Item is a Treasure
		}
		else
		{
			switch Item_FindValue(global.CurrentItem[1],0)
			{
				case Treasures.EmptyPitcher:
					UseTreasure_EmptyPitcher()
					break;					
				case Treasures.FullPitcher:
					UseTreasure_FullPitcher()
					break;
				case Treasures.Rubies:
					UseTreasure_Rubies();
					break;
				default:
					audio_play_sound_relative(SFX_Use_Error,100,false);
					break;
			}
			
		}
	}
}

if global.RemasteredMode = true and IsAttacking = false and global.PlayerIsDead = false
{
	if input_check_pressed("action1") = true
	{
		switch Item_FindValue(global.CurrentTreasure,0)
			{
				case Treasures.EmptyPitcher:
					UseTreasure_EmptyPitcher()
					break;					
				case Treasures.FullPitcher:
					UseTreasure_FullPitcher()
					break;
				case Treasures.Rubies:
					UseTreasure_Rubies();
					break;
				default:
					
					audio_play_sound_relative(SFX_Use_Error,100,false);
					break;
			}
	}
	if input_check_pressed("action2") = true
	{
		if Item_FindIndex(Spells.Wand, 1) <> -1 and global.CurrentSpell <> -1 and global.CurrentRubies >= CastCost(global.CurrentSpell)
		{
			// Melee damage and sprite change (happens also when using other spells)
			UseSpell_Any();
						
			// Use Spell - Wand
			if Item_FindValue(global.CurrentSpell,1) = Spells.Wand
			{
				UseSpell_Wand()
			}				
			// Use Spell - Firestorm
			if Item_FindValue(global.CurrentSpell,1) = Spells.Firestorm
			{
				UseSpell_Firestorm()
			}
			// Use Spell - JadeRing
			if Item_FindValue(global.CurrentSpell,1) = Spells.JadeRing
			{
				UseSpell_JadeRing()
			}
			// Use Spell - Calm
			if Item_FindValue(global.CurrentSpell,1) = Spells.Calm
			{
				UseSpell_Calm()
			}
			// Use Spell - Boomerang
			if Item_FindValue(global.CurrentSpell,1) = Spells.Boomerang
			{
				UseSpell_Boomerang()
			}
			// Use Spell - Dagger
			if Item_FindValue(global.CurrentSpell,1) = Spells.Dagger
			{
				UseSpell_Dagger()
			}
				
			if global.CanUseSpell = true
			{
				//If casting a spell, pay the casting cost
				global.DesiredRubies -= CastCost(global.CurrentSpell)
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
}

//Auto-equip Wand if nothing is equipped
if global.RemasteredMode = true
{
	if Item_FindValue(global.CurrentSpell,1) = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentSpell = Item_FindIndex(Spells.Wand,1);
	}
}
else
{
	if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentItem = [1,Item_FindIndex(Spells.Wand,1)];
	}
}
if IsAttacking = true
{
	image_speed = AnimSpeed;
}
#endregion

#endregion

if DamageDelay > 0
{
	DamageDelay -=1
}

if global.PlayerIsDead = true
{
	if global.FadeProgress = 0
	{
		sprite_index = Zelda_Death;
		image_speed = 1;
	}
		
	if global.FadeProgress = 1
	{
		global.CurrentHealth = global.MaxHealth
		sprite_index = Zelda_Move_South;
		Facing = global.Directions.South;
		IsAttacking = false;
		DamageDelay = 0;
		image_speed = 0;
		timeline_index = -1;
		image_alpha = 1;
		if global.HasResetEnemies = false
		{
			global.HasResetEnemies = true
			room_goto(Room_Overworld)
		}
	}
	if global.FadeProgress = 2
	{
		if audio_is_playing(SFX_Zelda_Death) = false
		{
			global.SwitchTracks = true
			global.PlayerIsDead = false
		}
	}
}

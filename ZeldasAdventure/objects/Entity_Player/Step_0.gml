/// @description Continous Events
#region Movement

if global.CameraIsPanning = false and IsAttacking = false
{
xx = input_check("Right") - input_check("Left");
yy = input_check("Down") - input_check("Up");
}
else
{
	xx = false
	yy = false
}
PlayerHorizontalSpeed = d(xx * PlayerSpeed); //Your speed(PlayerSpeed) Variable in create event
PlayerVerticalSpeed = d(yy * PlayerSpeed); //Your speed(PlayerSpeed) Variable in create event

////Red Boots Water
if Item_FindIndex(Treasure.RedBoots,0) = -1
{
	// Horz(x) speed collision
	if(place_meeting(x + PlayerHorizontalSpeed, y, Parent_UseItem_RedBoots))
	{
		while(!place_meeting(x + sign(PlayerHorizontalSpeed), y, Parent_UseItem_RedBoots))
		{
			x += sign(PlayerHorizontalSpeed);
		}
		PlayerHorizontalSpeed = 0;
	}
	// Vert(y) speed collision
	if(place_meeting(x, y + PlayerVerticalSpeed, Parent_UseItem_RedBoots))
	{
		while(!place_meeting(x, y + sign(PlayerVerticalSpeed), Parent_UseItem_RedBoots))
		{
			y += sign(PlayerVerticalSpeed);
		}
	   PlayerVerticalSpeed = 0;
	}
}

////Solid Objects
// Horz(x) speed collision
if(place_meeting(x + PlayerHorizontalSpeed, y, Parent_Solid))
{
	while(!place_meeting(x + sign(PlayerHorizontalSpeed), y, Parent_Solid))
	{
		x += sign(PlayerHorizontalSpeed);
	}
	PlayerHorizontalSpeed = 0;
}
 else
{
	x += PlayerHorizontalSpeed;
}
// Vert(y) speed collision
if(place_meeting(x, y + PlayerVerticalSpeed, Parent_Solid))
{
	while(!place_meeting(x, y + sign(PlayerVerticalSpeed), Parent_Solid))
	{
		y += sign(PlayerVerticalSpeed);
	}
   PlayerVerticalSpeed = 0;
}
else
{
	y += PlayerVerticalSpeed;
}

if PlayerHorizontalSpeed > 0 or PlayerVerticalSpeed > 0
{
	Moving = true
}
else
{
	Moving = false
}

#endregion

#region SpriteChanges & Direction

AnimSpeed = d(PlayerSpeedMultiplier)
if global.CameraIsPanning = false
{
	if IsAttacking = false
	{
		if(input_check("Right") = true and input_check("Left") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_East;
			Facing = global.Directions.East
		}
		else if(input_check("Left") = true and input_check("Right") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_West;
			Facing = global.Directions.West
		}
		else if(input_check("Down") = true and input_check("Up") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_South;
			Facing = global.Directions.South
		}
		else if(input_check("Up") = true and input_check("Down") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_North;
			Facing = global.Directions.North
		}
		else
		{
			image_speed = 0;
		}
	}
}
else
{
	image_speed = 0;
}


#region Action - Using Spells & Treasures
if global.RemasteredMode = false and IsAttacking = false
{
	if input_check_pressed("Action") = true or input_check_pressed("Special") = true
	{
		//Current Item is a Spell
		if global.CurrentItem[0] = 1
		{
			if Item_FindIndex(Spells.Wand, 1) <> -1 and global.CurrentItem[1] <> -1 and global.CurrentRubies >= CastCost(global.CurrentItem[1])
			{
				//If casting a spell, pay the casting cost
				global.CurrentRubies -= CastCost(global.CurrentItem[1])
				global.DesiredRubies = global.CurrentRubies
				// Melee damage and sprite change (happens also when using other spells)
				UseSpell_Any();
				
				if CanUseSpell = true
				{
					// Use Spell - Wand
					if global.CurrentItem[1] = Spells.Wand
					{
						UseSpell_Wand()
					}
					
					// Use Spell - Firestorm
					if global.CurrentItem[1] = Spells.Firestorm
					{
						UseSpell_Firestorm()
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
				case Treasure.EmptyPitcher:
					UseTreasure_EmptyPitcher()
					break;					
				case Treasure.FullPitcher:
					UseTreasure_FullPitcher()
					break;
				case Treasure.Rubies:
					UseTreasure_Rubies();
					break;
				default:
					audio_play_sound_relative(SFX_Use_Error,100,false);
					break;
			}
			
		}
	}
}

if global.RemasteredMode = true and IsAttacking = false
{
	if input_check_pressed("Action") = true
	{
		switch Item_FindValue(global.CurrentTreasure,0)
			{
				case Treasure.EmptyPitcher:
					UseTreasure_EmptyPitcher()
					break;					
				case Treasure.FullPitcher:
					UseTreasure_FullPitcher()
					break;
				case Treasure.Rubies:
					UseTreasure_Rubies();
					break;
				default:
					
					audio_play_sound_relative(SFX_Use_Error,100,false);
					break;
			}
	}
	if input_check_pressed("Special") = true
	{
		if Item_FindIndex(Spells.Wand, 1) <> -1 and global.CurrentSpell <> -1 and global.CurrentRubies >= CastCost(global.CurrentSpell) and CanUseSpell = true
		{
			//If casting a spell, pay the casting cost
			global.CurrentRubies -= CastCost(global.CurrentSpell)
			global.DesiredRubies = global.CurrentRubies
			
			// Melee damage and sprite change (happens also when using other spells)
			UseSpell_Any();
						
			// Use Spell - Wand
			if global.CurrentSpell = Spells.Wand
			{
				UseSpell_Wand()
			}				
			// Use Spell - Firestorm
			if global.CurrentSpell = Spells.Firestorm
			{
				UseSpell_Firestorm()	
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
	if global.CurrentSpell = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentSpell = Spells.Wand;
	}
}
else
{
	if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentItem = [1,Spells.Wand];
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

if IsDead = true
{
	WarpToLocation(global.PlayerSpawn);
	
	if global.FadeProgress = 0
	{
		image_speed = 1
	}
		
	if global.FadeProgress = 1
	{
		global.CurrentHealth = global.MaxHealth
		sprite_index = Zelda_Move_South;
		Facing = global.Directions.South;
		IsAttacking = false;
		DamageDelay = 0;
	}
	if global.FadeProgress = 2
	{
		if audio_is_playing(SFX_Zelda_Death) = false
		{
			global.SwitchTracks = true
			IsDead = false
		}
	}
}
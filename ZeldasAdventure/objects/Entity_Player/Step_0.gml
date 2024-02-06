/// @description Continous Events
#region Movement
var xdir = 0
var ydir = 0

if global.CameraIsPanning = false and IsAttacking = false
{
	xdir = input_check("right") - input_check("left");
	ydir = input_check("down") - input_check("up");
}
else
{
	xdir = 0
	ydir = 0
}


var MoveDistance = point_distance(0,0,xdir,ydir);

var MoveDirection = point_direction(0,0, xdir, ydir);

// Move the player smoothly and check for colissions
move(Acceleration, MoveDirection, MaxSpeed, MoveDistance);

if xdir != 0 or ydir != 0
{
	Moving = true
}
else
{
	Moving = false
}

#endregion

#region SpriteChanges & Direction

AnimSpeed = d(SpeedMultiplier)
if global.CameraIsPanning = false
{
	if IsAttacking = false and IsDead = false
	{
		if(input_check("right") = true and input_check("left") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_East;
			Facing = global.Directions.East
		}
		else if(input_check("left") = true and input_check("right") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_West;
			Facing = global.Directions.West
		}
		else if(input_check("down") = true and input_check("up") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_South;
			Facing = global.Directions.South
		}
		else if(input_check("up") = true and input_check("down") = false)
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
if global.RemasteredMode = false and IsAttacking = false and IsDead = false
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
				if global.CurrentItem[1] = Spells.Wand
				{
					UseSpell_Wand()
				}
				
				// Use Spell - Firestorm
				if global.CurrentItem[1] = Spells.Firestorm
				{
					UseSpell_Firestorm()
				}
				// Use Spell - JadeRing
				if global.CurrentItem[1] = Spells.JadeRing
				{
					UseSpell_JadeRing()
				}
				// Use Spell - Calm
				if global.CurrentItem[1] = Spells.Calm
				{
					UseSpell_Calm()
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

if global.RemasteredMode = true and IsAttacking = false and IsDead = false
{
	if input_check_pressed("action1") = true
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
	if input_check_pressed("action2") = true
	{
		if Item_FindIndex(Spells.Wand, 1) <> -1 and global.CurrentSpell <> -1 and global.CurrentRubies >= CastCost(global.CurrentSpell)
		{
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
			// Use Spell - JadeRing
			if global.CurrentSpell = Spells.JadeRing
			{
				UseSpell_JadeRing()
			}
			// Use Spell - Calm
			if global.CurrentSpell = Spells.Calm
			{
				UseSpell_Calm()
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
		sprite_index = Zelda_Death
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
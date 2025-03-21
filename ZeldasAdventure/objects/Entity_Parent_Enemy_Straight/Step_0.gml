//If the player is on the same tile
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	//Activate
	visible = true;
	if alarm_get(0) = -1
	{
		if EnemyState = EnemyStates.Move
		{
			alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
		}
	}
	//Attack
	if alarm_get(1) = -1
	{
		if EnemyState != EnemyStates.Damaged && EnemyState != EnemyStates.Attack
		{
			alarm_set(1, round(random_range(0, 3 * FrameRate)));
		}
	}
	//Deal Damage to Player
	if collision_circle(x,y,HitRadius_Attack,Entity_Player,true,true) and EnemyState != EnemyStates.Damaged
	{
		with Entity_Player
		{
			if DamageDelay = 0
			{
				DecreaseHP(other.Power - GetDefense())
				audio_play_sound_relative(SFX_Zelda_Damage,1000,false)
				
				if PlayerDeath_Start() = false // Check if player is dead, if not start damage animation
				{
					DamageDelay = 1 * FrameRate
					if timeline_index = -1
					{
						timeline_index = Timeline_Damage_Player;
						timeline_position = 0;
						timeline_running = true;
					}
				}
				
			}
		}
	}
	
	if EnemyState != EnemyStates.Damaged
	{
		//Receive Damage from Player
		//Melee
		if collision_circle(x,y,HitRadius_Defense,Entity_Hitbox_Spell_Wand,true,true)
		{
			if DamageDelay = 0
			{
				///Set return position
				if ReturnToPoint = true and ReturnPointPosition[0] = -1 and ReturnPointPosition[1] = -1
				{
					ReturnPointPosition = [x,y]
				}
				
				var ReceivedDamage = GetPower() - Defense
				if ReceivedDamage > 0
				{
					///Reduce HitPoints, play damage sound
					HitPoints -= ReceivedDamage
					audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
					EnemyState = EnemyStates.Damaged
					StartDamageAnimation = true
					HitFromDirection = Entity_Player.Facing
				}
				else
				{
					audio_play_sound_relative(SFX_Enemy_Immune,1000,false)
					EnemyState = EnemyStates.Damaged
					StartImmuneAnimation = true
				}
				///Reset DamageDelay
				DamageDelay = 1 * FrameRate
			}
		}
		//Spell
		if instance_number(Entity_Parent_Projectile_Player) > 0
		{
			var HitProjectile = -1
			for (var i = 0; i < instance_number(Entity_Parent_Projectile_Player); ++i;)
			{
				if collision_circle(x,y,HitRadius_Defense,Entity_Parent_Projectile_Player,true,true)
			    {
					HitProjectile = instance_find(Entity_Parent_Projectile_Player,i);
				}
			}
			if HitProjectile != -1
			{
				if DamageDelay = 0
				{
					///Set return position
					if ReturnToPoint = true
					{
						ReturnPointPosition = [x,y]
					}
					
					var ReceivedDamage
					
					if WeakToSpell != -1 and HitProjectile.SpellUsed = WeakToSpell
					{
						ReceivedDamage = clamp(HitProjectile.Power - Defense,0,HitProjectile.Power) + HitProjectile.BonusDamageIfWeak
					}
					else
					{
						ReceivedDamage = clamp(HitProjectile.Power - Defense,0,HitProjectile.Power)
					}
					
					if ReceivedDamage > 0
					{
						
						///Reduce HitPoints, play damage sound
						HitPoints -= ReceivedDamage
						audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
						EnemyState = EnemyStates.Damaged
						StartDamageAnimation = true
						HitFromDirection = HitProjectile.direction
					}
					else
					{
						audio_play_sound_relative(SFX_Enemy_Immune,1000,false)
						EnemyState = EnemyStates.Damaged
						StartImmuneAnimation = true
					}
					if HitProjectile.DestroyOnEnemyImpact = true
					{
						instance_destroy(HitProjectile)
					}
					///Reset DamageDelay
					DamageDelay = 1 * FrameRate
				}
			}
		}
	}
}
else
{
	//Deactivate
	visible = false
	if IsMenuVisible() = false && global.CameraIsFading = false
	{
		if path_index != -1
		{
			path_speed = 0
			path_end()
		}
		x = OriginX;
		y = OriginY;
		image_index = 0;
		direction = 90;
	}
	speed = global.EnemySpeeds.Still;
	image_speed = 0;
}

//Damage Animation
timerDuration -= 1
if timerDuration = 0 and timerIndex > 0
{
	timerIndex += 1
	if timerIndex = 6
	{
		timerIndex = 0
		EnemyState = EnemyStates.Move
		ChangeDirection = true
	}
	timerDuration = 4
}
if timerIndex >= 1 or DistanceLeftToKnockBack > 0
{
	direction = HitFromDirection
	speed = d(4)
	DistanceLeftToKnockBack -= speed
}
if DistanceLeftToKnockBack <= 0 && EnemyState = EnemyStates.Damaged
{
	DistanceLeftToKnockBack = 0
	speed = 0
}

if EnemyState = EnemyStates.Attack
{
	speed = global.EnemySpeeds.Still
}
//Don't move outside of the current tile
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	if EnemyState != EnemyStates.Damaged
	{
		ChangeDirection = true;
	}
	else
	{
		speed = global.EnemySpeeds.Still
		DistanceLeftToKnockBack = 0
	}
}

if DamageDelay > 0
{
	DamageDelay -=1
}
if EnemyState != EnemyStates.Damaged
{
	image_speed = speed
}
else
{
	image_speed = 0
}

if HitPoints <= 0
{
	switch TriggerScriptName
	{
		case "BoomerangSpell" :
			if global.DeathAmountForTrigger.BoomerangSpell[1] > 0
			{
				global.DeathAmountForTrigger.BoomerangSpell[1] -= 1
			}
			if global.DeathAmountForTrigger.BoomerangSpell[1] = 0
			{
				Script_Trigger_BoomerangSpell() //Spawn Boomerang Spell Pickup
			}
			break
		case "TektiteAmbush" :
			if global.DeathAmountForTrigger.TektiteAmbush[1] > 0
			{
				global.DeathAmountForTrigger.TektiteAmbush[1] -= 1
			}
			if global.DeathAmountForTrigger.TektiteAmbush[1] = 0
			{
				Script_Trigger_TektiteAmbush() //Spawn a bunch of Tektites
			}
			break
		case "UnderworldMapEarthTreasure" :
			if global.DeathAmountForTrigger.UnderworldMapEarthTreasure[1] > 0
			{
				global.DeathAmountForTrigger.UnderworldMapEarthTreasure[1] -= 1
			}
			if global.DeathAmountForTrigger.UnderworldMapEarthTreasure[1] = 0
			{
				Script_Trigger_UnderworldMapEarthTreasure() //Spawn UnderworldMap_Earth Treasure Pickup
			}
			break
		case "EarthSardakBarrier" :
			var Color = "None"
			if object_get_name(object_index) = "Entity_Enemy_Sardak_Red"
			{ Color = "Red" }
			else if object_get_name(object_index) = "Entity_Enemy_Sardak_Blue"
			{ Color = "Blue" }
			else if object_get_name(object_index) = "Entity_Enemy_Sardak_Yellow"
			{ Color = "Yellow" }
			Script_Trigger_EarthSardakBarrier(Color) //Spawn UnderworldMap_Earth Treasure Pickup
			break
	}
	
	instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Particle_EnemyDefeat)
	if DropsItemOnDefeat = true
	{
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Pickup_ItemDrops)
	}
	instance_destroy();
	
}

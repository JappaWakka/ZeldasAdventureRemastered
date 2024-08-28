//If the player is on the same tile
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	//Play sound
	if Script_AggroRange() = true
	{
		if global.EnemySoundPlaying = false
		{
				global.EnemySound = audio_play_sound_relative(EnemySoundName,1000,false)
				global.EnemySoundPlaying = true
		}
	}
	//Activate
	visible = true;
	
	//Player's Attack Damage
	//Melee
	if collision_circle(x,y,HitRadius,Entity_Hitbox_Spell_Wand,true,true)
	{
		if DamageDelay = 0 && ImmuneToWand = false
		{
			///Set return position
			if ReturnToPoint = true and ReturnPointPosition[0] = -1 and ReturnPointPosition[1] = -1
			{
				if CanContinue = true
				{
					ReturnPointPosition = CurrentCoordinates;
					CanContinue = false;
				}
				else
				{
					ReturnPointPosition = [x,y];
				}
			}
			///Reduce HitPoints, play damage sound
			HitPoints -= GetPower() - Defense
			audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
			EnemyState = EnemyStates.Damaged
			StartDamageAnimation = true
			HitFromDirection = Entity_Player.Facing
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
			if collision_circle(x,y,HitRadius,Entity_Parent_Projectile_Player,true,true)
		    {
				HitProjectile = instance_find(Entity_Parent_Projectile_Player,i);
			}
		}
		if HitProjectile != -1
		{
			if DamageDelay = 0
			{
				///Set return position
				if ReturnToPoint = true and ReturnPointPosition[0] = -1 and ReturnPointPosition[1] = -1
				{
					if CanContinue = true
					{
						ReturnPointPosition = CurrentCoordinates;
						CanContinue = false;
					}
					else
					{
						ReturnPointPosition = [x,y];
					}
				}				
				
				///Reduce HitPoints, play damage sound
				if WeakToSpell != -1 and HitProjectile.SpellUsed = WeakToSpell
				{
					HitPoints -= HitProjectile.Power + HitProjectile.BonusDamageIfWeak
				}
				else
				{
					HitPoints -= HitProjectile.Power - Defense
				}
				audio_play_sound_relative(SFX_Enemy_Damage,1000,false)
				EnemyState = EnemyStates.Damaged
				StartDamageAnimation = true
				HitFromDirection = HitProjectile.direction
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
else
{
	//Deactivate
	visible = false
	if IsMenuVisible() = false && global.CameraIsFading = false
	{
		CanContinue = false;
		FrameIndex = 0;
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

//Don't move outside of the current tile
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	if EnemyState = EnemyStates.Damaged
	{
		speed = global.EnemySpeeds.Still
		DistanceLeftToKnockBack = 0
	}
}

if DamageDelay > 0
{
	DamageDelay -=1
}
if EnemyState = EnemyStates.Damaged
{
	image_speed = 0
}

if HitPoints <= 0
{
	switch TriggerScriptName
	{
			case "BoomerangSpell" :
				if global.DeathAmountForTrigger.BoomerangSpell > 0
				{
					global.DeathAmountForTrigger.BoomerangSpell -= 1
				}
				if global.DeathAmountForTrigger.BoomerangSpell = 0
				{
					Script_Trigger_BoomerangSpell() //Spawn Boomerang Spell Pickup
				}
				break
			case "TektiteAmbush" :
				if global.DeathAmountForTrigger.TektiteAmbush > 0
				{
					global.DeathAmountForTrigger.TektiteAmbush -= 1
				}
				if global.DeathAmountForTrigger.TektiteAmbush = 0
				{
					Script_Trigger_TektiteAmbush() //Spawn a bunch of Tektites
				}
				break
			case "CompassEarthTreasure" :
				if global.DeathAmountForTrigger.CompassEarthTreasure > 0
				{
					global.DeathAmountForTrigger.CompassEarthTreasure -= 1
				}
				if global.DeathAmountForTrigger.CompassEarthTreasure = 0
				{
					Script_Trigger_CompassEarthTreasure() //Spawn Compass_Earth Treasure Pickup
				}
				break
			case "UnderworldMapEarthTreasure" :
				if global.DeathAmountForTrigger.UnderworldMapEarthTreasure > 0
				{
					global.DeathAmountForTrigger.UnderworldMapEarthTreasure -= 1
				}
				if global.DeathAmountForTrigger.UnderworldMapEarthTreasure = 0
				{
					Script_Trigger_UnderworldMapEarthTreasure() //Spawn UnderworldMap_Earth Treasure Pickup
				}
				break
	}
	
	instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Particle_EnemyDefeat)
	if DropsItemOnDefeat = true
	{
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Pickup_ItemDrops)
	}
	instance_destroy();
	
}

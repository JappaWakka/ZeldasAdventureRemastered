//If the player is on the same tile
if IsPlayerOnSameTile() = true && global.CameraIsPanning = false
{
	//Activate
	visible = true;
	if alarm_get(0) = -1
	{
		if EnemyState = EnemyStates.Move
		{
			alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
		}
	}
	//Play enemy sound
	if alarm_get(1) = -1
	{
		alarm_set(1, random_range(2*FrameRate,6*FrameRate));
	}
	//Attack
	if alarm_get(2) = -1
	{
		if EnemyState != EnemyStates.Damaged && EnemyState != EnemyStates.Attack
		{
			alarm_set(2, random_range(0, 3 * FrameRate));
		}
	}
	//Player Damage
	//Melee
	if collision_circle(x,y,HitRadius,Entity_Hitbox_Spell_Wand,true,true)
	{
		if DamageDelay = 0 && ImmuneToWand = false
		{
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
	if IsMenuVisible = false
	{
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
		EnemyState = EnemyStates.Move
		timerIndex = 0
	}
	timerDuration = 4
}
if timerIndex = 1
{
	direction = HitFromDirection
	speed = d(4)
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
				if global.DeathAmountForTrigger.BoomerangSpell > 0
				{
					global.DeathAmountForTrigger.BoomerangSpell -= 1
				}
				if global.DeathAmountForTrigger.BoomerangSpell = 0
				{
					Script_Trigger_BoomerangSpell() //Spawn Boomerang Spell Pickup
				}
				break
	}
	
	instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Particle_EnemyDefeat)
	instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Pickup_ItemDrops)
	instance_destroy();
	
}

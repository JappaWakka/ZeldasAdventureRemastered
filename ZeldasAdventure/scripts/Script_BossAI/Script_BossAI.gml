enum BossIndexes
{
	Llort1, //1 = Regular
	Pasquinade1,
	Aviana1,
	Malmord1,
	Agwanda1,
	Ursore1,
	Warbane1,
	Llort2, // 2 = Gauntlet
	Pasquinade2,
	Aviana2,
	Malmord2,
	Agwanda2,
	Ursore2,
	Warbane2,
	Ganon,
}

function BossAI_SetSpriteIndex(BossIndex,SpriteIndex)
{
	var Sprite = -1
	switch BossIndex
	{
		case BossIndexes.Llort1:
		case BossIndexes.Llort2:
			switch SpriteIndex
			{
				case 0:
					Sprite = Sprite_Enemy_Boss_Llort_Move
					break;
				case 1:
					Sprite = Sprite_Enemy_Boss_Llort_Attack
					break;
			}
			break;
	}
	if Sprite <> -1
	{
		sprite_index = Sprite
		image_index = 0
	}
	return true
}

function BossAI_PlaySound(BossIndex)
{
	var Sound = -1
	switch BossIndex
	{
		case BossIndexes.Llort1:
		case BossIndexes.Llort2:
			Sound = SFX_Enemy_Llort
			break;
	}
	if Sound <> -1 and global.CurrentDialogue_Asset = Dialog_None
	{
		audio_play_sound_relative(Sound,1000,false)
	}
	return true
}

function BossAI_SpeedRange(xPos,yPos,xGoal,yGoal)
{
	var Distance = 0
	Distance = point_distance(xPos,yPos,xGoal,yGoal)
	if Distance > 150
		{return global.EnemySpeeds.Fast}
	if Distance <= 150 and Distance > 100
		{return global.EnemySpeeds.Medium}
	if Distance <= 100
		{return global.EnemySpeeds.Slow}
	
	return global.EnemySpeeds.Medium	
}

function BossAI_MoveToGoal(MoveToX,MoveToY)
{
	if MoveToGoal[0] <> MoveToX + tileWidth * global.CurrentTile.x and MoveToGoal[1] <> MoveToY + tileHeight * global.CurrentTile.y
	{
		MoveToGoal = [MoveToX + tileWidth * global.CurrentTile.x,MoveToY + tileHeight * global.CurrentTile.y]
		MoveSpeed = BossAI_SpeedRange(x,y,MoveToGoal[0],MoveToGoal[1])
	}
	
	if EnemyState != EnemyStates.Damaged
	{
		EnemyState = EnemyStates.Move
		image_speed = MoveSpeed
		
		if MoveToGoal[0] <> x or MoveToGoal[1] <> y
		{
			if MoveToGoal[0] > x + 0.6
			{
				x += MoveSpeed
				if MoveToGoal[0] <= x + 0.6
				{
					x = MoveToGoal[0]
				}
			}
			else if MoveToGoal[0] < x - 0.6
			{
				x -= MoveSpeed
				if MoveToGoal[0] >= x - 0.6
				{
					x = MoveToGoal[0]
				}
			}
			else
			{
				x = MoveToGoal[0]
			}
			
			if MoveToGoal[1] > y + 0.6
			{
				y += MoveSpeed
				if MoveToGoal[1] <= y + 0.6
				{
					y = MoveToGoal[1]
				}
			}
			else if MoveToGoal[1] < y - 0.6
			{
				y -= MoveSpeed
				if MoveToGoal[1] >= y - 0.6
				{
					y = MoveToGoal[1]
				}
			}
			else
			{
				y = MoveToGoal[1]
			}
		}
	}
	
	if x = MoveToGoal[0] and y = MoveToGoal[1]
	{
		image_speed = 0
		MoveToGoal = [-1,-1]
		return true
	}
	else
	{
		return false
	}
}

function BossAI_SetIsInvincible(Invincible)
{
	IsInvincible = Invincible
	return true
}

function BossAI_AnimateInPlace(TimeInCdiFrames)
{
	if Delay = -1
	{
		Delay = TimeInCdiFrames
	}
	
	if EnemyState != EnemyStates.Damaged
	{
		if Delay > 0
		{
			image_speed = 1
			Delay -=1
		}
	}
		
	if image_index = image_number -1
	{
		image_speed = 0
	}
	
	if Delay = 0
	{
		image_speed = 0
		Delay = -1
		return true
	}
	else
	{
		return false
	}
	
}
function BossAI_Wait(TimeInCdiFrames)
{
	if Delay = -1
	{
		Delay = TimeInCdiFrames
	}
	
	if EnemyState != EnemyStates.Damaged
	{
		if Delay > 0
		{
			Delay -=1
		}
	}
		
	if Delay = 0
	{
		Delay = -1
		return true
	}
	else
	{
		return false
	}
	
}

function BossAI_UseAttack(BossIndex)
{
	switch BossIndex
	{
		case BossIndexes.Llort1:
			
			if image_index = image_number -1
			{
				return true
			}
			else
			{
				image_speed = 1
			}
			if image_index = 2
			{
				BossAI_PlaySound(BossIndex)
				var xOffset = -16
				var yOffset = 32
				var Projectile_1 = instance_create_layer(x+xOffset,y+yOffset,"Temporary_AbovePlayer",Entity_Projectile_Boss_Llort1)
				Projectile_1.direction = global.Directions.South - 45
				var Projectile_2 = instance_create_layer(x+xOffset,y+yOffset,"Temporary_AbovePlayer",Entity_Projectile_Boss_Llort1)
				Projectile_2.direction = global.Directions.South + 45
				EnemyState = EnemyStates.Attack
			}
			
			break
	}
	return false
}

function BossAI_SetPattern(BossIndex)
{
	switch BossIndex
	{
		case BossIndexes.Llort1:
			CurrentPattern = [
				[BossAI_SetSpriteIndex,BossIndex,0],
				[BossAI_SetIsInvincible,false],
				[BossAI_MoveToGoal,100,82],
				[BossAI_SetSpriteIndex,BossIndex,1],
				[BossAI_SetIsInvincible,true],
				[BossAI_UseAttack,BossIndex],
				[BossAI_SetSpriteIndex,BossIndex,0],
				[BossAI_SetIsInvincible,false],
				[BossAI_MoveToGoal,204,122],
				[BossAI_MoveToGoal,288,82],
				[BossAI_SetSpriteIndex,BossIndex,1],
				[BossAI_SetIsInvincible,true],
				[BossAI_UseAttack,BossIndex],
				[BossAI_SetSpriteIndex,BossIndex,0],
				[BossAI_SetIsInvincible,false],
				[BossAI_MoveToGoal,204,142],
				[BossAI_SetSpriteIndex,BossIndex,1],
				[BossAI_SetIsInvincible,true],
				[BossAI_UseAttack,BossIndex],
				[BossAI_SetSpriteIndex,BossIndex,0],
				[BossAI_SetIsInvincible,false],
				[BossAI_MoveToGoal,300,154],
				[BossAI_MoveToGoal,112,154],
				[BossAI_MoveToGoal,204,82],
				[BossAI_SetSpriteIndex,BossIndex,1],
				[BossAI_SetIsInvincible,true],
				[BossAI_UseAttack,BossIndex],
				[BossAI_SetSpriteIndex,BossIndex,0],
				[BossAI_SetIsInvincible,false],
				[BossAI_MoveToGoal,204,92],
				[BossAI_Wait,1]
			]
			break;
	}
}
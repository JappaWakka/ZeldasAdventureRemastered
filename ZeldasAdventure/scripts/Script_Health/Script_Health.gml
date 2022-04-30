function DecreaseHP(Multiplier = 1)
{
	global.CurrentHealth -= global.DamagePerHit * Multiplier
}

function IncreaseHP(Multiplier = 1)
{
	global.CurrentHealth += global.DamagePerHit * Multiplier
}

function DecreaseMaxHealth()
{
	if global.MaxHealth > global.DamagePerHit * 2
	{
		global.MaxHealth -= global.DamagePerHit * 2
	}
	if global.CurrentHealth > global.MaxHealth
	{
		global.CurrentHealth = global.MaxHealth
	}
}

function IncreaseMaxHealth()
{
	if global.CurrentHealth == global.MaxHealth
	{
		global.CurrentHealth += global.DamagePerHit * 2
	}
	global.MaxHealth += global.DamagePerHit * 2
}

function FillHP()
{
	if global.CurrentHealth < global.MaxHealth
	{
		alarm[11] = 0.1 * room_speed
	}
}
			
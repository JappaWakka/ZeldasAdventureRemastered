function DecreaseHP(Amount = 10)
{
	global.CurrentHealth -= Amount
	if global.CurrentHealth < 0
	{
		global.CurrentHealth = 0
	}
}

function IncreaseHP(Amount = 10)
{
	global.CurrentHealth += Amount
	if global.CurrentHealth > global.MaxHealth
	{
		global.CurrentHealth = global.MaxHealth
	}
}

function DecreaseMaxHealth()
{
	if global.MaxHealth > 20
	{
		global.MaxHealth -= 20
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
		global.CurrentHealth += 20
	}
	global.MaxHealth += 20
}

function FillHP()
{
	if global.CurrentHealth < global.MaxHealth
	{
		Obj_GameManager.DoFillHearts = true
	}
}
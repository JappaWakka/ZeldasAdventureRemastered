function IncreaseDefenseAndPower(Amount = 1)
{
	global.Power += 2 * Amount
	global.Defense += 2 * Amount
}

function DecreaseDefenseAndPower(Amount = 1)
{
	global.Power -= 2 * Amount
	global.Defense -= 2 * Amount
}
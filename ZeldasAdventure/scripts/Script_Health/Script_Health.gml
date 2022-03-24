function Draw_Hearts()
{
	//Set Variables
	var _CurrentHearts = CurrentHearts;
	var _HeartFraction = frac(_CurrentHearts);
	_CurrentHearts -= _HeartFraction;
			
	//Draw Hearts
	for (var i = 1; i <= MaxHearts; i++)
	{
		var CurrentRow = floor((i - 1) / HeartsPerRow) 
		var HeartsOffset =
		{
			x : 240,
			y : 24,
		}
		HeartsOffset.y += HeartSeparation * CurrentRow;
		HeartsOffset.x -= CurrentRow * (HeartSeparation * HeartsPerRow);
		
		draw_sprite(Spr_Heart,
		(i > _CurrentHearts) + ((i == _CurrentHearts+1) && (_HeartFraction > 0)),
		HeartsOffset.x + ((i-1) * HeartSeparation),
		HeartsOffset.y
		)
	}
}

function DecreaseHP(Multiplier = 1)
{
	global.CurrentHealth -= global.HPAmountPerHit * Multiplier
}

function IncreaseHP(Multiplier = 1)
{
	global.CurrentHealth += global.HPAmountPerHit * Multiplier
}

function DecreaseMaxHealth()
{
	if global.MaxHealth > global.HPAmountPerHit * 2
	{
		global.MaxHealth -= global.HPAmountPerHit * 2
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
		global.CurrentHealth += global.HPAmountPerHit * 2
	}
	global.MaxHealth += global.HPAmountPerHit * 2
}

function FillHP()
{
	if global.CurrentHealth < global.MaxHealth
	{
		alarm[11] = 0.1 * room_speed
	}
}
			
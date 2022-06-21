function Draw_HUD_Hearts()
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
		
		draw_sprite(Sprite_HUD_Heart,
		(i > _CurrentHearts) + ((i == _CurrentHearts+1) && (_HeartFraction > 0)),
		HeartsOffset.x + ((i-1) * HeartSeparation),
		HeartsOffset.y
		)
	}
}
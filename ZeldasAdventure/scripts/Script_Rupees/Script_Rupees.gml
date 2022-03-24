function Draw_Rupees_Overworld()
{
	var _CurrentRupees = global.CurrentRupees
	var RupeeOffset =
	{
		x: 64,
		y: 24,
	}
	
	var LeadingZeroes = ""
	if _CurrentRupees < 100
	{
		LeadingZeroes = "0"
	}
	else
	{
		LeadingZeroes = ""
	}
	
	if _CurrentRupees < 10
	{
		LeadingZeroes = "00"
	}
	
	var RupeeFont = Font_RupeeHUD()
	var RupeeString = LeadingZeroes + string(_CurrentRupees)
	
	draw_sprite(Spr_Rupee,0,RupeeOffset.x - 14, RupeeOffset.y)
	draw_set_font(RupeeFont)
	draw_text(RupeeOffset.x,RupeeOffset.y,RupeeString)
}

function AddRupees(Amount)
{
	if audio_is_playing(SFX_Pickup_Rupee) = false
	{
		audio_play_sound(SFX_Pickup_Rupee,999,false)
	}
	global.DesiredRupees = clamp(global.CurrentRupees + Amount,0,999)
	
	if global.CurrentRupees < global.DesiredRupees
	{
		global.CurrentRupees += clamp(2, 1, global.DesiredRupees)
		alarm[9] = 0.02 * room_speed //Add Rupee Amount
		alarm[10] = 0.25 * room_speed //Play Rupee Sound
	}
}
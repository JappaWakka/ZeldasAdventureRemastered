function Draw_HUD_Rubies()
{
	var _CurrentRubies = global.CurrentRubies
	var RubyOffset =
	{
		x: 64,
		y: 24
	}
	
	var LeadingZeroes = ""
	if _CurrentRubies < 100
	{
		LeadingZeroes = "0"
	}
	else
	{
		LeadingZeroes = ""
	}
	
	if _CurrentRubies < 10
	{
		LeadingZeroes = "00"
	}
	
	var RubyFont = global.Font_RubiesOverworld
	var Rubystring = LeadingZeroes + string(_CurrentRubies)
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_sprite(Sprite_HUD_Ruby_Icon,0,RubyOffset.x - 14, RubyOffset.y)
	draw_set_font(RubyFont)
	draw_text(RubyOffset.x,RubyOffset.y,Rubystring)
	delete RubyOffset
}
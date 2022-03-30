function Draw_Rubies_Overworld()
{
	var _CurrentRubies = global.CurrentRubies
	var RubyOffset =
	{
		x: 64,
		y: 24,
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
	
	var RubyFont = Font_Rubies_Overworld()
	var Rubiestring = LeadingZeroes + string(_CurrentRubies)
	
	draw_sprite(Sprite_Ruby,0,RubyOffset.x - 14, RubyOffset.y)
	draw_set_font(RubyFont)
	draw_text(RubyOffset.x,RubyOffset.y,Rubiestring)
}
function Draw_Subtitle(x, y, text, textColor, textAlpha, outlineColor, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle)
{
	//By Blokatt - @blokatt, blokatt.net
	draw_set_alpha(1);
	draw_set_font(Font_Subtitles);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	var outlineQualityPercent = outlineQuality / 100;
	var i;
	for (i = 0; i < 360; i += outlineQualityPercent){
	    draw_text_ext_transformed_color(x + lengthdir_x(outlineThickness, i), y - 16 + lengthdir_y(outlineThickness, i), string(text),28, viewWidth * global.WindowScale / 2, xscale, yscale, angle, outlineColor, outlineColor, outlineColor, outlineColor, outlineAlpha);
	}
	draw_text_ext_transformed_color(x, y - 16, string(text),28, viewWidth * global.WindowScale / 2, xscale, yscale, angle, textColor, textColor, textColor, textColor, textAlpha);
}

function Subtitle_Cutscene_Intro(VideoPosition)
{
	if VideoPosition >= 37.318 and VideoPosition <= 39.505 {return "There'll be no more viewing tonight."}
	else if VideoPosition >= 56.667 and VideoPosition <= 59.817 {return "Ah, the Scroll of Shurmak..."}
	else if VideoPosition >= 59.842 and VideoPosition <= 62.448 {return "bearer of sad news these many years ago."}
	else if VideoPosition >= 65.156 and VideoPosition <= 70.599 {return "And so it was that Ganon, Lord of Darkness, had taken over Tolemac."}
	else if VideoPosition >= 70.885 and VideoPosition <= 75.130 {return "He had stolen the treasured Celestial Signs and captured Link!"}
	else if VideoPosition >= 75.964 and VideoPosition <= 80.911 {return "A brave warrior would have to be found to face this evil monster."}
	else if VideoPosition >= 94.453 and VideoPosition <= 98.958 {return "And so I've found this champion of strength and courage."}
	else if VideoPosition >= 99.197 and VideoPosition <= 104.934 {return "It is you, Princess Zelda. With this magic pendant, go forth."}
	else if VideoPosition >= 104.959 and VideoPosition <= 109.320 {return "And with each sign you gather, so too will you gain knowledge."}
	else if VideoPosition >= 109.834 and VideoPosition <= 111.619 {return "Find your magic wand..."}
	else if VideoPosition >= 112.099 and VideoPosition <= 116.228 {return "use it wisely, and listen to your allies along the way."}
	else if VideoPosition >= 116.814 and VideoPosition <= 123.075 {return "Go now, my princess. Restore the Celestial Signs and rescue Link."}
	else
	{
		return ""
	}
}
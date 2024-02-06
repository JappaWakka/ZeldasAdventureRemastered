function Draw_SkipCutscene(x, y, text, textColor, textAlpha, outlineColor, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle)
{
	//By Blokatt - @blokatt, blokatt.net
	draw_set_alpha(1);
	draw_set_font(Font_Regular);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	var outlineQualityPercent = outlineQuality / 100;
	var i;
	for (i = 0; i < 360; i += outlineQualityPercent){
	    draw_text_ext_transformed_color(x + lengthdir_x(outlineThickness, i), y - 16 + lengthdir_y(outlineThickness, i), string(text),32, ViewWidth * global.WindowScale / 2, xscale, yscale, angle, outlineColor, outlineColor, outlineColor, outlineColor, outlineAlpha);
	}
	draw_text_ext_transformed_color(x, y - 16, string(text),32, ViewWidth * global.WindowScale / 2, xscale, yscale, angle, textColor, textColor, textColor, textColor, textAlpha);
}

function Draw_Subtitles(x, y, text, textColor, textAlpha, outlineColor, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle)
{
	//By Blokatt - @blokatt, blokatt.net
	draw_set_alpha(1);
	var SubtitleFont = Font_Subtitles_1x
	switch global.WindowScale
	{
		case 1:
			SubtitleFont = Font_Subtitles_1x
			break;
		case 2:
			SubtitleFont = Font_Subtitles_2x
			break;
		case 3:
			SubtitleFont = Font_Subtitles_3x
			break;
		case 4:
			SubtitleFont = Font_Subtitles_4x
			break;
		case 5:
			SubtitleFont = Font_Subtitles_5x
			break;
		case 6:
			SubtitleFont = Font_Subtitles_6x
			break;
		default:
			SubtitleFont = Font_Subtitles_6x
			break;			
	}
	draw_set_font(SubtitleFont);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	var outlineQualityPercent = outlineQuality / 100;
	var i;
	for (i = 0; i < 360; i += outlineQualityPercent){
	    draw_text_ext_transformed_color(x + lengthdir_x(outlineThickness, i), y - 16 + lengthdir_y(outlineThickness, i), string(text), 12 * global.WindowScale, ViewWidth * global.WindowScale * 0.6, xscale, yscale, angle, outlineColor, outlineColor, outlineColor, outlineColor, outlineAlpha);
	}
	draw_text_ext_transformed_color(x, y - 16, string(text), 12 * global.WindowScale, ViewWidth * global.WindowScale * 0.6, xscale, yscale, angle, textColor, textColor, textColor, textColor, textAlpha);
}

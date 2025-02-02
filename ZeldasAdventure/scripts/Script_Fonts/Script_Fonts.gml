function Font_CreateFonts()
{
	global.Font_RubiesOverworld = font_add_sprite_ext(Sprite_HUD_Ruby_Font, "0123456789", false, 1);
	global.Font_KeyNumber = font_add_sprite_ext(Sprite_Inventory_KeyNumberFont, "0123456789", false, 0);
}

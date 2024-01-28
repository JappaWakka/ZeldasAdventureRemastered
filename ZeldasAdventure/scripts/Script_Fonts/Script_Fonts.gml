function Font_Rubies_Overworld()
{
	return font_add_sprite_ext(Sprite_HUD_Ruby_Font, "0123456789", false, 1);
	
}

function Font_KeyNumber()
{
	return font_add_sprite_ext(Sprite_Inventory_KeyNumberFont, "0123456789", false, 0);
}


function Font_SaveGameFont()
{
	return font_add_sprite_ext(Sprite_MainMenu_SaveFileFont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", true, 0);
}
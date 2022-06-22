var TreasurePositionX = 55 + INVENTORY_SEPARATOR
var TreasurePositionY = 119

if input_check_pressed("Inventory")
{
	if global.FadeAlpha = 0 && OpeningClosing = false
	{
		global.FadeProgress = 0;
		OpeningClosing = true;
	}
}
if OpeningClosing = true
{
	if global.FadeProgress > 0
	{
		if Alpha = 0
		{
			Alpha = 255;
			instance_deactivate_layer("PlayerAndNPCS");
			instance_deactivate_layer("Enemies");
		}
		else
		{
			Alpha = 0;
			instance_activate_layer("PlayerAndNPCS");
			instance_activate_layer("Enemies");
		}
		OpeningClosing = false;
	}
};
draw_sprite_ext(Sprite_Inventory_Background,0,0,0,1,1,0,c_white,Alpha);

var TreasureOffsetX = 0 - (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure

//Draw Treasure Items
var TreasureSurface = surface_create(218,34);
surface_set_target(TreasureSurface);
for (var i = 0; i < INVENTORY_SLOTS_TREASURE_USED; i += 1){
	if global.Inventory_Treasure[i] = true
	{
		draw_sprite_ext(
		Sprite_Inventory_Treasure,
		global.Treasure_Index[i],
		TreasureOffsetX,
		0,
		1,1,0,
		c_white,
		Alpha);
			
		TreasureOffsetX += 32 + INVENTORY_SEPARATOR;
		RemovedItems = clamp(RemovedItems - 1,0, INVENTORY_SLOTS_TREASURE_USED)
	}
}
surface_reset_target();
draw_surface(TreasureSurface,55 + INVENTORY_SEPARATOR,119)
//Draw cursor
var CursorPositionX = 
	clamp(
	TreasurePositionX
	+ (32 + INVENTORY_SEPARATOR) * SelectedIndex[0]
	- (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure,
	0,
	TreasureOffsetX + 55 + INVENTORY_SEPARATOR - (32 + INVENTORY_SEPARATOR)
	)

draw_sprite_ext(
	Sprite_Cursor,
	0,
	CursorPositionX + 24,
	TreasurePositionY + 24,
	1,1,0,
	c_white,
	Alpha);


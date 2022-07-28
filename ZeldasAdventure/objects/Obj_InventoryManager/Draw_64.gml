var TreasurePositionX = 55 + INVENTORY_SEPARATOR
var TreasurePositionY = 119

var SpellsPositionX = 55 + INVENTORY_SEPARATOR
var SpellsPositionY = 177

var TreasureOffsetX = 0 - (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure
var SpellsOffsetX = 0 - (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Spells

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


//Draw Treasure Items
var TreasureSurface = surface_create(218,34);
surface_set_target(TreasureSurface);
for (var i = 0; i < array_length(InventoryArray(0)); i += 1)
{
	draw_sprite_ext(
	Sprite_Inventory_Treasure,
	InventoryArray(0)[i],
	TreasureOffsetX,
	0,
	1,1,0,
	c_white,
	Alpha);
	
	TreasureOffsetX += 32 + INVENTORY_SEPARATOR;
}
surface_reset_target();
draw_surface(TreasureSurface,55 + INVENTORY_SEPARATOR,119)

//Draw Spell Items
var SpellsSurface = surface_create(218,34);
surface_set_target(SpellsSurface);
for (var i = 0; i < array_length(InventoryArray(1)); i += 1){
	draw_sprite_ext(
	Sprite_Inventory_Spells,
	InventoryArray(1)[i],
	SpellsOffsetX,
	0,
	1,1,0,
	c_white,
	Alpha);
		
	SpellsOffsetX += 32 + INVENTORY_SEPARATOR;
}
surface_reset_target();
draw_surface(TreasureSurface,55 + INVENTORY_SEPARATOR,119)

//Draw cursor
var CursorPositionX = 0
if InventoryIndex = 0
{
	CursorPositionX =
		clamp(
		TreasurePositionX
		+ (32 + INVENTORY_SEPARATOR) * SelectedIndex[0]
		- (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure,
		0,
		TreasureOffsetX + 55 + INVENTORY_SEPARATOR - (32 + INVENTORY_SEPARATOR)
		);

	draw_sprite_ext(
		Sprite_Cursor,
		0,
		CursorPositionX + 24,
		TreasurePositionY + 24,
		1,1,0,
		c_white,
		Alpha);
}
else if InventoryIndex = 1
{
	CursorPositionX =
		clamp(
		SpellsPositionX
		+ (32 + INVENTORY_SEPARATOR) * SelectedIndex[1]
		- (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Spells,
		0,
		SpellsPositionX + 55 + INVENTORY_SEPARATOR - (32 + INVENTORY_SEPARATOR)
		);

	draw_sprite_ext(
		Sprite_Cursor,
		0,
		CursorPositionX + 24,
		SpellsPositionY + 24,
		1,1,0,
		c_white,
		Alpha);
}

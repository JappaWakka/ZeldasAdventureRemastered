var TreasurePositionX = 55 + INVENTORY_SEPARATOR
var TreasurePositionY = 119

var SpellsPositionX = 55 + INVENTORY_SEPARATOR
var SpellsPositionY = 177

var TreasureOffsetX = 0 - (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure
var SpellsOffsetX = 0 - (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Spells


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

//Draw Keys
if Alpha = 255
{
	draw_set_font(Font_KeyNumber())
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	var KeysY = 119
	if global.RemasteredMode = true
	{
		KeysY = 100
	}
	draw_text(333,KeysY,global.CurrentKeys)
}

//Draw buttons
if Alpha = 255
{
	if InventoryIndex = 2
	{
		draw_sprite(Sprite_Inventory_Button_Map_Hover,0,39,35)
	}
	if InventoryIndex = 3
	{
		draw_sprite(Sprite_Inventory_Button_Exit_Hover,0,269,35)
	}
	draw_set_font(Font_Fancy)
	draw_set_color(make_color_rgb(55,23,16))
	draw_set_halign(fa_center)
	
	//Draw Map Button Text
	draw_text(76,46,UI_Inventory_Text(2))
	draw_text(76,46,UI_Inventory_Text(2)) // Make it extra thick
	
	//Draw Exit Button Text
	draw_text(304,46,UI_Inventory_Text(3))
	draw_text(304,46,UI_Inventory_Text(3)) // Make it extra thick
	
	//Reset Font Properties
	draw_set_color(c_white)
	draw_set_halign(fa_left)
}

//Draw Treasure Items
var TreasureSurface = surface_create(218,34);
surface_set_target(TreasureSurface);

for (var i = 0; i < ds_list_size(InventoryList(0)); i += 1)
{
	if Item_FindValue(i,0) != -1
	{
		draw_sprite_ext(
		Sprite_Inventory_Treasure,
		Item_FindValue(i,0), //ImageIndex
		TreasureOffsetX, 0, //position x,y
		1,1, //scale x,y
		0, //rotation
		c_white, //color
		Alpha);
		
		TreasureOffsetX += 32 + INVENTORY_SEPARATOR;
	}
}
surface_reset_target();
draw_surface(TreasureSurface,55 + INVENTORY_SEPARATOR,TreasurePositionY)

//Draw Spell Items
var SpellsSurface = surface_create(218,34);
surface_set_target(SpellsSurface);

for (var i = 0; i < ds_list_size(InventoryList(1)); i += 1)
{
	if Item_FindValue(i,1) != -1
	{
		draw_sprite_ext(
		Sprite_Inventory_Spells,
		Item_FindValue(i,1), //ImageIndex
		SpellsOffsetX, 0, //position x,y
		1,1, //scale x,y
		0, //rotation
		c_white, //color
		Alpha);
			
		SpellsOffsetX += 32 + INVENTORY_SEPARATOR;
	}
}
surface_reset_target();
draw_surface(SpellsSurface,55 + INVENTORY_SEPARATOR,SpellsPositionY)

//Draw CurrentItem(s)
if global.RemasteredMode = false
{
	if global.CurrentItem <> -1 && global.CurrentItem[1] <> -1
	{
		if global.CurrentItem[0] = 0
		{
			draw_sprite_ext(
			Sprite_Inventory_Treasure,
			Item_FindValue(global.CurrentItem[1],0), //ImageIndex
			319,
			146,
			1,1,0,
			c_white,
			Alpha);
		}
		else
		{
			draw_sprite_ext(
			Sprite_Inventory_Spells,
			Item_FindValue(global.CurrentItem[1],1),
			319,
			146,
			1,1,0,
			c_white,
			Alpha);
		}
	}
}
//Draw cursor
var CursorPositionX = 0
if InventoryIndex = 0
{
	if ds_list_size(InventoryList(0)) = 0
	{
		CursorPositionX = 55 + INVENTORY_SEPARATOR
	}
	else
	{
	CursorPositionX =
		clamp(
		TreasurePositionX
			+ (32 + INVENTORY_SEPARATOR) * SelectedIndex[0]
			- (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Treasure,
		0,
		TreasureOffsetX + 55 + INVENTORY_SEPARATOR - (32 + INVENTORY_SEPARATOR)
		);
	}
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
	if ds_list_size(InventoryList(1)) = 0
	{
		CursorPositionX = 55 + INVENTORY_SEPARATOR
	}
	else
	{
	CursorPositionX =
		clamp(
		SpellsPositionX
		+ (32 + INVENTORY_SEPARATOR) * SelectedIndex[1]
		- (32 + INVENTORY_SEPARATOR) * ScrollOffsetX_Spells,
		0,
		SpellsOffsetX + 55 + INVENTORY_SEPARATOR - (32 + INVENTORY_SEPARATOR)
		);
	}
	draw_sprite_ext(
		Sprite_Cursor,
		0,
		CursorPositionX + 24,
		SpellsPositionY + 24,
		1,1,0,
		c_white,
		Alpha);
}
else if InventoryIndex = 2
{
	draw_sprite_ext(
		Sprite_Cursor,
		0,
		96,
		64,
		1,1,0,
		c_white,
		Alpha);
}
else if InventoryIndex = 3
{
	draw_sprite_ext(
		Sprite_Cursor,
		0,
		320,
		64,
		1,1,0,
		c_white,
		Alpha);
}
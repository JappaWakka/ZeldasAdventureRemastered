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
			instance_deactivate_object(Entity_Parent_Player)
			if object_exists(Entity_Parent_NPC) = true
			{
				Entity_Parent_NPC.speed = 0;
				Entity_Parent_NPC.image_speed = 0;
				Entity_Parent_NPC.visible = false;
			}
			instance_deactivate_layer("Enemies");
		}
		else
		{
			Alpha = 0;
			instance_activate_object(Entity_Parent_Player)
			if object_exists(Entity_Parent_NPC) = true
			{
				Entity_Parent_NPC.speed = Entity_Parent_NPC.DefaultSpeed;
				Entity_Parent_NPC.image_speed = Entity_Parent_NPC.ImageSpeed;
				Entity_Parent_NPC.visible = true;
			}
			instance_activate_layer("Enemies");
		}
		OpeningClosing = false;
	}
};
draw_sprite_ext(Sprite_Inventory_Background,0,0,0,1,1,0,c_white,Alpha);

//Draw Keys
if Alpha = 255
{
	draw_set_font(Font_KeyNumber());
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	var KeysY = 119
	if global.RemasteredMode = true
	{
		KeysY = 100
	}
	draw_text(333,KeysY,global.CurrentKeys)
}

//Draw inventory labels
if Alpha = 255
{
	draw_set_font(Font_Small);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	//Treasures
	draw_text(98,97,UI_Inventory_Text(0))
	draw_text(98,97,UI_Inventory_Text(0)) // Make it extra thick
	
	//Weapons
	draw_text(94,156,UI_Inventory_Text(1))
	draw_text(94,156,UI_Inventory_Text(1)) // Make it extra thick
	
	//Reset Font Properties
	draw_set_color(c_white)
	draw_set_halign(fa_left)
}
//Draw buttons
if Alpha = 255
{
	if InventoryIndex = 2
	{
		draw_sprite(Sprite_Inventory_Button_Map,0,39,35)
	}
	if InventoryIndex = 3
	{
		draw_sprite(Sprite_Inventory_Button_Exit,0,269,35)
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

//Draw Scroll Indicators
if Alpha = 255
{
	if Scrolled[0] = -1
	{
		if Scrolled[1] = 0
		{
			draw_sprite(Sprite_Inventory_Button_ArrowLeft,0,26,114)
		}
		if Scrolled[1] = 1
		{
			draw_sprite(Sprite_Inventory_Button_ArrowLeft,0,26,172)
		}
	}
	if Scrolled[0] = 1
	{
		if Scrolled[1] = 0
		{
			draw_sprite(Sprite_Inventory_Button_ArrowRight,0,290,115)
		}
		if Scrolled[1] = 1
		{
			draw_sprite(Sprite_Inventory_Button_ArrowRight,0,290,173)
		}
	}
	
}

//Draw Celestial Signs
for (var i = 0; i < ds_list_size(InventoryList(2)); i += 1)
{
	if Item_FindValue(i,2) != -1
	{
		draw_sprite_ext(
		Sprite_Inventory_CelestialSigns,
		Item_FindValue(i,2), //ImageIndex
		153, 28, //position x,y
		1,1, //scale x,y
		0, //rotation
		c_white, //color
		Alpha);
	}
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
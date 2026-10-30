function Script_BeforeSlide()
{
	instance_deactivate_object(Entity_Enemy_Jackaroo)
}
function Script_AfterSlide()
{
	global.CanControlPlayer = true
	if instance_exists(Entity_Player) = true
	{
		Entity_Player.visible = true
	}
	if global.RemasteredMode = false
	{
		if instance_number(Entity_Enemy_Jackaroo) <> 3
		{
			instance_destroy(Entity_Enemy_Jackaroo)
			instance_create_layer(7416,6328,"Enemies_BelowForeground",Entity_Enemy_Jackaroo)
			instance_create_layer(7378,6437,"Enemies_BelowForeground",Entity_Enemy_Jackaroo)
			instance_create_layer(7616,6436,"Enemies_BelowForeground",Entity_Enemy_Jackaroo)
		}
	}
	instance_activate_region(global.CurrentTile.x * tileWidth, global.CurrentTile.y *tileHeight, tileWidth, tileHeight,true);
	if instance_exists(Entity_Enemy_Jackaroo) = true
	{
		Entity_Enemy_Jackaroo.visible = true
	}
}

function NPCPath_ShrineOfIllusion_ZeldaSlide()
{
	CurrentPath = [
		[0,0,"executescript",Script_BeforeSlide],
		[0,0,"setvisible",true],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[-4,6,"move"],
		[0,0,"setvisible",false],
		[0,0,"executescript",Script_AfterSlide],
		[0,0,"remove"]
	]	
}

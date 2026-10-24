function Script_AfterSlide()
{
	global.CanControlPlayer = true
	if instance_exists(Entity_Player) = true
	{
		Entity_Player.visible = true
	}
	instance_activate_region(global.CurrentTile.x * tileWidth, global.CurrentTile.y *tileHeight, tileWidth, tileHeight,true);
}

function NPCPath_ShrineOfIllusion_ZeldaSlide()
{
	CurrentPath = [
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

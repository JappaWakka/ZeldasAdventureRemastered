function collisions(x_target,y_target)
{
	var FreeToMove = true
	////Solid Objects
	if place_meeting(x_target, y_target, Parent_Solid)
	{
		FreeToMove = false
	}
	
	////Objects that only Projectiles can pass through
	if place_meeting(x_target, y_target, Parent_ProjectilesCanPass)
	{
		FreeToMove = false
	}
	
	//Red Boots
	if Item_FindIndex(Treasures.RedBoots,0) = -1
	{
		if place_meeting(x_target, y_target, Parent_UseItem_RedBoots)
		{
			FreeToMove = false
		}
	}
	
	//Fairy Fountains
	if place_meeting(x_target, y_target, Parent_FairyFountain)
	{
		FreeToMove = false
	}
	if place_meeting(x_target, y_target, FairyFountain_ForestOfTorian_08)
	{
		FairyFountain_ForestOfTorian_08.Trigger_Start = true
	}
	
	return FreeToMove
}
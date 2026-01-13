if IsPlayerOnSameTile() = true
{	
	if Item_FindIndex(Spells.Wand,1) = -1
	{
		visible = true;
	}
	else
	{
		instance_destroy()
	}
}
else
{
	visible = false
}
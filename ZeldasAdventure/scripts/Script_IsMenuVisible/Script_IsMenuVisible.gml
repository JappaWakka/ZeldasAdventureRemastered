// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsMenuVisible()
{
	if room = Room_Overworld
	{
		if Obj_InventoryManager.Alpha = 0 and Obj_InventoryManager.OpeningClosing = false
		and Obj_WorldMapManager.Alpha = 0 and Obj_WorldMapManager.OpeningClosing = false
		and Obj_ExitMenuManager.Alpha = 0 and Obj_ExitMenuManager.OpeningClosing = false
		{
			return false
		}
		else
		{
			return true
		}
	}
	else
	{
		return true
	}
}
function IsOtherMenuThanInventoryVisible()
{
	if room = Room_Overworld
	{
		if Obj_WorldMapManager.Alpha = 0 and Obj_WorldMapManager.OpeningClosing = false
		and Obj_ExitMenuManager.Alpha = 0 and Obj_ExitMenuManager.OpeningClosing = false
		{
			return false
		}
		else
		{
			return true
		}
	}
	else
	{
		return true
	}
}
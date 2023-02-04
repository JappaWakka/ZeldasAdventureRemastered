/// @description Change Ruby Amount
if global.CurrentRubies != global.DesiredRubies
{
	if global.CurrentRubies < global.DesiredRubies //Add Ruby Amount
	{
		global.CurrentRubies = clamp(global.CurrentRubies + 2, 0, global.DesiredRubies)
	}
	
	if global.CurrentRubies > global.DesiredRubies //Remove Ruby Amount
	{
		global.CurrentRubies = clamp(global.CurrentRubies - 2, global.DesiredRubies, 999)
	}
	alarm[9] = 0.02 * room_speed
}
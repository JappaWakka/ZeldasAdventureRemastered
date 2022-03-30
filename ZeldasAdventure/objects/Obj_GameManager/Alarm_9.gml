/// @description Add Ruby Amount
if global.CurrentRubies < global.DesiredRubies
{
	global.CurrentRubies = clamp(global.CurrentRubies + 2, 0, 999)
	alarm[9] = 0.02 * room_speed //Add Ruby Amount
}
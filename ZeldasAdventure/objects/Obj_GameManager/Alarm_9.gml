/// @description Add Rupee Amount
if global.CurrentRupees < global.DesiredRupees
{
	global.CurrentRupees += clamp(2, 1, global.DesiredRupees)
	alarm[9] = 0.02 * room_speed //Add Rupee Amount
}
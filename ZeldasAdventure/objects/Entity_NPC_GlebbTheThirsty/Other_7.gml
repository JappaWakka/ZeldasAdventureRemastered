/// @description Stop animating and set Alarm 0
if EnableAnimationAlarm = true
{
	Animating = false
	alarm[0] = irandom_range(1*60,3*60)
}
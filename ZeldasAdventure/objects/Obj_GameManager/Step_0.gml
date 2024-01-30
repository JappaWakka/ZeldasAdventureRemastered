/// Update Delta Time
delta_step()

if room = Room_Overworld
{
	if global.HasSpawned = false
	{
		WarpToLocation(global.PlayerSpawn)
		if global.FadeProgress = 2 {global.HasSpawned = true}
	}
}
//Update Alarms

//Change Ruby amount & Play Ruby sound
if global.CurrentRubies != global.DesiredRubies
{
	run_alarms(ChangeRubyAlarms)
}
else
{
	ChangeRubyAlarms[0].restart()
	ChangeRubyAlarms[1].restart()
}

//Fill Hearts
if DoFillHearts = true
{
	if global.CurrentHealth < global.MaxHealth
	{
		run_alarm(FillHeartsAlarm)
	}
	else
	{
		DoFillHearts = false
		FillHeartsAlarm.restart()
	}
}
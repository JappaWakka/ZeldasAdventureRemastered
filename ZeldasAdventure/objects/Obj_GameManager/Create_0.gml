///@description Set Initial Stuff
if room = Room_Overworld
{
	instance_create_layer(Entity_Player.x,Entity_Player.y,"PlayerAndNPCParent",Entity_Collision_Player)
	
	var CurrentFilePath = string_concat(Meta.Languages[global.CurrentLanguage].SpritesFolder,"\\",PathToFile)
	var DefaultFilePath = string_concat(Meta.Languages[0].SpritesFolder,"\\",PathToFile)
	
	if directory_exists(working_directory + CurrentFilePath) = true or directory_exists(working_directory + DefaultFilePath) = true
	{
		layer_set_visible("LocalizedForeground_English",false)
	}
}
Camera_Init()

//Define Alarms, enable looping
ChangeRubyAlarms = create_alarm_array(2);
ChangeRubyAlarms[0] = new Alarm(1, ChangeRubyAmount, true);
ChangeRubyAlarms[1] = new Alarm(15, PlayRubySound, true);

global.HasSpawned = false
if room != Room_Overworld
{
	global.PlayerIsDead = false
}
if global.PlayerIsDead = false
{
	global.HasResetEnemies = true
}
DoFillHearts = false
FillHeartsAlarms = create_alarm_array(2);
FillHeartsAlarms[0] = new Alarm(6, IncreaseHP, true);
FillHeartsAlarms[1] = new Alarm(15, PlayOriginalHeartFillSound, true);
///@description Set Initial Stuff
if room = Room_Overworld
{
	instance_create_layer(Entity_Player.x,Entity_Player.y,"PlayerAndNPCParent",Entity_Collision_Player)
}
Camera_Init()

//Define Alarms, enable looping
ChangeRubyAlarms = create_alarm_array(2);
ChangeRubyAlarms[0] = new Alarm(1, ChangeRubyAmount, true);
ChangeRubyAlarms[1] = new Alarm(15, PlayRubySound, true);

global.HasSpawned = false
DoFillHearts = false
FillHeartsAlarm = new Alarm(6, IncreaseHP, true);
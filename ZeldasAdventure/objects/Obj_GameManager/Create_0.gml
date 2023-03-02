///@description Set Initial Stuff
Camera_Init()

//Define Alarms, enable looping
ChangeRubyAlarms = create_alarm_array(2);
ChangeRubyAlarms[0] = new Alarm(1, ChangeRubyAmount, true);
ChangeRubyAlarms[1] = new Alarm(15, PlayRubySound, true);

DoFillHearts = false
FillHeartsAlarm = new Alarm(6, IncreaseHP, true);
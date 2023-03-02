#macro __SW_VERSION "v1.1.0"
#macro __SW_PREFIX "[Stopwatch]"
#macro __SW_SOURCE "https://github.com/Lojemiru/Stopwatch"

function __sw_log_force(_msg) {
	show_debug_message(__SW_PREFIX + " " + _msg);
}

__sw_log_force("Loading Stopwatch " + __SW_VERSION + " by Lojemiru...");
__sw_log_force("For assistance, please refer to " + __SW_SOURCE);

/// @func							Alarm(time, function, [loop], [resetTime])
/// @desc							Instantiates a new Alarm struct that will trigger a function
///									once its internal timer has reached 0. This timer must be run
///									by another object!
/// @arg {int} time					The amount of time the Alarm should wait before triggering.
/// @arg {method} function			The function to run when the Alarm is triggered.
/// @arg {bool} [loop]				Optional. Defaults to false. Whether or not the Alarm should loop.
/// @arg {int} [resetTime]			Optional. Defaults to time. Specifies a custom value to use to on 
///									loop or reset instead of the starting time.
function Alarm(_time, _function, _loop = false, _startTime = _time) constructor {
	/// @func							run();
	/// @desc							Counts down Alarm by 1. If Alarm reaches 0, triggers input function and conditionally resets the alarm.
	static run = function() {
		time -= time > -1;
		if (time == 0) {
			func();
			// -1 if not looping, startTime if looping
			time = (startTime * loop) - !loop;
		}
	}
	
	/// @func							restart();
	/// @desc							Reset the Alarm to its restart time.
	static restart = function() {
		time = startTime;
	}
	
	loop = _loop;
	
	// This works with globally-defined methods too, surprisingly!
	func = method(other, _function);
	
	time = _time;
	
	startTime = _startTime;
}

#region BEHAVIOR WRAPPERS - you could implement these manually, but most use cases will warrant using these.

/// @func							run_alarm(alarm)
/// @desc							Safely runs a single Alarm, exiting if it does not exist.
/// @arg {struct} alarm				The Alarm to run.
function run_alarm(_alarm) {
	if (typeof(_alarm) != "struct") return;
	_alarm.run();
}

/// @func							run_alarms(array)
/// @desc							Safely runs an array of Alarms using run_alarm.
/// @arg {array} array				The array of Alarms to run.
function run_alarms(_array) {
	if (typeof(_array) != "array") return;
	var i = 0;
	repeat (array_length(_array)) {
		run_alarm(_array[i]);
		++i;
	}
}

/// @func							create_alarm_array(size)
/// @desc							Returns an array of the given size, initialized to noone
///									and ready to be populated with Alarms.
/// @arg {int} size					The size of the Alarm array.
function create_alarm_array(_size) {
	return array_create(_size, noone);
}

#endregion

__sw_log_force("Loaded.");
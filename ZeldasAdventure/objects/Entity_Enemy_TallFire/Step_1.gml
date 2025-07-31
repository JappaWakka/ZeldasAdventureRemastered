/// @description Reduce ExistDuration Counter and destroy when done.
if ExistDuration > 0
{
	ExistDuration -=1
}
else
{
	instance_destroy()
}
	







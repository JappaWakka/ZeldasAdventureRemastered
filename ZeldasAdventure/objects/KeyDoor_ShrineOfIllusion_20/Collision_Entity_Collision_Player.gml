if Register_Registered(Registers.KeyDoor_20) = false and global.CurrentKeys > 0
{
	global.CurrentKeys -=1
	Register_Add(Registers.KeyDoor_20)
	instance_destroy()
}
if Register_Registered(Registers.KeyDoor_17) = false and global.CurrentKeys > 0
{
	global.CurrentKeys -=1
	Register_Add(Registers.KeyDoor_17)
	instance_destroy()
}
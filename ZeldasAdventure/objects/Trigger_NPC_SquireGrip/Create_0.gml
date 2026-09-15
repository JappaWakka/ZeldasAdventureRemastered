HasTalked = false
if Register_Registered(Registers.SquireGrip_SoBusyGotToGo) = false and global.RemasteredMode = true
{
	instance_destroy(Entity_NPC_SquireGrip)
	instance_destroy()
}
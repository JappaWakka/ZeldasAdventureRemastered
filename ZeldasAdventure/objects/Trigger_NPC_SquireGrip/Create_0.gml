HasTalked = false
if Register_Registered(Registers.SquireGrip_SoBusyGotToGo) = false
{
	instance_destroy(Entity_NPC_SquireGrip)
	instance_destroy()
}
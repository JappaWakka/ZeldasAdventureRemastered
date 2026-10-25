if Item_FindIndex(Treasures.Raft,0) <> -1 or Register_Registered(Registers.Raft_Placed) = true
{
	instance_destroy()
}
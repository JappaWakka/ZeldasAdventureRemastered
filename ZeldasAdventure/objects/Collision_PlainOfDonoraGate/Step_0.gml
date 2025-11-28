if Register_Registered("DonoraGateFeePaid") = false
{
	if IsPlayerOnSameTile() = true && global.CameraIsFading = false
	{
		var GateFee = 10
		if Register_Registered("DonoraGateAttacked")
		{
			GateFee = 20
		}
		if global.RemasteredMode = false and Entity_Player.IsAttacking = false
		{
			if input_check_pressed("action1") = true or input_check_pressed("action2") = true
			{
				if global.CurrentItem[0] = 0 && Item_FindValue(global.CurrentItem[1],0) = Treasures.Rubies and global.CurrentRubies >= GateFee
				{
					RemoveRubies(GateFee);
					Register_Add("DonoraGateFeePaid")
				}
				
			}
		}
		if global.RemasteredMode = true and Entity_Player.IsAttacking = false
		{
			if input_check_pressed("action2") = true
			{
				if global.CurrentRubies >= GateFee
				{
					RemoveRubies(GateFee);
					Register_Add("DonoraGateFeePaid")
				}
			}
		}
	}
}
else
{
	//Temporarily Block Progress// instance_destroy()
}
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	if EnemyState != EnemyStates.Damaged
	{
		var ArgAmount = array_length(CurrentPattern[StepIndex]) - 1
		CanContinue = false
		switch ArgAmount
		{
			case 1:
				CanContinue = script_execute(CurrentPattern[StepIndex][0],CurrentPattern[StepIndex][1]);
				break;
			case 2:
				CanContinue = script_execute(CurrentPattern[StepIndex][0],CurrentPattern[StepIndex][1],CurrentPattern[StepIndex][2]);
				break;
			//case 3:
			//	CanContinue = script_execute(CurrentPattern[StepIndex][0],CurrentPattern[StepIndex][1],CurrentPattern[StepIndex][2],CurrentPattern[StepIndex][3]);
			//	break;
		}
		if CanContinue = true
		{
			StepIndex += 1
		}
		if StepIndex > array_length(CurrentPattern) - 1
		{
			StepIndex = 0
		}
	}
}
OriginX = x;
OriginY = y;
image_speed = 0
image_index = 0
Animating = true

visible = false

//If Gwynla is Gone
if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = true and Item_FindIndex(Spells.Noise,1) <> -1
{
	visible = true
}

if global.RemasteredMode = false
{
	if Register_Registered(Registers.Lonlyn_Greetings) = true and Register_Registered(Registers.Lonlyn_HasGivenMoney) = true
	{
		instance_destroy()
	}
}
else
{
	if Register_Registered(Registers.Lonlyn_CannotHelpYou) = true
	{
		instance_destroy()
	}
}
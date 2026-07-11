if Triggered = true
{
	if Register_Registered("EnteredWhiteSteedLodge") = false
	{
		Register_Add("EnteredWhiteSteedLodge")
	}
	WarpToLocation("WhiteSteedLodge_Inside")
}
if global.FadeProgress = 2
{
	Triggered = false
}
/// @description Change the currently visible map
if global.DebugMode = true and room = Room_Overworld
{
	BackgroundIndex +=1
	if BackgroundIndex > 8
	{
		BackgroundIndex = 0
	}
	TitleIndex = BackgroundIndex
}

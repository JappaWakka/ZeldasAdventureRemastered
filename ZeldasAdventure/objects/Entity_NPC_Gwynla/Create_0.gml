OriginX = x;
OriginY = y;
image_speed = 0
image_index = 0
Animating = true

if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = true and Item_FindIndex(Spells.Noise,1) <> -1
{
	instance_destroy()
}
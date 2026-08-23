/// @description Remove if Sardaks are defeated
// You can write your code in this editor

if Register_Registered(Registers.RedSardak_Defeated) = true and
Register_Registered(Registers.BlueSardak_Defeated) = true and
Register_Registered(Registers.YellowSardak_Defeated) = true
{
	instance_destroy()
}
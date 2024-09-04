/// @description Remove if Sardaks are defeated
// You can write your code in this editor

if Register_Registered("RedSardakDefeated") = true and
Register_Registered("BlueSardakDefeated") = true and
Register_Registered("YellowSardakDefeated") = true
{
	instance_destroy()
}
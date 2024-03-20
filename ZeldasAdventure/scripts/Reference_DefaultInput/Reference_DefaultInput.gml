function DefaultInput(){
return
	{
	up:    input_binding_key(vk_up),
    down:  input_binding_key(vk_down),
    left:  input_binding_key(vk_left),
    right: input_binding_key(vk_right),
    
    action1:  input_binding_key(ord("Z")),
    action2: input_binding_key(ord("X")),
    inventory:  input_binding_key(ord("C")),
    menu:  input_binding_key(vk_escape),
    map:  input_binding_key(ord("V")),
	accept: input_binding_key(vk_enter),
	}
}

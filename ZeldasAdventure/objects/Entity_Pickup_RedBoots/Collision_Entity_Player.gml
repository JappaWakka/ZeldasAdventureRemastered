///Add RedBoots to Inventory
audio_play_sound_relative(SFX_Pickup_Item,100,false)
Item_Add(Treasures.RedBoots,0)
instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
instance_destroy()

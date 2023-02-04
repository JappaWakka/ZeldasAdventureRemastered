/// @description Destroy when not picked up
instance_create_layer(x,y,"Temporary_BelowPlayer",Particle_ItemDrop_Disappear)
instance_destroy();
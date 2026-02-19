/// @description Pickup
Register_Add("CrystalHeart_TreeTrunk")
IncreaseMaxHealth()
instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
instance_destroy();
audio_play_sound_relative(SFX_Pickup_Item,1000,false);
/// @description Continous Events
#region Movement

if global.CameraIsPanning = false and IsAttacking = false
{
xx = input_check("Right") - input_check("Left");
yy = input_check("Down") - input_check("Up");
}
else
{
	xx = false
	yy = false
}
PlayerHorizontalSpeed = xx * PlayerSpeed; //Your speed(PlayerSpeed) Variable in create event
PlayerVerticalSpeed = yy * PlayerSpeed; //Your speed(PlayerSpeed) Variable in create event

#endregion

#region Collision
////Solid Objects
// Horz(x) speed collision
if(place_meeting(x + PlayerHorizontalSpeed, y, Parent_Solid))
{
	while(!place_meeting(x + sign(PlayerHorizontalSpeed), y, Parent_Solid))
	{
		x += sign(PlayerHorizontalSpeed);
	}
	PlayerHorizontalSpeed = 0;
}
 else
{
	x += PlayerHorizontalSpeed;
}
// Vert(y) speed collision
if(place_meeting(x, y + PlayerVerticalSpeed, Parent_Solid))
{
	while(!place_meeting(x, y + sign(PlayerVerticalSpeed), Parent_Solid))
	{
		y += sign(PlayerVerticalSpeed);
	}
   PlayerVerticalSpeed = 0;
}
else
{
	y += PlayerVerticalSpeed;
}

////Red Boots Water
if global.Inventory.Treasure[Treasure.RedBoots] = false
{
	// Horz(x) speed collision
	if(place_meeting(x + PlayerHorizontalSpeed, y, Parent_UseItem_RedBoots))
	{
		while(!place_meeting(x + sign(PlayerHorizontalSpeed), y, Parent_UseItem_RedBoots))
		{
			x += sign(PlayerHorizontalSpeed);
		}
		PlayerHorizontalSpeed = 0;
	}
	 else
	{
		x += PlayerHorizontalSpeed;
	}
	// Vert(y) speed collision
	if(place_meeting(x, y + PlayerVerticalSpeed, Parent_UseItem_RedBoots))
	{
		while(!place_meeting(x, y + sign(PlayerVerticalSpeed), Parent_UseItem_RedBoots))
		{
			y += sign(PlayerVerticalSpeed);
		}
	   PlayerVerticalSpeed = 0;
	}
	else
	{
		y += PlayerVerticalSpeed;
	}
}

#endregion

#region SpriteChanges & Direction

AnimSpeed = 1
if global.CameraIsPanning = false
{
	if IsAttacking = false
	{
		if(input_check("Right") = true and input_check("Left") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_East;
			Facing = "East"
		}
		else if(input_check("Left") = true and input_check("Right") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_West;
			Facing = "West"
		}
		else if(input_check("Down") = true and input_check("Up") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_South;
			Facing = "South"
		}
		else if(input_check("Up") = true and input_check("Down") = false)
		{
			image_speed = AnimSpeed;
			sprite_index = Zelda_Move_North;
			Facing = "North"
		}
		else
		{
			image_speed = 0;
		}
	}
}
else
{
	image_speed = 0;
}


#region Action - Use Weapon
if input_check_pressed("Attack") = true and IsAttacking = false
{
	if global.Inventory.Spells[Spells.Wand] = true
	{
		//Set sprite, enable animation
		if Facing = "East"
		{
			sprite_index = Zelda_Attack_East;
			IsAttacking = true;
		}
		if Facing = "West"
		{
			sprite_index = Zelda_Attack_West;
			IsAttacking = true;
		}
		if Facing = "South"
		{
			sprite_index = Zelda_Attack_South;
			IsAttacking = true;
		}
		if Facing = "North"
		{
			sprite_index = Zelda_Attack_North;
			IsAttacking = true;
		}
		
		// Use Spell - Wand
		if global.CurrentSpell = Spells.Wand
		{
			audio_play_sound(SFX_Use_Wand,false,false)
			if Facing = "East"
			{
				instance_create_layer(x,y,"Temporary",Entity_Hitbox_Spell_Wand)
			}
			if Facing = "West"
			{
				instance_create_layer(x,y,"Temporary",Entity_Hitbox_Spell_Wand)
			}
			if Facing = "South"
			{
				instance_create_layer(x,y,"Temporary",Entity_Hitbox_Spell_Wand)
			}
			if Facing = "North"
			{
				instance_create_layer(x,y,"Temporary",Entity_Hitbox_Spell_Wand)
			}
		}
	}
	else
	{
		audio_play_sound(SFX_Use_Error,false,false)
	}
}
if IsAttacking = true
{
	image_speed = AnimSpeed;
}
#endregion

#endregion

if DamageDelay > 0
{
	DamageDelay -=1
}
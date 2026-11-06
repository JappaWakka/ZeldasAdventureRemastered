var DrawStart =
{
	x : (x / 384 - frac(x / 384)) * 384,
	y : (y / 240 - frac(y / 240)) * 240,
}
draw_set_color(make_color_rgb(16,16,16))
draw_set_alpha(Alpha)
draw_rectangle(DrawStart.x,DrawStart.y,DrawStart.x + 384,DrawStart.y + 240,false)
draw_set_color(c_white)
draw_set_alpha(1)

if Alpha > 0 && IsMenuVisible() = false && IsPlayerOnSameTile() = true
{
	//Draw Player
	with Entity_Player
	{
		draw_self()
	}
	//Draw Enemies
	if instance_exists(Entity_Parent_Enemy) = true
	{
		with Entity_Parent_Enemy
		{
			switch timerIndex
			{
				case 1 :
				{
					image_alpha = 0;
					draw_self();
					break;
				}
				case 2 :
				{
					image_alpha = 1;
					draw_self();
					break;
				}
				case 3 :
				{
					shader_set(Shader_ColorOverlay);
					shader_set_uniform_f(_uniMix, 1);
					if DamageOrImmune = "Damage"
					{
						shader_set_uniform_f_array(_uniColor, global.ColorYellow);
					}
					else
					{
						shader_set_uniform_f_array(_uniColor, global.ColorBlue);
					}
					draw_self();
					shader_reset();
					break;
				}
				case 4 :
				{
					draw_self();
					break;
				}
				case 5 :
				{
					shader_set(Shader_ColorOverlay);
					shader_set_uniform_f(_uniMix, 1);
					if DamageOrImmune = "Damage"
					{
						shader_set_uniform_f_array(_uniColor, global.ColorRed);
					}
					else
					{
						shader_set_uniform_f_array(_uniColor, global.ColorBlue);
					}
					draw_self();
					shader_reset();
					break;
				}
				case 0 :
				{
					draw_self();
					break;
				}
			}
		}
	}
	//Draw Projectiles
	if instance_exists(Entity_Parent_Projectile_Player) = true
	{
		with Entity_Parent_Projectile_Player
		{
			draw_self()
		}
	}
	//Draw Projectiles
	if instance_exists(Entity_Parent_Projectile_Enemy) = true
	{
		with Entity_Parent_Projectile_Enemy
		{
			draw_self()
		}
	}
	//Draw Particles
	if instance_exists(Entity_Particle_EnemyDefeat) = true
	{
		with Entity_Particle_EnemyDefeat
		{
			draw_self()
		}
	}
	//Draw Item Drops
	if instance_exists(Entity_Parent_Pickup_ItemDrops) = true
	{
		with Entity_Parent_Pickup_ItemDrops
		{
			draw_self()
		}
	}
}

if ForegroundSprite != noone
{
	draw_sprite_ext(ForegroundSprite,0,DrawStart.x,DrawStart.y,1,1,0,c_white,Alpha * 0.5)
}
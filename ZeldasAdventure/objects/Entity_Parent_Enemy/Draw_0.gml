if StartDamageAnimation = true
{
	timerDuration = 4
	timerIndex = 1
	StartDamageAnimation = false
}
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
		shader_set_uniform_f_array(_uniColor, global.ColorYellow);
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
		shader_set_uniform_f_array(_uniColor, global.ColorRed);
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
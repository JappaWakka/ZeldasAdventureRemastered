/// @description Draw the frame to the screen

draw_set_color(c_white);

// rembember to check if video exists when interacting with video.
// if you get a crash it is likely because you a trying to interact
// with memory that no longer exists or doesn't exist yet (video).
if (webm_exists(CurrentVideo)) {
	
	if (!surface_exists(VideoSurface))
	{
	  // create a squeaky clean totally empty surface for our needs.
	  VideoSurface = surface_create(VideoWidth, VideoHeight);
	  surface_set_target(VideoSurface);
	  draw_clear_alpha(c_black, 0);
	  surface_reset_target();
	}
	// then we just slap the video frame on that surf.
	var contrast = 1.15
	shader_set(shader)
	shader_set_uniform_f(u_contrast,contrast)
	buffer_set_surface(BufferVideo, VideoSurface, 0);
	draw_surface_stretched(VideoSurface, 0, 0, VideoWidth,VideoHeight);
	shader_reset()
}

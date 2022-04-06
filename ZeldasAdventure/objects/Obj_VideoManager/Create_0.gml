/// @description And so it begins

CurrentVideo = -1;

if room = Room_Cutscene_Logos
{
	FileName = working_directory + "Cutscenes/Cutscene_Logos.webm";
}
else if room = Room_Cutscene_Intro
{
	FileName = working_directory + "Cutscenes/Cutscene_Intro.webm";
}
else
{
	FileName = ""
}
if (file_exists(FileName))
{
	CurrentVideo = webm_add(FileName);
	webm_play(CurrentVideo);
	VideoWidth = webm_get_width(CurrentVideo);
	VideoHeight = webm_get_height(CurrentVideo);
	
	BufferPixel = buffer_sizeof(buffer_u64); // size of one pixel
	BufferVideo = buffer_create(BufferPixel * VideoWidth * VideoHeight, buffer_fixed, BufferPixel);
	VideoSurface = -1; // surfaces should be created in Draw events only!
	VideoPosition = webm_get_playtime(CurrentVideo);
	shader = Shader_Contrast
	u_contrast = shader_get_uniform(shader,"contrast")
	// a hackfix for GM's internal 'used bytes' counter:
  buffer_poke(BufferVideo, buffer_get_size(BufferVideo) - 1, buffer_u8, 0);
  // just poke 0 at the very end, so we ensure everything is allocated properly.
  // probably not needed since GMS2.3+?
}

// fixes window close button on unix-likes with kwin/kde.
window_set_size(window_get_width(), window_get_height());
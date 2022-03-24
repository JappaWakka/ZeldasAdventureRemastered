// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VideoManager_Stop(){

	if (video_exists(CurrentVideo)) {

	buffer_delete(BufferVideo);
	surface_free(VideoSurface);

	video_stop(CurrentVideo);
	video_delete(CurrentVideo);

	}
}
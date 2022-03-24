/// @description Don't forget to *always* free buffers and surfaces.

if (video_exists(CurrentVideo)) {

  buffer_delete(BufferVideo);
  surface_free(VideoSurface);

  video_stop(CurrentVideo);
  video_delete(CurrentVideo);

}
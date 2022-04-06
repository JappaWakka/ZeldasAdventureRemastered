/// @description Don't forget to *always* free buffers and surfaces.

if (webm_exists(CurrentVideo)) {

  buffer_delete(BufferVideo);
  surface_free(VideoSurface);

  webm_stop(CurrentVideo);
  webm_delete(CurrentVideo);

}
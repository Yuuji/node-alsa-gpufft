{
  "targets": [
    {
      "target_name": "alsa-gpufft",
      "sources": [ "src/mailbox.cc", "src/gpu_fft.cc", "src/gpu_fft_shaders.cc", "src/gpu_fft_twiddles.cc", "src/pcm.cc", "src/alsa-gpufft.cc" ],
      "libraries": [ "-lasound -lm -lrt" ]
    }
  ]
}

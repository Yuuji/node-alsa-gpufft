node-alsa-gpufft
=========

ALSA bindings and gpu_fft for Node.js

Requirements
------------

This code works only on a rasperry pi with a up2date firmware!
You must have a system on which ALSA is supported with the `libasound2-dev` package installed:

```sh
$ sudo apt-get install libasound2-dev
```

You'll also probably want to have an audio device for either playback or capture.


Installation
------------

Install via git:

```sh
$ npm install git+https://github.com/yuuji/node-alsa-gpufft.git
```


Usage
-----

The `alsa-gpufft` module exports 2 high-level classes for playback and recording.

```js
var alsa_gpufft = require('alsa-gpufft'),

  // The following variables represent the defaults for the Playback and Capture constructors.
  device = 'default',                   // ALSA default device
  channels = 2,                         // Stereo
  rate = 44100,                         // Sample rate
  format = alsa.FORMAT_S16_LE,          // PCM format (signed 16 bit LE int)
  access = alsa.ACCESS_RW_INTERLEAVED,  // Access mode
  latency = 500;                        // Desired latency in milliseconds

// The Capture class is a stream.Readable subclass.
var capture = new alsa_gpufft.Capture(device, channels, rate, format, access, latency);
capture.pipe(process.stdout);   // Treat it like any other readable stream.

// The Playback class is a stream.Writable subclass.
var playback = new alsa_gpufft.Playback(device, channels, rate, format, access, latency);
process.stdin.pipe(playback);   // Treat it like any other writable stream.

// Want to do both at the same time? Not a problem:
capture.pipe(playback);         // Of course, your sound hardware might say otherwise.
```


Examples
--------

Downsample audio captured from an ALSA device to a sample rate of 11025, in mono, encoded to 32 bit float PCM data and output to stdout:

```coffeescript
alsa_gpufft = require 'alsa_gpufft'
stream = require 'stream'

class Downer extends stream.Transform
  constructor: -> stream.Transform.call this

  # Naively drop 3 out of 4 samples, combine the interleaved left and right into 
  # a single sample, then convert to 32 bit float PCM data.
  _transform: (chunk, encoding, callback) ->
  
    # This is the naive part. Should be checking for partial samples.
    floats = new Buffer chunk.length / 4
    f = 0
    for i in [0...chunk.length] by 16 # 4 bytes per frame downsampled by 4.
      l16 = chunk.readInt16LE i       # Read left channel sample.
      r16 = chunk.readInt16LE i + 2   # Read right channel sample.
      # Sum samples and normalize as a float
      floats.writeFloatLE (l16 + r16) / 65536, f
      f += 4                          # Skip ahead 4 bytes in buffer (32 bit float).
    @push floats  # Write transformed samples to stream...
    callback()    # And we're done.

# Create a Capture and a Downer and chain them to stdout.
capture = new alsa_gunfft.Capture
downer = new Downer
capture.pipe(downer).pipe(process.stdout)
```

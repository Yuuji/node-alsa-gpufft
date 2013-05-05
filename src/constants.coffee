constants = {}

constants.PCM_STREAM_PLAYBACK  = 0
constants.PCM_STREAM_CAPTURE   = 1

constants.PCM_NONBLOCK         = 0x00000001  # Non blocking mode (flag for open mode)
constants.PCM_ASYNC            = 0x00000002  # Async notification (flag for open mode)
constants.PCM_ABORT            = 0x00008000  # In an abort state (internal, not allowed for open)
constants.PCM_NO_AUTO_RESAMPLE = 0x00010000  # Disable automatic (but not forced!) rate resampling
constants.PCM_NO_AUTO_CHANNELS = 0x00020000  # Disable automatic (but not forced!) channel conversion
constants.PCM_NO_AUTO_FORMAT   = 0x00040000  # Disable automatic (but not forced!) format conversion
constants.PCM_NO_SOFTVOL       = 0x00080000  # Disable soft volume control

constants.PCM_STATE_OPEN         = 0 # Open
constants.PCM_STATE_SETUP        = 1 # Setup installed
constants.PCM_STATE_PREPARED     = 2 # Ready to start
constants.PCM_STATE_RUNNING      = 3 # Running
constants.PCM_STATE_XRUN         = 4 # Stopped: underrun (playback) or overrun (capture) detected
constants.PCM_STATE_DRAINING     = 5 # Draining: running (playback) or stopped (capture)
constants.PCM_STATE_PAUSED       = 6 # Paused
constants.PCM_STATE_SUSPENDED    = 7 # Hardware is suspended
constants.PCM_STATE_DISCONNECTED = 8 # Hardware is disconnected
constants.PCM_STATE_LAST         = constants.PCM_STATE_DISCONNECTED

constants.PCM_ACCESS_MMAP_INTERLEAVED    = 0 # mmap access with simple interleaved channels
constants.PCM_ACCESS_MMAP_NONINTERLEAVED = 1 # mmap access with simple non interleaved channels
constants.PCM_ACCESS_MMAP_COMPLEX        = 2 # mmap access with complex placement
constants.PCM_ACCESS_RW_INTERLEAVED      = 3 # snd_pcm_readi/snd_pcm_writei access
constants.PCM_ACCESS_RW_NONINTERLEAVED   = 4 # snd_pcm_readn/snd_pcm_writen access
constants.PCM_ACCESS_LAST = constants.PCM_ACCESS_RW_NONINTERLEAVED

constants.FORMAT_UNKNOWN                  = -1 # Unknown
constants.PCM_FORMAT_S8                   = 0  # Signed 8 bit
constants.PCM_FORMAT_U8                   = 1  # Unsigned 8 bit
constants.PCM_FORMAT_S16_LE               = 2  # Signed 16 bit Little Endian
constants.PCM_FORMAT_S16_BE               = 3  # Signed 16 bit Big Endian
constants.PCM_FORMAT_U16_LE               = 4  # Unsigned 16 bit Little Endian
constants.PCM_FORMAT_U16_BE               = 5  # Unsigned 16 bit Big Endian
constants.PCM_FORMAT_S24_LE               = 6  # Signed 24 bit Little Endian using low three bytes in 32-bit word
constants.PCM_FORMAT_S24_BE               = 7  # Signed 24 bit Big Endian using low three bytes in 32-bit word
constants.PCM_FORMAT_U24_LE               = 8  # Unsigned 24 bit Little Endian using low three bytes in 32-bit word
constants.PCM_FORMAT_U24_BE               = 9  # Unsigned 24 bit Big Endian using low three bytes in 32-bit word
constants.PCM_FORMAT_S32_LE               = 10 # Signed 32 bit Little Endian
constants.PCM_FORMAT_S32_BE               = 11 # Signed 32 bit Big Endian
constants.PCM_FORMAT_U32_LE               = 12 # Unsigned 32 bit Little Endian
constants.PCM_FORMAT_U32_BE               = 13 # Unsigned 32 bit Big Endian
constants.PCM_FORMAT_FLOAT_LE             = 14 # Float 32 bit Little Endian, Range -1.0 to 1.0
constants.PCM_FORMAT_FLOAT_BE             = 15 # Float 32 bit Big Endian, Range -1.0 to 1.0
constants.PCM_FORMAT_FLOAT64_LE           = 16 # Float 64 bit Little Endian, Range -1.0 to 1.0
constants.PCM_FORMAT_FLOAT64_BE           = 17 # Float 64 bit Big Endian, Range -1.0 to 1.0
constants.PCM_FORMAT_IEC958_SUBFRAME_LE   = 18 # IEC-958 Little Endian
constants.PCM_FORMAT_IEC958_SUBFRAME_BE   = 19 # IEC-958 Big Endian
constants.PCM_FORMAT_MU_LAW               = 20 # Mu-Law
constants.PCM_FORMAT_A_LAW                = 21 # A-Law
constants.PCM_FORMAT_IMA_ADPCM            = 22 # Ima-ADPCM
constants.PCM_FORMAT_MPEG                 = 23 # MPEG
constants.PCM_FORMAT_GSM                  = 24 # GSM
constants.PCM_FORMAT_SPECIAL              = 31 # Special
constants.PCM_FORMAT_S24_3LE              = 32 # Signed 24bit Little Endian in 3bytes format
constants.PCM_FORMAT_S24_3BE              = 33 # Signed 24bit Big Endian in 3bytes format
constants.PCM_FORMAT_U24_3LE              = 34 # Unsigned 24bit Little Endian in 3bytes format
constants.PCM_FORMAT_U24_3BE              = 35 # Unsigned 24bit Big Endian in 3bytes format
constants.PCM_FORMAT_S20_3LE              = 36 # Signed 20bit Little Endian in 3bytes format
constants.PCM_FORMAT_S20_3BE              = 37 # Signed 20bit Big Endian in 3bytes format
constants.PCM_FORMAT_U20_3LE              = 38 # Unsigned 20bit Little Endian in 3bytes format
constants.PCM_FORMAT_U20_3BE              = 39 # Unsigned 20bit Big Endian in 3bytes format
constants.PCM_FORMAT_S18_3LE              = 40 # Signed 18bit Little Endian in 3bytes format
constants.PCM_FORMAT_S18_3BE              = 41 # Signed 18bit Big Endian in 3bytes format
constants.PCM_FORMAT_U18_3LE              = 42 # Unsigned 18bit Little Endian in 3bytes format
constants.PCM_FORMAT_U18_3BE              = 43 # Unsigned 18bit Big Endian in 3bytes format
constants.PCM_FORMAT_G723_24              = 44 # G.723 (ADPCM) 24 kbit/s, 8 samples in 3 bytes
constants.PCM_FORMAT_G723_24_1B           = 45 # G.723 (ADPCM) 24 kbit/s, 1 sample in 1 byte
constants.PCM_FORMAT_G723_40              = 46 # G.723 (ADPCM) 40 kbit/s, 8 samples in 3 bytes
constants.PCM_FORMAT_G723_40_1B           = 47 # G.723 (ADPCM) 40 kbit/s, 1 sample in 1 byte
constants.PCM_FORMAT_DSD_U8               = 48 # Direct Stream Digital (DSD) in 1-byte samples (x8)
constants.PCM_FORMAT_DSD_U16_LE           = 49 # Direct Stream Digital (DSD) in 2-byte samples (x16)
constants.PCM_FORMAT_LAST = constants.PCM_FORMAT_DSD_U16_LE

module.exports = constants
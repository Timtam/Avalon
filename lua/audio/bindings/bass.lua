local ffi = require("ffi")

ffi.cdef[[
  typedef short BOOL;
  typedef uint32_t DWORD;
  typedef uint64_t QWORD;
  typedef DWORD HCHANNEL;
  typedef DWORD HFX;
  typedef DWORD HPLUGIN;
  typedef DWORD HSAMPLE;
  typedef DWORD HSTREAM;
  typedef DWORD HSYNC;

  typedef struct {
    float fWetDryMix;
    float fDepth;
    float fFeedback;
    float fFrequency;
    DWORD lWaveform;
    float fDelay;
    DWORD lPhase;
  } BASS_DX8_CHORUS;

  typedef struct {
    float fGain;
    float fAttack;
    float fRelease;
    float fThreshold;
    float fRatio;
    float fPredelay;
  } BASS_DX8_COMPRESSOR;

  typedef struct {
    float fGain;
    float fEdge;
    float fPostEQCenterFrequency;
    float fPostEQBandwidth;
    float fPreLowpassCutoff;
  } BASS_DX8_DISTORTION;

  typedef struct {
    float fWetDryMix;
    float fFeedback;
    float fLeftDelay;
    float fRightDelay;
    BOOL lPanDelay;
  } BASS_DX8_ECHO;

  typedef struct {
    float fWetDryMix;
    float fDepth;
    float fFeedback;
    float fFrequency;
    DWORD lWaveform;
    float fDelay;
    DWORD lPhase;
  } BASS_DX8_FLANGER;

  typedef struct {
    DWORD dwRateHz;
    DWORD dwWaveShape;
  } BASS_DX8_GARGLE;

  typedef struct {
    int lRoom;
    int lRoomHF;
    float flRoomRolloffFactor;
    float flDecayTime;
    float flDecayHFRatio;
    int lReflections;
    float flReflectionsDelay;
    int lReverb;
    float flReverbDelay;
    float flDiffusion;
    float flDensity;
    float flHFReference;
  } BASS_DX8_I3DL2REVERB;

  typedef struct {
    float fCenter;
    float fBandwidth;
    float fGain;
  } BASS_DX8_PARAMEQ;

  typedef struct {
    float fInGain;
    float fReverbMix;
    float fReverbTime;
    float fHighFreqRTRatio;
  } BASS_DX8_REVERB;

  typedef struct {
    DWORD freq;
    DWORD chans;
    DWORD flags;
    DWORD ctype;
    DWORD origres;
    HPLUGIN plugin;
    HSAMPLE sample;
    char *filename;
  } BASS_CHANNELINFO;

  typedef void (__stdcall SYNCPROC)(HSYNC handle, DWORD channel, DWORD data, void *user);

  double BASS_ChannelBytes2Seconds(HCHANNEL handle, QWORD bytes);
  DWORD BASS_ChannelFlags(HCHANNEL DWORD, DWORD flags, DWORD mask);
  BOOL BASS_ChannelGetAttribute(HCHANNEL handle, DWORD attrib, float *value);
  DWORD BASS_ChannelGetData(HCHANNEL handle, void *buffer, DWORD length);
  BOOL BASS_ChannelGetInfo(HCHANNEL handle, BASS_CHANNELINFO * info);
  QWORD BASS_ChannelGetLength(HCHANNEL handle, DWORD mode);
  QWORD BASS_ChannelGetPosition(HCHANNEL handle, DWORD mode);
  DWORD BASS_ChannelIsActive(HCHANNEL handle);
  BOOL BASS_ChannelIsSliding(HCHANNEL handle, DWORD attrib);
  BOOL BASS_ChannelPause(HCHANNEL handle);
  BOOL BASS_ChannelPlay(HCHANNEL handle, BOOL restart);
  BOOL BASS_ChannelRemoveFX(HCHANNEL handle, HFX fx);
  BOOL BASS_ChannelRemoveSync(DWORD handle, HSYNC sync);
  QWORD BASS_ChannelSeconds2Bytes(HCHANNEL handle, double time);
  BOOL BASS_ChannelSetAttribute(HCHANNEL handle, DWORD attrib, float value);
  HFX BASS_ChannelSetFX(HCHANNEL handle, DWORD fx, int priority);
  BOOL BASS_ChannelSetPosition(HCHANNEL handle, QWORD pos, DWORD mode);
  HSYNC BASS_ChannelSetSync(DWORD handle, DWORD type, QWORD param, SYNCPROC *proc, void *user);
  BOOL BASS_ChannelSlideAttribute(HCHANNEL handle, DWORD attrib, float value, DWORD time);
  BOOL BASS_ChannelStop(HCHANNEL handle);
  BOOL BASS_ChannelUpdate(HCHANNEL handle, DWORD length);
  int BASS_ErrorGetCode();
  BOOL BASS_Free();
  BOOL BASS_FXGetParameters(HFX handle, void *params);
  BOOL BASS_FXReset(HCHANNEL handle);
  BOOL BASS_FXSetParameters(HFX handle, void * parameters);
  DWORD BASS_GetConfig(DWORD option);
  DWORD BASS_GetVersion();
  BOOL BASS_Init(int device, DWORD frequency, DWORD flags, void *win, const void *dsguid);
  BOOL BASS_SetConfig(DWORD option, DWORD value);
  HSTREAM BASS_StreamCreate(DWORD freq, DWORD chans, DWORD flags, int proc, void *user);
  HSTREAM BASS_StreamCreateFile(BOOL mem, char *file, QWORD offset, QWORD length, DWORD flags);
  BOOL BASS_StreamFree(HSTREAM handle);
  DWORD BASS_StreamPutData(HSTREAM handle, void *buffer, DWORD length);
]]

local basslib = ffi.load("bass")

ffi.cdef[[
  void free(void *ptr);
  void *malloc(size_t size);
]]

return basslib
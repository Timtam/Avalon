local Audio = require("audio")
local Avalon = nil
local BASS = Audio.BASS()
local Path = require("pl.path")
local PPI = require("ppi")
local Types = require("pl.types")

local sound_init = function()
  Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  BASS:Init()
end

local sound_play_sound = function(file, pan, vol, no_free)

  pan = pan or 0

  vol = vol or Avalon.GetConfig("settings", "SoundVolume")

  no_free = Types.to_bool(no_free)

  if Avalon.GetConfig("settings", "SoundsMuted") == 1 then
    return
  end

  if Types.is_empty(file) then
    return
  end

  if Path.isabs(file) == false then
    file = GetInfo(74) .. file
  end

  local flags = 0

  if no_free == false then
    flags = Audio.CONST.stream.auto_free
  end

  local snd = BASS:StreamCreateFile(false, file, 0, 0, flags)
  snd:SetAttribute(Audio.CONST.attribute.volume, vol / 100)
  snd:SetAttribute(Audio.CONST.attribute.pan, pan)
  snd:Play()
  return snd
end

local sound_play_music = function(file, vol, mute)

  vol = vol or Avalon.GetConfig("settings", "MusicVolume")

  mute = mute or Avalon.GetConfig("settings", "MusicMuted")

  if mute == 1 then
    return
  end

  if Types.is_empty(file) then
    return
  end

  if Path.isabs(file) == false then
    file = GetInfo(74) .. "Music/" .. file
  end

  local hmusic = BASS:StreamCreateFile(false, file, 0, 0, Audio.CONST.sample.loop)
  hmusic:SetAttribute(Audio.CONST.attribute.volume, vol / 100)
  hmusic:Play()
  return hmusic
end

return {
  Init = sound_init,
  PlayMusic = sound_play_music,
  PlaySound = sound_play_sound
}
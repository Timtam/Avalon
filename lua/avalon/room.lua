local Audio = require("audio")
local Class = require("pl.class")
local Dir = require("pl.dir")
local Path = require("pl.path")
local PPI = require("ppi")
local Sound = require("avalon.sound")
local Types = require("pl.types")
local Avalon = nil

Class.Room()

function Room:_init()

  self:Reset()

end

function Room:Reset()

  if self.music ~= nil then
    self.music:Stop()
  end

  self.dark = false
  self.id = ''
  self.music = nil
  self.name = ''
  self.x = nil
  self.y = nil
  self.in_combat = false

end

function Room:Init()

  Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  Avalon.HookCallback('DUNKEL', function(dunkel) self:SetDark(dunkel) end)
  Avalon.HookCallback('KAMPF', function(kampf)
    self.in_combat = kampf
    self:UpdateMusic()
  end)
  Avalon.HookCallback('ROOMID', function(id, name, x, y) self:SetRoomData(id, name, x, y) end)

end

function Room:SetDark(dunkel)

  self.dark = Types.to_bool(dunkel)

end

function Room:IsDark()
  return self.dark
end

function Room:SetRoomData(id, name, x, y)

  self.id = id
  self.x = x
  self.y = y

  if name == "" then
    return
  end

  if name == self.name and self.music ~= nil then
    return
  end

  self.name = name

  local mute = Types.to_bool(Avalon.GetConfig("settings", "MusicMuted"))
  local volume = Avalon.GetConfig("settings", "MusicVolume")

  if self.music ~= nil then
    self.music:Stop()
    self.music = nil
  end

  if not Path.isfile(GetInfo(74).."Music/"..name..".ogg") and not Path.isdir(GetInfo(74).."Music/"..name) then
    return
  end

  if Path.isfile(GetInfo(74).."Music/"..name..".ogg") then
    self.music = Sound.PlayMusic(name .. ".ogg", nil, 0)
  else
    local files = Dir.getfiles(GetInfo(74).."Music/"..name)
    self.music = Sound.PlayMusic(files[math.random(1,#files)], nil, 0)
  end

  if mute == true or self.in_combat == true then
    self.music:Stop()
  end

end

function Room:GetID()
  return self.id
end

function Room:GetName()
  return self.name
end

function Room:UpdateMusic()

  local combat_muted = Types.to_bool(Avalon.GetConfig("settings", "CombatMusicMuted"))
  local music_muted = Types.to_bool(Avalon.GetConfig("settings", "MusicMuted"))
  local volume = Avalon.GetConfig("settings", "MusicVolume")
  
  if music_muted == true or (combat_muted == false and self.in_combat == true) then
    if self.music ~= nil then
      self.music:Stop()
    end
    return
  end

  if self.music ~= nil then
    if self.music:IsActive() ~= Audio.CONST.active.playing then
      self.music:Play()
    end
    self.music:SetAttribute(Audio.CONST.attribute.volume, volume/100)
  end
end

function Room:GetCoordinates()
  return self.x, self.y
end

return Room
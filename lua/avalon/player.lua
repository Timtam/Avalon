local Audio = require("audio")
local Class = require("pl.class")
local PPI = require("ppi")
local Sound = require("avalon.sound")
local Types = require("pl.types")
local Avalon = nil

Class.Player()

function Player:_init()

  self:Reset()

end

function Player:Reset()
  self.ep = 0
  self.level = 0
  self.level_prefix = ''
  self.tp = 0
  self.sp = 0
  self.mp = 0
  self.ap = 0
  self.max_tp = 0
  self.max_sp = 0
  self.max_mp = 9999
  self.max_ap = 0
  self.name = ''
  self.mxp_output = false
  self.combat_music = nil
  self.combat_music_name = ''
  self.in_combat = false

  self.announces = {
    tp = false,
    sp = false,
    ap = false
  }

  self.sounds = {
    tp = nil,
    sp = nil,
    ap = nil
  }

end

function Player:Init()

  Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  Avalon.HookCallback('TP', function(tp) self:SetTP(tp) end)
  Avalon.HookCallback('SP', function(sp) self:SetSP(sp) end)
  Avalon.HookCallback('MP', function(mp) self:SetMP(mp) end)
  Avalon.HookCallback('AP', function(ap) self:SetAP(ap) end)
  Avalon.HookCallback('MAXTP', function(tp) self:SetMaxTP(tp) end)
  Avalon.HookCallback('MAXSP', function(sp) self:SetMaxSP(sp) end)
  Avalon.HookCallback('MAXAP', function(ap) self:SetMaxAP(ap) end)
  Avalon.HookCallback('EP', function(ep) self:SetEP(ep) end)
  Avalon.HookCallback('LEVEL', function(l, p) self:SetLevel(l, p) end)
  Avalon.HookCallback('NAME', function(n) self:SetName(n) end)
  Avalon.HookCallback('GRAFIK', function(gfk) self:SetGrafik(gfk) end)
  Avalon.HookCallback('KAMPF', function(kampf)
    self.in_combat = kampf
    self:UpdateCombatMusic() 
  end)

  self:SetGrafik(Types.to_bool(Avalon.GetConfig("settings", "MXP")), true)

end

function Player:SetGrafik(gfk, omit)

  omit = Types.to_bool(omit)

  if gfk == true then

    if tonumber(world.GetOption("use_mxp")) == 2 then
      return
    end

    world.SetOption("use_mxp", 2)

    Avalon.SetConfig("settings", "MXP", 1)

    if omit == false and self.mxp_output == false then
      world.Note("MXP ist nun aktiviert, wird von Avalon allerdings noch nicht gesendet. Um MXP korrekt verwenden zu können, muss der Client erst neu gestartet werden.")
      self.mxp_output = true
    end

  else

    if tonumber(world.GetOption("use_mxp")) == 3 then
      return
    end

    world.SetOption("use_mxp", 3)

    Avalon.SetConfig("settings", "MXP", 0)

    if omit == false and self.mxp_output == false then
      world.Note("MXP ist nun deaktiviert. Damit der Text allerdings ohne störende Zeichen angezeigt werden kann, muss der Client einmalig neu gestartet werden.")
      self.mxp_output = true
    end
  end
end

function Player:SetName(n)

  self.name = n
  
end

function Player:SetTP(tp)
  self:PlayProgressBar('TP', tp)
  self.tp = tp
  self:UpdateCombatMusic()
end

function Player:SetSP(sp)
  self:PlayProgressBar('SP', sp)
  self.sp = sp
end

function Player:SetMP(mp)
  self.mp = mp
end

function Player:SetAP(ap)
  self:PlayProgressBar('AP', ap)
  self.ap = ap
end

function Player:SetEP(ep)
  self.ep = ep
end

function Player:SetLevel(l, p)

  if self.level ~= 0 and l ~= self.level then
    Sound.PlaySound("Misc/LevelUp.ogg")
  end

  self.level = l
  self.level_prefix = p:lower()

end

function Player:SetMaxTP(tp)
  self.max_tp = tp
  self:UpdateCombatMusic()
end

function Player:SetMaxSP(sp)
  self.max_sp = sp
end

function Player:SetMaxAP(ap)
  self.max_ap = ap
end

function Player:PlayProgressBar(bar, val)

  bar = bar:upper()
  local l_bar = bar:lower()

  if self["max_" .. l_bar] == 0 then
    return
  end

  if Avalon.GetConfig("settings", bar .. "Bar") == 0 then
    return
  end

  if self.sounds[l_bar] ~= nil then
    self.sounds[l_bar]:Stop()
    self.sounds[l_bar] = nil
  end

  local percent = val * 100 / self["max_" .. l_bar]

  if val > self[l_bar] then
    self.sounds[l_bar] = Sound.PlaySound("Player/" .. l_bar .. "Up.ogg", (2 * math.floor(percent) - 100) / 100)
    self.announces[l_bar] = false
  elseif val < self[l_bar] then
    self.sounds[l_bar] = Sound.PlaySound("Player/" .. l_bar .. "Down.ogg", (2 * math.floor(percent) - 100) / 100)
    self.announces[l_bar] = false
  end

  if val == self["max_" .. l_bar] and self.announces[l_bar] == false then
    Sound.PlaySound("Player/" .. l_bar .. "Max.ogg")
    self.announces[l_bar] = true
  end
end

function Player:GetTP()
  return self.tp
end

function Player:GetSP()
  return self.sp
end

function Player:GetMP()
  return self.mp
end

function Player:GetAP()
  return self.ap
end

function Player:GetMaxTP()
  return self.max_tp
end

function Player:GetMaxSP()
  return self.max_sp
end

function Player:GetMaxMP()
  return 9999
end

function Player:GetMaxAP()
  return self.max_ap
end

function Player:GetEP()
  return self.ep
end

function Player:GetLevel()
  return self.level
end

function Player:IsWizard()
  return self.level_prefix ~= 's'
end

function Player:GetName()
  return self.name
end

function Player:UpdateCombatMusic()

  local muted = Types.to_bool(Avalon.GetConfig("settings", "CombatMusicMuted"))
  local volume = Avalon.GetConfig("settings", "CombatMusicVolume")

  if self.in_combat == false or muted == true then
    if self.combat_music ~= nil then
      self.combat_music:Stop()
      self.combat_music = nil
    end
    self.combat_music_name = ''
    return
  end

  if self.combat_music ~= nil and volume/100 ~= self.combat_music:GetAttribute(Audio.CONST.attribute.volume) then
    self.combat_music:SetAttribute(Audio.CONST.attribute.volume, volume/100)
  end

  local percentage = self.tp * 100 / self.max_tp
  local music

  if percentage >= 86 then
    music = "excellent.ogg"
  elseif percentage >= 72 then
    music = "scratches.ogg"
  elseif percentage >= 58 then
    music = "small wounds.ogg"
  elseif percentage >= 42 then
    music = "quite a few.ogg"
  elseif percentage >= 28 then
    music = "big nasty.ogg"
  elseif percentage >= 14 then
    music = "pretty hurt.ogg"
  elseif percentage >= 0 then
    music = "awful.ogg"
  end

  if music ~= self.combat_music_name then
    self.combat_music_name = music

    if self.combat_music ~= nil then
      self.combat_music:Stop()
      self.combat_music = nil
    end
  end

  if self.combat_music == nil or self.combat_music:IsActive() ~= Audio.CONST.active.playing then
    self.combat_music = Sound.PlayMusic("Combat/" .. self.combat_music_name, volume, muted)
  end
end

return Player
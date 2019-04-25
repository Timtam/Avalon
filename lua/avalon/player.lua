local Class = require("pl.class")
local PPI = require("ppi")
local Sound = require("avalon.sound")
local Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

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

end

function Player:SetName(n)

  self.name = n
  
end

function Player:SetTP(tp)
  self:PlayProgressBar('TP', tp)
  self.tp = tp
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

return Player
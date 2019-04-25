local Class = require("pl.class")
local PPI = require("ppi")
local Sound = require("avalon.sound")

Class.Player()

function Player:_init()

  self.avalon = nil
  self.tp = 0
  self.sp = 0
  self.mp = 0
  self.ap = 0
  self.max_tp = 0
  self.max_sp = 0
  self.max_mp = 9999
  self.max_ap = 0

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

  self.avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  self.avalon.HookCallback('TP', function(tp) self:OnTP(tp) end)
  self.avalon.HookCallback('SP', function(sp) self:OnSP(sp) end)
  self.avalon.HookCallback('MP', function(mp) self:OnMP(mp) end)
  self.avalon.HookCallback('AP', function(ap) self:OnAP(ap) end)
  self.avalon.HookCallback('MAXTP', function(tp) self:OnMaxTP(tp) end)
  self.avalon.HookCallback('MAXSP', function(sp) self:OnMaxSP(sp) end)
  self.avalon.HookCallback('MAXAP', function(ap) self:OnMaxAP(ap) end)

end

function Player:OnTP(tp)
  self:PlayProgressBar('TP', tp)
  self.tp = tp
end

function Player:OnSP(sp)
  self:PlayProgressBar('SP', sp)
  self.sp = sp
end

function Player:OnMP(mp)
  self.mp = mp
end

function Player:OnAP(ap)
  self:PlayProgressBar('AP', ap)
  self.ap = ap
end

function Player:OnMaxTP(tp)
  self.max_tp = tp
end

function Player:OnMaxSP(sp)
  self.max_sp = sp
end

function Player:OnMaxAP(ap)
  self.max_ap = ap
end

function Player:PlayProgressBar(bar, val)

  local l_bar = bar:lower()

  if self["max_" .. l_bar] == 0 then
    return
  end

  if self.avalon.GetConfig("settings", bar .. "Bar") == 0 then
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

return Player
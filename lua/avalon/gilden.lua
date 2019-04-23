-- hier muessen alle Gilden zumindest namendlich hinterlegt werden

local GILDEN = {
  "barden",
  "daemonenkrieger",
  "druiden",
  "formwandler",
  "golemkultisten",
  "hyraskrieger",
  "kleriker",
  "magier",
  "nekromanten",
  "runenschmiede"
}

local ActiveGuild = nil
local Avalon = nil
local PPI = require("ppi")
local Stringx = require("pl.stringx")
local Tablex = require("pl.tablex")
local Types = require("pl.types")

local gilden_disable = function()

  if ActiveGuild ~= nil and not Types.is_empty(ActiveGuild.package) then
    ActiveGuild.package.DeInit()
  end

  if ActiveGuild ~= nil and not Types.is_empty(ActiveGuild.name) then
    world.EnableGroup(Stringx.title(ActiveGuild.name), 0)
  end

  ActiveGuild = {
    name = "",
    package = nil
  }
end

local gilden_init = function()

  gilden_disable()

  Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  Avalon.HookCallback("GILDE", gilden_enable)
end

local gilden_enable = function(guild)

  guild = guild:lower()

  if not gilden_exists(guild) then
    return
  end

  if ActiveGuild.name == guild then
    return
  end

  gilden_disable()

  -- trying to load corresponding lua file
  local success, pkg = pcall(require, "avalon.gilden." .. guild)

  if success then
    ActiveGuild.package = pkg
    ActiveGuild.package.Init()
  else

    if Stringx.startswith(pkg, "module 'avalon.gilden." .. guild .. "' not found") == false then
      error("Fehler beim Laden der Skripte fuer die Gilde " .. Stringx.title(guild) .. ":\n" .. pkg)
    end
  end

  world.EnableGroup(Stringx.title(guild), 1)

  ActiveGuild.name = guild

end

local gilden_exists = function(guild)
  guild = guild:lower()

  return Tablex.find(GILDEN, guild) ~= nil
end

local gilden_call = function(fun, ...)
  if ActiveGuild.package ~= nil and Types.is_callable(ActiveGuild.package[fun]) == true then
    ActiveGuild.package[fun](unpack({select(1, ...)}))
  end
end

return {
  Call = gilden_call,
  Exists = gilden_exists,
  Init = gilden_init
}
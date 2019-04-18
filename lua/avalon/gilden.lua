-- hier muessen alle Gilden zumindest namendlich hinterlegt werden

GILDEN = {
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

ActiveGuild = nil
Avalon = nil
PPI = require("ppi")
Stringx = require("pl.stringx")
Tablex = require("pl.tablex")
Types = require("pl.types")

function gilden_init()

  gilden_disable()

  Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  Avalon.HookCallback("GILDE", gilden_enable)
end

function gilden_disable()

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

function gilden_enable(guild)

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

  world.EnableGroup(Stringx.title(ActiveGuild.name), 1)

  ActiveGuild.name = guild

end

function gilden_exists(guild)
  guild = guild:lower()

  return Tablex.find(GILDEN, guild) ~= nil
end

function gilden_call(fun, ...)
  if Types.is_callable(ActiveGuild.package ~= nil and ActiveGuild.package[fun]) == true then
    ActiveGuild.package[fun](unpack({select(1, ...)}))
  end
end

return {
  Call = gilden_call,
  Exists = gilden_exists,
  Init = gilden_init
}
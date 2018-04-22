Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

-- dummy
Class.Avalon_Corona_Tuer_Innen(Script)

function Avalon_Corona_Tuer_Innen:setup()
  self:success()
end

function Avalon_Corona_Tuer_Innen:inverts(d)
  return Types.type(d) == 'Avalon_Corona_Tuer_Aussen'
end

return Avalon_Corona_Tuer_Innen
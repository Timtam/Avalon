-- you should require this module for the whole timers function set

Tablex = require("pl.tablex")

Const = require("timers.constants")
Processor = require("timers.processor")
Timer = require("timers.timer")
Utils = require("timers.utils")

imported = {}

imported.Timer = Timer
imported.TimerProcessor = Processor
imported = Tablex.merge(imported, Utils, true)
imported = Tablex.merge(imported, Const, true)

return imported
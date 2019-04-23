-- you should require this module for the whole timers function set

local Tablex = require("pl.tablex")

local Const = require("timers.constants")
local Processor = require("timers.processor")
local Timer = require("timers.timer")
local Utils = require("timers.utils")

local imported = {}

imported.Timer = Timer
imported.TimerProcessor = Processor
imported = Tablex.merge(imported, Utils, true)
imported = Tablex.merge(imported, Const, true)

return imported
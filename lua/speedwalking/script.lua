Class = require("pl.class")
Const = require("speedwalking.constants")
List = require("pl.list")

Class.Script()

function Script:_init()
  self.command_stack = List.new()
  self.status = Const.SCRIPT_UNINITIALIZED
end

function Script:get_status()
  return self.status
end

function Script:success()
  self.status = Const.SCRIPT_SUCCESS
end

function Script:failure()
  self.status = Const.SCRIPT_FAILURE
end

function Script:initialize()
  self.status = Const.SCRIPT_RUNNING
  self:setup()
end

function Script:setup()
end

function Script:teardown()
end

function Script:add_command(cmd)
  self.command_stack:append(cmd)
end

function Script:pop_command()
  if self.command_stack:len() == 0 then
    return nil
  end
  return self.command_stack:pop(1)
end

function Script:inverts(s)
  return false
end

function Script:destroy()
  self.status = Const.SCRIPT_UNINITIALIZED
  self:teardown()
end

function Script:get_duration()
  return 0.0
end

return Script
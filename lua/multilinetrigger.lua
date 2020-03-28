local class = require('pl.class')

class.MultilineTrigger()

function MultilineTrigger:_init(sound,group,sequence)
  self.lines={}
  self.text=''
  self.sound=sound or ''
  -- the trigger group, but only the first trigger will be part of this group
  self.group=group or ''
  self.sequence=sequence or 100
  -- all other triggers will be part of this group. that ensures that the 
  -- first trigger can enable this group and the last one can disable it 
  -- without disabling the first trigger as well
  self.trigger_group = world.GetUniqueID()
end

function MultilineTrigger:Line(text,regexp,omit)
  regexp=regexp or false
  omit=omit or false
  self.text=self.text..text..'\r\n'

  local line={}

  line.text=text
  line.omit=omit
  line.regexp=regexp
  self.lines[#self.lines+1]=line
end

function MultilineTrigger:Inject()
  local name = utils.hash(tostring(string.len(self.text))..'\r\n'..self.text)
  local i

  for i = 1, #self.lines, 1 do
    local flags = 0

    if self.lines[i].regexp then
      flags=flags+trigger_flag.RegularExpression
    end

    if self.lines[i].omit then
      flags=flags+trigger_flag.OmitFromOutput
    end

    local tname='t_'..name..'_'..tostring(i)
    if i==1 then
      if self.group=='' then
        flags=flags+trigger_flag.Enabled
      end
      world.AddTriggerEx(tname,self.lines[i].text,'world.EnableGroup("'..self.trigger_group..'",1)',flags,NOCHANGE,0,'','',sendto.script,self.sequence)
      world.SetTriggerOption(tname,'group',self.group)
    elseif i==#self.lines then
      world.AddTriggerEx(tname,self.lines[i].text,'world.EnableGroup("'..self.trigger_group..'",0)',flags,NOCHANGE,0,self.sound,'',sendto.script,self.sequence)
      world.SetTriggerOption(tname,'group',self.trigger_group)
    else
      world.AddTriggerEx(tname,self.lines[i].text,'',flags,NOCHANGE,0,'','',sendto.script,self.sequence)
      world.SetTriggerOption(tname,'group',self.trigger_group)
    end
  end
end

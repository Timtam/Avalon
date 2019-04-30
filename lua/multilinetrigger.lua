local class = require('pl.class')

class.MultilineTrigger()

function MultilineTrigger:_init(sound,group,sequence)
  self.lines={}
  self.text=''
  self.sound=sound or ''
  self.group=group or ''
  self.sequence=sequence or 100
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
  local groupname = utils.hash(tostring(string.len(self.text))..'\r\n'..self.text)
  local i

  for i = 1, #self.lines, 1 do
    local flags = 0

    if self.lines[i].regexp then
      flags=flags+trigger_flag.RegularExpression
    end

    if self.lines[i].omit then
      flags=flags+trigger_flag.OmitFromOutput
    end

    local tgroupname='t_'..groupname..'_'..tostring(i)
    if i==1 then
      if self.group=='' then
        flags=flags+trigger_flag.Enabled
      end
      world.AddTriggerEx(tgroupname,self.lines[i].text,'world.EnableGroup("'..groupname..'",1)',flags,NOCHANGE,0,'','',sendto.script,self.sequence)
    elseif i==#self.lines then
      world.AddTriggerEx(tgroupname,self.lines[i].text,'world.EnableGroup("'..groupname..'",0)',flags,NOCHANGE,0,self.sound,'',sendto.script,self.sequence)
    else
      world.AddTriggerEx(tgroupname,self.lines[i].text,'',flags,NOCHANGE,0,'','',sendto.script,self.sequence)
    end
    world.SetTriggerOption(tgroupname,'group',self.group)
  end
end

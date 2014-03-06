require('pairsbykeys')
spells={}
warnings={}
function spells_register(name,starttext,endtext)
world.AddTriggerEx(name..'_start',starttext,'spells_start("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
world.AddTriggerEx(name..'_stop',endtext,'spells_stop("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
spells[name]=0
end
function spells_start(name)
spells[name]=os.time()
spells_warn(name)
end
function spells_stop(name)
if spells[name]==nil or spells[name]==0 then
return
end
time=spells[name]
msg=name..' beendet, Dauer: '
ltime=os.time()
timediff=ltime-time
hours=math.floor(timediff/(60*60))
mins=math.floor((timediff-hours*3600)/60)
secs=math.floor(((timediff-hours*3600)-mins*60))
if hours >0 then
msg=msg..tostring(hours)..' Stunden, '
end
if mins>0 then
msg=msg..tostring(mins)..' Minuten, '
end
msg=msg..tostring(secs)..' Sekunden' 
NoteColour(msg,150,0,0,255,255,0)
spells[name]=0
end
function spells_status()
msg=''
ltime=os.time()
for spell,time in pairsByKeys(spells) do
if time>0 then
msg = msg..spell..': '
timediff=ltime-time
hours=math.floor(timediff/(60*60))
mins=math.floor((timediff-hours*3600)/60)
secs=math.floor(((timediff-hours*3600)-mins*60))
if hours >0 then
msg=msg..tostring(hours)..' Stunden, '
end
if mins>0 then
msg=msg..tostring(mins)..' Minuten, '
end
msg=msg..tostring(secs)..' Sekunden\n' 
end
end
if msg=='' then
msg='Zurzeit sind keine Zauber aktiv.'
else
msg=string.sub(msg,1,-2)
end
world.Note(msg)
end
function spells_warn(spell)
if spells[spell]==nil or warnings[spell]==nil then
return
end
time=os.time()
if time-spells[spell]==0 then
world.Note(spell.." gestartet.")
seconds=0
else
diff=time-spells[spell]
seconds=diff%60
minutes=(diff-seconds)/60
msg=spell.." bereits "..tostring(minutes).. " Minute(n)"
if seconds>0 then
msg=msg.." und "..tostring(seconds).." Sekunde(n)"
end
msg=msg.." aktiv"
world.Note(msg)
end
world.DoAfterSpecial((60-seconds),"spells_warn("..spell")",12)
end
function spells_parsewarnings(warns)
awarns=utils.split(warns,",")
for key,value in pairs(awarns) do
warnings[value]=true
end
end
function spells_retrievewarnings()
swarns=''
for key,value in pairs(warnings) do
swarns=swarns..key..","
end
return string.sub(swarns,1,-1)
end
function spells_printwarnings()
i=0
msg='Verfügbare zauber:\n'
for key,value in pairyByKeys(spells) do
i=i+1
msg=msg..tostring(i).." "..key
if warnings[key]==nil then
msg=msg..", keine Warnungen aktiv\n"
else
msg=msg..", Warnungen aktiv\n"
end
end
world.Note(string.sub(msg,1,-1))
end
function spells_togglewarnings(cnt)
i=0
stbl={}
for key,value in pairyByKeys(spells) do
i=i+1
stbl[i]=value
end
if stbl[cnt]==nil then
world.Note("Kein Zauber mit dieser Nummer gefunden.")
return
end
if warnings[stbl[cnt]]==nil then
world.Note("Warnungen für "..stbl[cnt].." aktiviert.")
warnings[stbl[cnt]]=True
spells_warn(stbl[cnt])
else
world.Note("Warnungen für "..stbl[cnt].." deaktiviert.")
warnings[sbl[cnt]]=nil
end
end
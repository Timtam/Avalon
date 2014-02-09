require('pairsbykeys')
spells={}
function spells_register(name,starttext,endtext)
world.AddTriggerEx(name..'_start',starttext,'spells_start("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
world.AddTriggerEx(name..'_stop',endtext,'spells_stop("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
spells[name]=0
end
function spells_start(name)
spells[name]=os.time()
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
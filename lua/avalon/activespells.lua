require('pairsbykeys')
require("string_indexing")
spells={}
warnings={}
function spells_register(name,starttext,endtext)
world.AddTriggerEx(name..'_start',starttext,'spells_start("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
world.AddTriggerEx(name..'_stop',endtext,'spells_stop("'..name..'")',trigger_flag.RegularExpression+trigger_flag.KeepEvaluating+trigger_flag.Enabled,NOCHANGE,0,'','',sendto.script,50)
spells[name]=0
end
function spells_start(name)
spells[name]=GetUnixTime()
if warnings[name]~=nil then
spells_warn(name,warnings[name])
end
end
function spells_stop(name)
if spells[name]==nil or spells[name]==0 then
return
end
time=spells[name]
msg=name..' beendet, Dauer: '
ltime=GetUnixTime()
timediff=ltime-time
hours=math.floor(timediff/3600)
mins=math.floor((timediff-hours*3600)/60)
secs=round(((timediff-hours*3600)-mins*60),0)
if hours >0 then
msg=msg..tostring(hours)..' Stunden, '
end
if mins>0 then
msg=msg..tostring(mins)..' Minuten, '
end
msg=msg..tostring(secs)..' Sekunden' 
NoteColour(msg,150,0,0,255,255,0)
spells[name]=0
if warnings[name]~=nil then
warnings[name]=world.CreateGUID()
psnd("spells/warn.ogg")
end
end
function spells_status()
msg=''
ltime=GetUnixTime()
for spell,time in pairsByKeys(spells) do
if time>0 then
msg = msg..spell..': '
timediff=ltime-time
hours=math.floor(timediff/3600)
mins=math.floor((timediff-hours*3600)/60)
secs=round((timediff-hours*3600)-mins*60,0)
if hours >0 then
msg=msg..tostring(hours)..' Stunde(n), '
end
if mins>0 then
msg=msg..tostring(mins)..' Minute(n), '
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
function spells_warn(spell,guid)
if spells[spell]==0 or warnings[spell]~=guid then
return
end
time=GetUnixTime()
if time-spells[spell]==0 then
world.Note(spell.." gestartet.")
seconds=0
else
diff=time-spells[spell]
seconds=round(diff,0)%60
minutes=math.floor((round(diff,0)-seconds)/60)
msg=spell.." bereits "..tostring(minutes).. " Minute(n)"
if seconds>0 then
msg=msg.." und "..tostring(seconds).." Sekunde(n)"
end
msg=msg.." aktiv"
world.Note(msg)
end
world.DoAfterSpecial((60-(time-spells[spell])%60),"spells_warn('"..spell.."', '"..guid.."')",12)
end
function spells_parsewarnings(warns)
if warns==nil or warns=='' then
return
end
awarns=utils.split(warns,",")
for key,value in pairs(awarns) do
if spells[value]==nil then
world.Note('Die Warnung für den Zauber "'..value..'" konnte nicht eingerichtet werden: dieser Zauber wird vom Soundpack momentan nicht unterstützt.')
else
warnings[value]=world.CreateGUID()
end
end
end
function spells_retrievewarnings()
swarns=''
for key,value in pairs(warnings) do
swarns=swarns..key..","
end
if swarns[1]==',' then
startind=2
else
startind=1
end
return string.sub(swarns,startind,-2)
end
function spells_printwarnings()
i=0
msg='Verfügbare zauber:\n'
for key,value in pairsByKeys(spells) do
i=i+1
msg=msg..tostring(i).." "..key
if warnings[key]==nil then
msg=msg..", keine Warnungen aktiv\n"
else
msg=msg..", Warnungen aktiv\n"
end
end
world.Note(string.sub(msg,1,-2))
end
function spells_togglewarnings(cnt)
cnt=tonumber(cnt)
if cnt==nil then
world.Note("Ihre Eingabe war nicht korrekt. Bitte geben sie die Nummer des Zaubers ein, für welchen sie Einstellungen vornehmen möchten.")
return
end
i=0
stbl={}
for key,value in pairsByKeys(spells) do
i=i+1
stbl[i]=key
end
if stbl[cnt]==nil then
world.Note("Kein Zauber mit dieser Nummer gefunden.")
return
end
if warnings[stbl[cnt]]==nil then
world.Note("Warnungen für "..stbl[cnt].." aktiviert.")
warnings[stbl[cnt]]=world.CreateGUID()
spells_warn(stbl[cnt],warnings[stbl[cnt]])
else
world.Note("Warnungen für "..stbl[cnt].." deaktiviert.")
warnings[stbl[cnt]]=nil
end
end
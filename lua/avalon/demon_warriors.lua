types=require("pl.types")
require('pairsbykeys')
require('string_indexing')
demons={}
function dk_getfullname(str)
dtype=nil
sregexp="(%D*)(%d*)"
shortdtype,dnumber=string.match(str,sregexp)
if shortdtype then
dtype=dk_getdtype(shortdtype)
end
dnumber=tonumber(dnumber)
if shortdtype and not dnumber then
if not dtype then
possibletbl={}
for dtype,list in pairs(demons) do
for dnumber,demon in pairs(list) do
if string.find(string.lower(demon),shortdtype,1,true)==1 then
possibletbl[#possibletbl+1]=demon
end
end
end
if #possibletbl==1 then
return possibletbl[1]
elseif #possibletbl==0 then
return nil
else
return possibletbl
end
else
if #demons[dtype]==1 then
return demons[dtype][1]
elseif #demons[dtype]==0 then
return nil
else
return demons[dtype]
end
end
elseif shortdtype and dnumber then
if not demons[dtype] then
return nil
elseif demons[dtype][dnumber] then
return demons[dtype][dnumber]
else
return nil
end
end
end
function dk_getname(dname)
dname=dk_getfullname(dname)
if types.is_type(dname,'table') then
world.Note('Dieser Name passt auf mehrere Daemonen:')
for ddnumber,ddname in pairs(dname) do
world.Note('\t'..ddname)
end
world.Note('Bitte gib den Namen genauer an.')
elseif not dname then
world.Note('Es passt kein Daemonenname auf Deine Eingabe.')
else
return dname
end
end
function dk_zh(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('zauber hervorrufung '..dname)
end
function dk_zw(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('zauber wegschicken '..dname)
end
function dk_bbs(dname,dtarget)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('befehle '..dname..' beschuetze '..dtarget)
end
function dk_brv(dname,dtarget)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('befehle '..dname..' ruestungsverstaerkung '..dtarget)
end
function dk_bwv(dname,dtarget)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('befehle '..dname..' waffenverstaerkung '..dtarget)
end
function dk_bnm(dname,dtarget)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('befehle '..dname..' name von '..dtarget)
end
function dk_insertname(dname,dtype)
dtype=string.lower(dtype)
demons[dtype][#demons[dtype]+1]=dname
end
function dk_dbw(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('bewerte '..dname)
end
function dk_zgp(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('zauber gedankenpeitsche '..dname)
end
function dk_vg(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('vergesse '..dname)
end
function dk_el(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('erloese '..dname)
end
function dk_zvs(dname)
dname=dk_getname(dname)
if not dname then
return
end
world.Execute('zauber verschmelzung '..dname)
end
function dk_init(start)
if start then
dk_reset()
world.Execute('daemonenliste')
end
end
function dk_getdtype(shortdtype)
shortdtype=string.lower(shortdtype)
if shortdtype=='a' then
return 'azmarog'
elseif shortdtype=='b' then
return 'bullrik'
elseif shortdtype=='k' then
return 'krasit'
elseif shortdtype=='s' then
return 'sensal'
else
return nil
end
end
function dk_getshortdtype(dtype)
return string.lower(dtype[1])
end
function dk_printlist()
for dtype,dlist in pairsByKeys(demons) do
shortdtype=dk_getshortdtype(dtype)
for dnumber,dname in pairs(dlist) do
world.Note(dtype..' '..shortdtype..tostring(dnumber)..': '..dname)
end
end
end
function dk_reset()
demons={}
demons['azmarog']={}
demons['bullrik']={}
demons['krasit']={}
demons['sensal']={}
end
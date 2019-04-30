local sound = require("avalon.sound")
local types = require("pl.types")

require("pairsbykeys")
require("string_indexing")

local demons = {}
local seq_snd = nil

-- internals

local dk_reset = function()
  demons = {}
  demons["azmarog"] = {}
  demons["bullrik"] = {}
  demons["krasit"] = {}
  demons["sensal"] = {}
end

local dk_get_short_dtype = function(dtype)
  return string.lower(dtype[1])
end

local dk_get_fullname = function(str)
  local dtype = nil
  local sregexp = "(%D*)(%d*)"
  local short_dtype, dnumber = string.match(str, sregexp)

  if short_dtype then
    dtype = dk_getdtype(short_dtype)
  end

  local dnumber = tonumber(dnumber)

  if short_dtype and not dnumber then
    if not dtype then
      local possibletbl = {}
      for dtype, list in pairs(demons) do
        for dnumber, demon in pairs(list) do
          if string.find(string.lower(demon), short_dtype, 1, true) == 1 then
            possibletbl[#possibletbl+1] = demon
          end
        end
      end
      if #possibletbl == 1 then
        return possibletbl[1]
      elseif #possibletbl == 0 then
        return nil
      else
        return possibletbl
      end
    else
      if #demons[dtype] == 1 then
        return demons[dtype][1]
      elseif #demons[dtype] == 0 then
        return nil
      else
        return demons[dtype]
      end
    end
  elseif short_dtype and dnumber then
    if not demons[dtype] then
      return nil
    elseif demons[dtype][dnumber] then
      return demons[dtype][dnumber]
    else
      return nil
    end
  end
end

local dk_getdtype = function(short_dtype)

  local short_dtype = string.lower(short_dtype)

  if short_dtype == "a" then
    return "azmarog"
  elseif short_dtype == "b" then
    return "bullrik"
  elseif short_dtype == "k" then
    return "krasit"
  elseif short_dtype == "s" then
    return "sensal"
  else
    return nil
  end
end

-- externals

local dk_getname = function(dname)
  local dname = dk_get_fullname(dname)

  if types.is_type(dname, "table") then
    world.Note("Dieser Name passt auf mehrere Daemonen:")

    local ddnumber, ddname

    for ddnumber, ddname in pairs(dname) do
      world.Note("\t"..ddname)
    end
    world.Note("Bitte den Namen genauer angeben.")
  elseif not dname then
    world.Note("Es passt kein Daemonenname auf Deine Eingabe.")
  else
    return dname
  end
end

local dk_printlist = function()

  local dtype, dlist

  for dtype, dlist in pairsByKeys(demons) do
    local short_dtype = dk_get_short_dtype(dtype)

    local dnumber, dname

    for dnumber, dname in pairs(dlist) do
      world.Note(short_dtype..tostring(dnumber)..": "..dname)
    end
  end
end

local dk_zh = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("zauber hervorrufung "..dname)
end

local dk_zw = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("zauber wegschicken "..dname)
end

local dk_bbs = function(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("befehle "..dname.." beschuetze "..dtarget)
end

local dk_brv = function(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("befehle "..dname.." ruestungsverstaerkung "..dtarget)
end

local dk_bwv = function(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("befehle "..dname.." waffenverstaerkung "..dtarget)
end

local dk_bnm = function(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("befehle "..dname.." name von "..dtarget)
end

local dk_insertname = function(dname, dtype)
  dtype = string.lower(dtype)
  demons[dtype][#demons[dtype]+1] = dname
end

local dk_dbw = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("bewerte "..dname)
end

local dk_zgp = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("zauber gedankenpeitsche "..dname)
end

local dk_vg = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("vergesse "..dname)
end

local dk_el = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("erloese "..dname)
end

local dk_zvs = function(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  world.Execute("zauber verschmelzung "..dname)
end

local dk_init = function()
  dk_reset()
  world.Execute("daemonenliste")
end

local dk_begin_sequence = function()
  seq_snd = sound.PlaySound("demon_warriors/crystalfocus.ogg")
end

local dk_end_sequence = function()

  if seq_snd ~= nil then
    seq_snd:Fadeout(1000)
    seq_snd = nil
  end
end

return {
  DeInit = dk_reset,
  Init = dk_init,
  -- Eintragen von neuen Namen
  Add = dk_insertname,
  PrintList = dk_printlist,
  Reset = dk_reset,
  -- die einzelnen Befehle/Zauber
  Beschuetze = dk_bbs,
  Bewerte = dk_dbw,
  Erloese = dk_el,
  Gedankenpeitsche = dk_zgp,
  Hervorrufen = dk_zh,
  Name = dk_bnm,
  Ruestungsverstaerkung = dk_brv,
  Vergesse = dk_vg,
  Verschmelzung = dk_zvs,
  Waffenverstaerkung = dk_bwv,
  Wegschicken = dk_zw,
  -- Sequenz starten und beenden
  BeginSequence = dk_begin_sequence,
  EndSequence = dk_end_sequence
}
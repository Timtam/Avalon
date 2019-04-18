types = require("pl.types")

require("pairsbykeys")
require("string_indexing")

demons = {}

-- internals

function dk_reset()
  demons = {}
  demons["azmarog"] = {}
  demons["bullrik"] = {}
  demons["krasit"] = {}
  demons["sensal"] = {}
end

function dk_get_short_dtype(dtype)
  return string.lower(dtype[1])
end

function dk_get_fullname(str)
  dtype = nil
  sregexp = "(%D*)(%d*)"
  short_dtype, dnumber = string.match(str, sregexp)
  if short_dtype then
    dtype = dk_getdtype(short_dtype)
  end
  dnumber = tonumber(dnumber)
  if short_dtype and not dnumber then
    if not dtype then
      possibletbl = {}
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

function dk_getdtype(short_dtype)
  short_dtype = string.lower(short_dtype)
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

function dk_getname(dname)
  dname = dk_get_fullname(dname)
  if types.is_type(dname, "table") then
    Note("Dieser Name passt auf mehrere Daemonen:")
    for ddnumber,ddname in pairs(dname) do
      Note("\t"..ddname)
    end
    Note("Bitte den Namen genauer angeben.")
  elseif not dname then
    Note("Es passt kein Daemonenname auf Deine Eingabe.")
  else
    return dname
  end
end

function dk_printlist()
  for dtype, dlist in pairsByKeys(demons) do
    short_dtype = dk_get_short_dtype(dtype)
    for dnumber, dname in pairs(dlist) do
      Note(short_dtype..tostring(dnumber)..": "..dname)
    end
  end
end

function dk_zh(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("zauber hervorrufung "..dname)
end

function dk_zw(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("zauber wegschicken "..dname)
end

function dk_bbs(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("befehle "..dname.." beschuetze "..dtarget)
end

function dk_brv(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("befehle "..dname.." ruestungsverstaerkung "..dtarget)
end

function dk_bwv(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("befehle "..dname.." waffenverstaerkung "..dtarget)
end

function dk_bnm(dname, dtarget)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("befehle "..dname.." name von "..dtarget)
end

function dk_insertname(dname, dtype)
  dtype = string.lower(dtype)
  demons[dtype][#demons[dtype]+1] = dname
end

function dk_dbw(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("bewerte "..dname)
end

function dk_zgp(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("zauber gedankenpeitsche "..dname)
end

function dk_vg(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("vergesse "..dname)
end

function dk_el(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("erloese "..dname)
end

function dk_zvs(dname)
  dname = dk_getname(dname)
  if not dname then
    return
  end
  Execute("zauber verschmelzung "..dname)
end

function dk_init()
  dk_reset()
  Execute("daemonenliste")
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
  Wegschicken = dk_zw
}
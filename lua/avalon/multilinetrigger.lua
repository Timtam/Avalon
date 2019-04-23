require("multilinetrigger")

trigger=MultilineTrigger('Sound.PlaySound("Rune/Harden.ogg")','Runenschmiede')
trigger:Line("Du haertest den Rohling wieder und wieder, damit er spaeter den magischen",false,true)
trigger:Line("Energien beim Gravieren standhalten kann.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Rune/Hammer1.ogg")','Runenschmiede')
trigger:Line("Mit Deinem Schmiedehammer und einem kleinen Stichel ziehst Du die Zeichnung.*",true,true)
trigger:Line(".*Rune auf .* nach\\.",true,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Smith/hammer1.ogg")')
trigger:Line("Mit einem lauten Knall laesst .* Schmiedehammer .*",true,true)
trigger:Line("niedersausen.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Rune/EngraveCorrect.ogg")','Runenschmiede')
trigger:Line("Noch ein paar Feinkorrekturen, sonst wirkt die Rune am Ende gar nicht wie",false,true)
trigger:Line("sie soll!",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Rune/Hammer2.ogg")','Runenschmiede')
trigger:Line("Du kommst ins Schwitzen, es ist ganz schoen anstrengend, mit so einem",false,true)
trigger:Line("grossen Hammer so fein dosierte Schlaege auf den Stichel auszufuehren.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/MeltBegin.ogg")')
trigger:Line("Fast sofort flackert im Ofen ein heisses")
trigger:Line("Feuerchen auf.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/MeltClick.ogg")')
trigger:Line("Du hoerst ein lautes Klacken und daraufhin ein Quietschen. Jetzt faellt",false,true)
trigger:Line("wohl gleich ein Klumpen Metall aus dem Rohr.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/PressContinue.ogg")')
trigger:Line("Nur unter Aufbietung aller Kraefte gelingt es Dir, den Hebel bis fast ganz",false,true)
trigger:Line("nach unten zu ziehen.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigCaveInDistant.ogg")')
trigger:Line("Der Boden vibriert heftig und ein ohrenbetaeubendes Rumpeln und Krachen")
trigger:Line("ertoent von irgendwo in der Mine. Das muss ein heftiger Einsturz gewesen")
trigger:Line("sein, hoffentlich ist niemand dabei zu Schaden gekommen.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigFinish.ogg")')
trigger:Line("So, das duerfte weit genug sein. Gleich mal schaun, ob sich die Arbeit auch")
trigger:Line("gelohnt hat.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigFall.ogg")')
trigger:Line("Huch, jetzt bist Du tatsaechlich auf einen anderen Stollen gestossen und")
trigger:Line("faellst prompt hinunter.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigCaveInAlert.ogg")')
trigger:Line("Irgendwie hast Du hier ein mulmiges Gefuehl, das Dir sagt.*",true)
trigger:Line("RAUS HIER.*",true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigCaveInAlert.ogg")')
trigger:Line("Die Waende dieses Stollens knirschen verdaechtig. Es hoert sich so an, als")
trigger:Line("ob jetzt der richtige Zeitpunkt waere, um die Beine in die Hand zu nehmen.")
trigger:Line("Nichts wie weg.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/DigCaveInAlert.ogg")')
trigger:Line("Ploetzlich hoerst Du Steineknirschen und ein lautes Rumpeln. Irgendwie sagt")
trigger:Line("Dir das, dass Du hier schnell weg solltest.")
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Mining/PressBegin.ogg")')
trigger:Line("Du ergreifst die Holzstange ganz am Ende, um einen moeglichst langen Hebel",false,true)
trigger:Line("zu haben, und ziehst sie kraftvoll nach unten.",false,true)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Player/Voodoo.ogg")')
trigger:Line("Du erschrickst plotzlich und reisst die Arme in die Hoehe. War das ein",false,false)
trigger:Line("Voodoo-Fluch, der nach hinten los ging? Erst jetzt bemerkst Du, dass Du *",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("WarEchoes/Finish.ogg")')
trigger:Line("Echos gefallener Krieger",false,false)
trigger:Line("Du hast das Spiel bis zur Stufe * geschafft.*",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("WarEchoes/Finish.ogg")')
trigger:Line("Die Echos verklingen",false,false)
trigger:Line("Du konntest die Stimmen ignorieren.",false,false)
trigger:Line("Hoffentlich kehren sie nicht bald wieder zurueck.",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Spells/Blink.ogg")')
trigger:Line("Du verschwindest urploetzlich und tauchst sofort an einer anderen Stelle",false,false)
trigger:Line("wieder auf!",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Misc/Achievement.ogg")')
trigger:Line("Eine Errungenschaft erspielt",false,false)
trigger:Line("Gratuliere! Du hast erspielt:",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Misc/Decoration.ogg")')
trigger:Line("Du hast eine neue Verzierung erhalten.",false,false)
trigger:Line("Schau dafuer in Deinem Spielerbuch nach.",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Misc/NPCTask.ogg")')
trigger:Line("Aufgabe geloest!",false,false)
trigger:Line("Gratuliere, Du hast die Aufgabe geloest!",false,false)
trigger:Inject()

trigger=MultilineTrigger('Sound.PlaySound("Clerics/CurePoison2.ogg")','Kleriker')
trigger:Line("Du murmelst heilige Woerter voller heilender Energie vor Dich hin, Dein",false,false)
trigger:Line("Ankh beginnt zu leuchten und zu funkeln.",false,false)
trigger:Inject()

Herzlich Willkommen zu unserem Soundpack für das MUD Avalon. Bereits seid 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterstützt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln. Seit 2014 ist auch Chiaray mit im Entwicklerteam. In diesem Dokument werdet ihr Informationen zur Anwendung des Soundpacks und zu allen Feature-Details finden. Viel Spaß beim Lesen und falls sonst noch Fragen bestehen, könnt ihr euch gerne Online an uns wenden. Für weitere Informationen empfehle ich euch ebenfalls, meinen Blog zu besuchen: http://toni.satoprogs.de/

Sounds
---
Wie man sicherlich erraten kann, ist die Hauptfunktion des Soundpacks, Avalon mit Geräuschen zu untermalen. Diesbezüglich gibt es natürlich einige Konfigurationen, die ihr vornehmen könnt. Hier die dazu verwendeten Tastenkombinationen:
F9 - Lautstärke der Geräusche leiser drehen
F10 - Lautstärke der Geräusche lauter drehen

Musik
---
Wir versuchen ebenfalls, Avalon mit Musik zu unterlegen, um das Spielen spaßiger zu machen und den verschiedenen Regionen etwas mehr Pepp zu verleihen. Natürlich gibt es auch hier einige Tastenkombinationen:
F11 - Wechsel zwischen der Sound-Lautstärkeregelung und Musiklautstärkeregelung
F9 - Falls mit F11 auf Musik umgestellt wurde, regelt man hiermit die Lautstärke nach unten
F10 - Falls mit F11 auf Musik umgestellt, wird hiermit die Lautstärke hochgedreht.

Muting
---
Eingefleischte Zocker wissen, dass man unter Muting das Stummschalten bezeichnet. Das Soundpack bietet die Möglichkeit, Sounds, Musik oder beides gleichzeitig stumm zu schalten. Dazu drückt man Strg+F11. Je nachdem, welche Lautstärkeregelung man mit F11 gerade eingestellt hat, wird dieses System stummgeschaltet. Mit Strg+Umschalt+F11 werden alle Systeme stummgeschaltet.

ScreenReader-Unterstützung
---
Da einige Leute mit der Unterstützung von Jaws mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es möglich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
---
Wir unterstützen die Ausgabe von TP, ZP und AP via Sounds. Da nicht jeder alle diese Ausgaben immer anhaben möchte und es durchaus zu einer ganzen Fülle an Sounds kommen kann, gibt es die Möglichkeit, die Ausgaben einzeln zu deaktivieren. Dafür sind die Tasten F2, F3 und F4 zuständig. Probiert es doch einfach mal aus :).
Hinweis: Falls ihr euch wundert, dass die Sound-Ausgaben etwas asynchron zum Spielverlauf arbeiten und ihr denkt, dass es zu langsam bzw. ineffizient wäre - falsch gedacht. Tatsächlich ist es schneller und präziser als die Ingame-Ausgabe, da die Ingame-Ausgabe höchstens jede Sekunde Werte ausgibt, die Sound-Ausgaben jedoch sofort reagiert.

zauber-Tracking und Warnungen
---
Wir haben die Funktion eingebaut, dass man vor Allem Schutzzauber startet und anschließend jeder Zeit die bereits laufende Zeit der zauber abfragen kann. Dazu benötigt man nur das Kommando "az".
Dazugekommen ist außerdem die Möglichkeit, sich Warnungen über den aktuellen Verlauf eines Zaubers ausgeben lassen zu können. Dazu benötigt man ausschließlich das Ausrufezeichen (!). Tippt man einfach nur !, so werden einem die unterstützten Zauber ausgegeben, zusammen mit einer Nummer, die benötigt wird, wenn ihr eine Warnung einschalten wollt. Tippt ihr das !, direkt gefolgt von der Nummer, so wird die Warnung für diesen Zauber aktiviert/deaktiviert.
Beispiel: !9
Anschließend wird minütlich eine Warnung ausgegeben, die euch darauf hinweist, dass euer Zauber noch läuft.
Hinweis: Bisher sind noch nicht alle Zauber unterstützt. Wir werden jedoch versuchen, nach und nach alle Zauber aufzunehmen. Falls ihr noch etwas hinzugefügt haben wollt, meldet euch einfach bei uns.

Optimierte Ausgabe
---
Mithilfe der Tastenkombination Strg+Tab ist es möglich, in ein Ausgabefenster zu wechseln, welches dem Windows Editor nachempfunden ist. Hier werden auch sämmtliche Ausgaben von Avalon hineingeleitet und können ohne weiteres nachgelesen und herauskopiert werden. Um wieder in die Avalon Eingabe zu gelangen, wird einfach Strg+Tab erneut gedrückt.

Mondsuche
---
Da es einige vergessliche Menschen gibt, die sich die Zielpositionen der Monde Foie und Jani nicht merken können, gibt es eine Reihe von Aliasen, die es euch ermöglichen, die Position mithilfe eines einzelnen Kommandos abzufragen. Die Aliase sind wie folgt aufgebaut: MondnamePosition. Beispiel: foien für Foie Norden =Alotria, foienw für Foie Nordwesten =Sandutz.

Navigation
---
Damit sich einige Leute vielleicht doch besser zurechtfinden oder einfach nur aus Spaß gibt es jetzt das Kommando "pos". Dieses Kommando gibt die zuletzt erkannte Position, die ihr besucht habt, aus und, falls ihr euch auf einer Karte bewegt, auch eure X bzw. Y-Koordinaten.

Kanalhistorie
---
Seid einiger Zeit gibt es die Möglichkeit, die letzten 10 Meldungen aller öffentlichen Kanäle auch Client-Inern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:
Alt+Pfeilrechts/Pfeillinks - Kanäle durchschalten
Alt+1-0 - Nachricht via Sprache ausgeben
Alt+1-0 zwei mal schnell drücken - Text in die Zwischenablage kopieren
Alt+1-0 drei mal schnell drücken - Text an dieser Stelle einfügen

Speedwalking
---
Das Speedwalking ist ebenfalls ein sehr gern genutztes Feature des Soundpacks. Dabei handelt es sich um die Möglichkeit, von einem Platz zu einem anderen zu kommen, indem man einfach angibt, dass man von hier nach dort laufen möchte. Dabei muss man keinen Finger krümmen, dass Programm läuft ganz von allein. Das Basiskommando dafür ist "/". Dieser Befehl listet alle vorhandenen Speedwalks auf. Dabei haben wir auf kurze und effiziente Abkürzungen zurückgegriffen. Damit auch ihr durch unser System durchsteigt, findet ihr im Anschluss eine Liste aller bisherigen Abkürzungen inkl. detaillierter Erklärung. Prinzipiell ist das Kommando für einen Weg wie folgt aufgebaut: / um zu bedeutet, dass es sich hierbei um ein Speedwalk handelt, Abkürzung der Startposition, _ um zu signalisieren, dass nun die Zielposition folgen wird und schließlich die Abkürzung des Ziels. Ein Beispielkommando, um von Minias nach Corona zu laufen wäre also: "/min_cor". Mit einem / und folgender Startposition, ohne dem _ und der Angabe einer Zielposition kann man sich alle Speedwalks filtern, welche von der Startposition starten.
Hinter dem Speedwalk findet ihr außerdem in Klammern stehend auch die Angabe "sicher" oder "unsicher". Dieser Wert gibt an, ob bei diesem Speedwalk ausschließlich auf sicheren Feldern, d.h. ohne Kampf oder Störung gelaufen wird, oder ob dieser Speedwalk auch durch gefährliches Gebiet führt.
Mithilfe der Tastenkombination Strg+D wird der momentan laufende Speedwalk an der Stelle, an welcher ihr euch gerade befindet, abgebrochen. Es kann durch wiederholtes Drücken der Tastenkombination wieder fortgesetzt werden.
Hinweis: Es sind längst noch nicht alle Wege im Soundpack vorhanden. Da das Integrieren dieser Wege recht zeitaufwändig ist bitten wir um Verständnis, dass wir bisher nicht alle Wege unterstützen. Ihr könnt uns jedoch unterstützen, indem ihr uns auf einen nicht vorhandenen Weg hinweist oder uns sogar einen von euch notierten Weg schickt, damit wir ihn mit in unser System aufnehmen.
Wir haben außerdem die Möglichkeit eingebaut, eure Startposition abzusichern. Dadurch könnt ihr nicht mehr von einer falschen Position loslaufen und landet dadurch im Nirgenwo. Dieses Feature ist standardmäßig eingeschaltet. Falls ihr die Absicherung ausschalten wollt, drückt einfach F5. Diese Funktion kann nur effektiv genutzt werden, wenn es auf euren zuletzt besuchten Feld hell ist. Falls es gerade hell geworden ist, ihr trotzdem die Meldung erhaltet, dass es auf eurem Feld hell sein muss, dann wechselt bitte das Feld. Wenn ihr außerdem die Meldung erhalten solltet, dass es noch keine Startposition für dieses Speedwalk gibt und deshalb in das alte System zurückgefallen wird waren wir bisher noch faul und haben die Startposition noch nicht hinterlegt. In diesem Fall nehmt bitte brieflich oder via Rede oder natürlich via E-Mail Kontakt zu uns auf.
Nun noch die Liste unserer Abkürzungen in alphabetischer Reihenfolge:
abt - Portal Abtei, Nereid
affe - Anleger Affenkopfinsel, Unterwelt
ale - Zugang Alemnia, Losaria
alo - Westtor Alotria, Nereid
amp - Mondtor, Amphibos
arg - Meister aller Waffen Ruwenda, Elandor
ash - Feld nördlich vom Nordtor Ashar, Nereid
aug - Tor Augyra, Amphibos
bank - Bank, Diverse
barde - Barden, Diverse
camp - Zugang Camp Baralon, Unterwelt
cor - Vor der Höhle Corona, Nereid
dhun - Feld vor dem Transportkorb Dhungar, Nereid
dk - Standort der Säule, Dämonenkriegergilde, Unterwelt
dol - Mondtor, Dolphinia
druide - Druide, Diverse
gol - Gilde Golemkultisten, Unterwelt
gwen - Bettler Gwendon, Tintagel
haendler - Gemischtwahrenladen, diverse
haf - Häfen diverser Inseln, Elandor
hain - Eingang Druidenhain, Solgard
her - Hermine Eisenbieger, Holbytla
hol - Mondtor, Holbytla
ilme - Ilmelorn, Tintagel
jagd - Jäger, Diverse
jas - Tor Jasthan, Unterwelt
jer - Feld vor dem ersten Feld Jeresa, Losaria
kap - Priester in der Kapelle Zugang Rilauven, Unterwelt
ker - Vor dem Tor, Kergora, Amphibos
koch - Kochzunft, Holbytla
lim - Zugang Limarch, Holbytla
lor - Mondtor, Lorinant
los - Mondtor, Losaria
magier bzw. magier1 bis magierN - Magie-Lehrmeister, Diverse
min - Marktplatz Minias, Nereid
mine - Mine (Gold, Silber, Mithril, Golemmine) Zugang
mos - Goblinfestung Mossul, Amphibos
orks - Orkjägerlager, Nereid
por - Portal Rilauven, Unterwelt
post - Post, diverse
ril - Zentrum Rilauven, Unterwelt
run - Übergang zu den Runenschmieden, Amphibos
ruw - Hafen Ruwenda, Elandor
san - Südtor Sandutz, Nereid
schlucht - Zugang Knochenschlucht, Nereid
schmied - Schmiedezunft, diverse
see - Quecksilbersee, Unterwelt
siedlung - Zugang Waldsiedlung, Tintagel
skal - Tor Skalewar, Unterwelt
sol - Zentrum, Solgard
tief - Zentrum Tiefebene, Unterwelt
tin - Mondtor, Tintagel
toe - Absprungstelle Totenebene, Unterwelt
tol - Mondtor, Tolsgal
tor - jeweiliges Mondtor, Nereid
us - Weggabelung nach Loretta, Nereid
uw - Von der Oberwelt aus der Standort des Unterwelt-Einganges in Dhungar, in der Unterwelt "Ein Weg in andere Gefilde"
ver - Vern, Losaria
wal - Hütte, Walhalla
wl - Waldläufer, Tintagel

Unterstützte Spiele
---
Wir werden anfangen, Spiele, soweit es möglich ist, mit Geräuschen zu untermalen und vielleicht auch für den Spielenden einfacher zu gestalten, vor Allem bei eher für Sehende ausgelegten Spielen kann dies für Blinde durchaus besser sein. Hier findet ihr eine Liste der bisher unterstützten Spiele, inklusive derer Spezialkommandos:
Hajo: Vollständig mit Sounds unterlegt. Hajo besitzt ein extra alias "rausl", welches das MUD-Kommando rauslegen abkürzt und also genau so verwendet werden kann.

Gildenerweiterungen
---
Bei Gilden, für welche eine Optimierung hilfreich wäre und außerdem akzeptiert werden kann, werden wir diese zur Verfügung stellen. Hier werden wir die Erweiterungen, welche nutzbar sind, aufführen.
Dämonenkrieger:
Die Dämonenkrieger sollten wissen, dass es teilweise sehr schwer sein kann, den Überblick über die wahren Namen seiner Dämonen zu behalten. Darum kann das Soundpack dies auch übernehmen. Möglich wird dies durch das einfache Aufrufen der Dämonenliste, was beim Einloggen eines Dämonenkriegers standardmäßig das erste mal vom Script getan wird. Nun kennt das Script die Namen der Dämonen und generiert automatisch Abkürzungen dafür.
Die Abkürzungen sehen standardmäßig so aus: Anfangsbuchstabe des Dämonentyps (a, b, k oder s), gefolgt von einer fortlaufenden Nummer (1, 2, 3, 4, ...). Will man also einen Bullrik beschwören, wird er mit b1, b2, b3... je nachdem, wie viele man besitzt und welchen man beschwören will, beschworen. Besitzt man nur einen Bullrik, kann man auch einfach b nehmen, die 1 ist dann nicht nötig. Will man die automatische Nomenklatur nicht verwenden, reicht auch einfach das angeben der ersten Buchstaben des Namens. Insofern diese Buchstaben eindeutig zuweisbar sind, wir der vollständige Name ergänzt.
Zu beachten ist jedoch, dass hierbei nicht die normale Spiel-Syntax verwendet werden kann, da man dann einen zu großen Eingriff in das Spielerleben vornehmen würde. Vielleicht möchten ja einige Spieler trotzdem die normale Spielweise fortführen, einfach weil es ihnen vom Rollenspiel-Charakter her besser gefällt? Darum haben wir Aliase definiert, die das Spielen angenehmer gestalten und gleichzeitig die Namensvervollständigung integrieren. Folgend findet ihr die vollständige Liste aller dafür vorgesehenen Aliase:
zh name - Hervorrufung
zw name - Wegschicken
zgp name - Gedankenpeitsche
zvs name - Verschmelzung
bnm name typ - Name
bbs name ziel - Beschützen
brv name ziel - Rüstungsverstärkung
bwv name ziel - Waffenverstärkung
el name - Erlösen
vg name - Vergessen
dli - Abrufen der internen Dämonenliste inkl. Abkürzungen
dbw name - Einen Dämon bewerten
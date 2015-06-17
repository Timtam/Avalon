Herzlich Willkommen zu unserem Soundpack f�r das MUD Avalon.

Bereits seit 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterst�tzt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln.
Seit 2014 ist auch Chiaray mit im Entwicklerteam.

In diesem Dokument werdet ihr Informationen zur Anwendung des Soundpacks und zu allen Details der Features finden.

Viel Spa� beim Lesen und falls sonst noch Fragen bestehen, k�nnt ihr euch gerne Online an uns wenden.
F�r weitere Informationen empfehle ich euch ebenfalls, meinen Blog zu besuchen: http://toni.satoprogs.de/

Sounds
------

Die Hauptfunktion des Soundpacks ist, Avalon mit Ger�uschen zu untermalen. Diesbez�glich gibt es nat�rlich einige Konfigurationen, die ihr vornehmen k�nnt. Hier die dazu verwendeten Tastenkombinationen:

F9 - Lautst�rke der Ger�usche leiser drehen
F10 - Lautst�rke der Ger�usche lauter drehen

Musik
-----

Wir versuchen ebenfalls, Avalon mit Musik zu unterlegen, um das Spielen spa�iger zu machen und den verschiedenen Regionen etwas mehr Pepp zu verleihen. Nat�rlich gibt es auch hier einige Tastenkombinationen:
F11 - Wechsel zwischen der Sound-Lautst�rkeregelung und Musiklautst�rkeregelung
F9 - Falls mit F11 auf Musik umgestellt wurde, regelt man hiermit die Lautst�rke nach unten
F10 - Falls mit F11 auf Musik umgestellt, wird hiermit die Lautst�rke hochgedreht.

Muting
------

Eingefleischte Zocker von euch wissen, dass man unter Muting das Stummschalten bezeichnet. Das Soundpack bietet die M�glichkeit, Sounds, Musik oder beides gleichzeitig stumm zu schalten. Dazu dr�ckt man Strg+F11. Je nachdem, welche Lautst�rkeregelung man mit F11 gerade eingestellt hat, wird dieses System stummgeschaltet. Mit Strg+Umschalt+F11 werden alle Systeme stummgeschaltet.

ScreenReader-Unterst�tzung
--------------------------

Da einige Leute mit der Unterst�tzung von Jaws mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es m�glich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
-----------------------

Wir unterst�tzen die Ausgabe von TP, ZP und AP via Sounds. Da nicht jeder alle diese Ausgaben immer anhaben m�chte und es durchaus zu einer ganzen F�lle an Sounds kommen kann, gibt es die M�glichkeit, die Ausgaben einzeln zu deaktivieren. Daf�r sind die Tasten F2, F3 und F4 zust�ndig. Probiert es doch einfach mal aus :).

Hinweis: Falls ihr euch wundert, dass die Sound-Ausgaben etwas asynchron zum Spielverlauf arbeiten und ihr denkt, dass es zu langsam bzw. ineffizient w�re - falsch gedacht. Tats�chlich ist es schneller und pr�ziser als die Ingame-Ausgabe, da die Ingame-Ausgabe h�chstens jede Sekunde Werte ausgibt, die Sound-Ausgaben jedoch sofort reagiert.

zauber-Tracking und Warnungen
-----------------------------

Hierzu haben wir die Funktion eingebaut, dass man vor Allem Schutzzauber startet und anschlie�end jeder Zeit die bereits laufende Zeit der zauber abfragen kann. Dazu ben�tigt man nur das Kommando "az".
Dazugekommen ist au�erdem die M�glichkeit, sich Warnungen �ber den aktuellen Verlauf eines Zaubers ausgeben lassen zu k�nnen. Dazu ben�tigt man ausschlie�lich das Ausrufezeichen (!). Tippt man einfach nur !, so werden einem die unterst�tzten Zauber ausgegeben, zusammen mit einer Nummer, die ben�tigt wird, wenn ihr eine Warnung einschalten wollt. Tippt ihr das !, direkt gefolgt von der Nummer, so wird die Warnung f�r diesen Zauber aktiviert/deaktiviert.
Beispiel: !9
Anschlie�end wird min�tlich eine Warnung ausgegeben, die euch darauf hinweist, dass euer Zauber noch l�uft.

Hinweis: Bisher sind noch nicht alle Zauber unterst�tzt. Wir werden jedoch versuchen, nach und nach alle Zauber aufzunehmen. Falls ihr noch etwas hinzugef�gt haben wollt, meldet euch einfach bei uns.

Optimierte Ausgabe
------------------

Mit Hilfe der Tastenkombination Strg+Tab ist es m�glich, in ein Ausgabefenster zu wechseln, welches dem Windows Editor nachempfunden ist. Hier werden auch s�mmtliche Ausgaben von Avalon hineingeleitet und k�nnen ohne weiteres nachgelesen und herauskopiert werden. Um wieder in die Avalon Eingabe zu gelangen, wird einfach Strg+Tab erneut gedr�ckt.

Mondsuche
---------

Da es einige vergessliche Menschen gibt, die sich die Zielpositionen der Monde Foie und Jani nicht merken k�nnen, gibt es eine Reihe von Aliasen, die es euch erm�glichen, die Position mithilfe eines einzelnen Kommandos abzufragen. Die Aliase sind wie folgt aufgebaut: MondnamePosition. Beispiel: foien f�r Foie Norden =Alotria, foienw f�r Foie Nordwesten =Sandutz.

Navigation
----------

Damit sich einige Leute vielleicht doch besser zurechtfinden oder einfach nur aus Spa� gibt es jetzt das Kommando "pos". Dieses Kommando gibt die zuletzt erkannte Position, die ihr besucht habt, aus und, falls ihr euch auf einer Karte bewegt, auch eure X bzw. Y-Koordinaten.

Kanalverlauf
------------

Seit einiger Zeit gibt es die M�glichkeit, die letzten 10 Meldungen aller �ffentlichen Kan�le auch Client-inern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:
Alt+Pfeilrechts/Pfeillinks - Kan�le durchschalten
Alt+1-0 - Nachricht via Sprache ausgeben
Alt+1-0 zwei mal schnell dr�cken - Text in die Zwischenablage kopieren
Alt+1-0 drei mal schnell dr�cken - Text an dieser Stelle einf�gen

Speedwalking
------------

Die Speedwalks sind ebenfalls ein sehr gern genutztes Feature des Soundpacks. Dabei handelt es sich um die M�glichkeit, von einem Platz zu einem anderen zu kommen, indem man einfach angibt, dass man von hier nach dort laufen m�chte. Dabei muss man keinen Finger kr�mmen, dass Programm l�uft ganz von allein. Das Basiskommando daf�r ist "/". Dieser Befehl listet alle vorhandenen Speedwalks auf. Dabei haben wir auf kurze und effiziente Abk�rzungen zur�ckgegriffen. Damit auch ihr durch unser System durchsteigt, findet ihr im Anschluss eine Liste aller bisherigen Abk�rzungen inkl. detaillierter Erkl�rung. Prinzipiell ist das Kommando f�r einen Weg wie folgt aufgebaut: / um zu bedeutet, dass es sich hierbei um ein Speedwalk handelt, Abk�rzung der Startposition, _ um zu signalisieren, dass nun die Zielposition folgen wird und schlie�lich die Abk�rzung des Ziels. Ein Beispielkommando, um von Minias nach Corona zu laufen w�re also: "/min_cor". Mit einem / und folgender Startposition, ohne dem _ und der Angabe einer Zielposition kann man sich alle Speedwalks filtern, welche von der Startposition starten.
Hinter dem Speedwalk findet ihr au�erdem in Klammern stehend auch die Angabe "sicher" oder "unsicher". Dieser Wert gibt an, ob bei diesem Speedwalk ausschlie�lich auf sicheren Feldern, d. h. ohne Kampf oder St�rung gelaufen wird, oder ob dieser Speedwalk auch durch gef�hrliches Gebiet f�hrt.
Mit Hilfe der Tastenkombination Strg+D wird der momentan laufende Speedwalk an der Stelle, an welcher ihr euch gerade befindet, abgebrochen. Es kann durch wiederholtes Dr�cken der Tastenkombination wieder fortgesetzt werden.
Au�erdem haben wir die M�glichkeit eingebaut, eure Startposition abzusichern. Dadurch k�nnt ihr nicht mehr von einer falschen Position loslaufen und landet dadurch im Nirgendwo. Dieses Feature ist standardm��ig eingeschaltet. Falls ihr die Absicherung ausschalten wollt, dr�ckt einfach F5. Diese Funktion kann nur effektiv genutzt werden, wenn es auf euren zuletzt besuchten Feld hell ist. Falls es gerade hell geworden ist, ihr trotzdem die Meldung erhaltet, dass es auf eurem Feld hell sein muss, dann wechselt bitte das Feld. Wenn ihr au�erdem die Meldung erhalten solltet, dass es noch keine Startposition f�r dieses Speedwalk gibt und deshalb in das alte System zur�ckgefallen wird waren wir bisher noch faul und haben die Startposition noch nicht hinterlegt. In diesem Fall nehmt bitte brieflich oder via Rede oder nat�rlich via E-Mail Kontakt zu uns auf.

Hinweis: Es sind l�ngst noch nicht alle Wege im Soundpack vorhanden. Da das Integrieren dieser Wege recht zeitaufw�ndig ist bitten wir um Verst�ndnis, dass wir bisher nicht alle Wege unterst�tzen. Ihr k�nnt uns jedoch unterst�tzen, indem ihr uns auf einen nicht vorhandenen Weg hinweist oder uns sogar einen von euch notierten Weg schickt, damit wir ihn mit in unser System aufnehmen.
Um gerade diese eigene Notierung der Wege zu vereinfachen, ist in Avalon auch ein Speedwalk Mapper integriert, d. h. eine M�glichkeit, eure Wege aufzuzeichnen und anschlie�end den Entwicklern zukommen zu lassen, um sie fest zu integrieren. Dieser Mapper ist selbsterkl�ren, sobald ein wichtiges Kommando bekannt ist: "spm start". Dieses Kommando startet die Aufzeichnung. Jedes Kommando, das anschlie�end getippt wird, wird aufgezeichnet. Alle fortlaufenden Aktionen erkl�rt der Speedwalk Mapper von selbst.
Mit dem Kommando "spm z", wird der zuletzt eingegebene Befehl wieder gel�scht.
Der Speedwalk Mapper l�sst sich mit "spm stop" beenden.
Anschlie�end werden die Namen f�r die Start- und die Endposition abgefragt. Ebenfalls wird abgefragt, ob der Speedwalk nur �ber sichere Wege verl�uft.
Danach stehen die Informationen in der Zwischenablage zur Verf�gung.

Nun noch die Liste der Abk�rzungen in alphabetischer Reihenfolge:
abt - Portal Abtei, Nereid
affe - Anleger Affenkopfinsel, Unterwelt
ale - Zugang Alemnia, Losaria
alo - Westtor Alotria, Nereid
amp - Mondtor, Amphibos
arg - Meister aller Waffen Ruwenda, Elandor
ash - Feld n�rdlich vom Nordtor Ashar, Nereid
aug - Tor Augyra, Amphibos
bank - Bank, Diverse
barde - Barden, Diverse
camp - Zugang Camp Baralon, Unterwelt
cor - Vor der H�hle Corona, Nereid
dhun - Feld vor dem Transportkorb Dhungar, Nereid
dichter - Feld vor dem Haus der Dichterzunft, Nereid
dk - Standort der S�ule, D�monenkriegergilde, Unterwelt
dol - Mondtor, Dolphinia
druide - Druide, Diverse
farm - Eingang der Pfeifenkrautfarm, Holbytla
form - Formwandler, Diverse
gol - Gilde Golemkultisten, Unterwelt
gwen - Bettler Gwendon, Tintagel
haendler - Gemischtwahrenladen, diverse
haf - H�fen diverser Inseln, Elandor
hain - Eingang Druidenhain, Solgard
her - Hermine Eisenbieger, Holbytla
hol - Mondtor, Holbytla
htoe - Feld vor der H�hle / dem Ausgang der Totenebene zur�ck in die Unterwelt
ilme - Ilmelorn, Tolsgal
jagd - J�ger, Diverse
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
moor - Moor der Untoten, Unterwelt, Ankunft nach Aushebeln der Planken bei Anlegestelle 1, Minias
mos - Goblinfestung Mossul, Amphibos
muehle - M�hle, Holbytla
orks - Orkj�gerlager, Nereid
papierfalter - Feld vor dem Haus der Origamizunft, Nereid
por - Portal Rilauven, Unterwelt
post - Post, diverse
ril - Zentrum Rilauven, Unterwelt
run - �bergang zu den Runenschmieden, Amphibos
ruw - Hafen Ruwenda, Elandor
san - S�dtor Sandutz, Nereid
schlucht - Zugang Knochenschlucht, Nereid
schmied - Schmiedezunft, diverse
see - Quecksilbersee, Unterwelt
siedlung - Zugang Waldsiedlung, Tintagel
skal - Tor Skalewar, Unterwelt
sol - Zentrum, Solgard
teich - Teich westlich von Alotria (Zugang Walhalla), Nereid
tempel - Febracim-Tempel, Unterwelt
tief - Zentrum Tiefebene, Unterwelt
tin - Mondtor, Tintagel
toe - Absprungstelle Totenebene, Unterwelt
tol - Mondtor, Tolsgal
tor - jeweiliges Mondtor, Nereid
us - Weggabelung nach Loretta, Nereid
uw - Von der Oberwelt aus der Standort des Unterwelt-Einganges in Dhungar, in der Unterwelt "Ein Weg in andere Gefilde"
ver - Vern, Losaria
wahrsager - Feld vor dem Zelt der Wahrsagerzunft, Nereid
wal - H�tte, Walhalla
wl - Waldl�ufer, Tintagel
wtoe - Wegweiser in der Totenebene, ein Feld �stlich von Absprungsstelle
yol - ?

Unterst�tzte Spiele
-------------------

Wir werden anfangen, Spiele, soweit es m�glich ist, mit Ger�uschen zu untermalen und vielleicht auch f�r den Spielenden einfacher zu gestalten, vor Allem bei eher f�r Sehende ausgelegten Spielen kann dies f�r Blinde durchaus besser sein. Hier findet ihr eine Liste der bisher unterst�tzten Spiele, inklusive derer Spezialkommandos:
Hajo: Vollst�ndig mit Sounds unterlegt. Hajo besitzt ein extra alias "rausl", welches das MUD-Kommando rauslegen abk�rzt und also genau so verwendet werden kann.

Gildenerweiterungen
-------------------

Bei Gilden, f�r welche eine Optimierung hilfreich w�re und au�erdem akzeptiert werden kann, werden wir diese zur Verf�gung stellen. Hier werden wir die Erweiterungen, welche nutzbar sind, auff�hren.

D�monenkrieger:
Die D�monenkrieger sollten wissen, dass es teilweise sehr schwer sein kann, den �berblick �ber die wahren Namen seiner D�monen zu behalten. Darum kann das Soundpack dies auch �bernehmen. M�glich wird dies durch das einfache Aufrufen der D�monenliste, was beim Einloggen eines D�monenkriegers standardm��ig das erste mal vom Script getan wird. Nun kennt das Script die Namen der D�monen und generiert automatisch Abk�rzungen daf�r.
Die Abk�rzungen sehen standardm��ig so aus: Anfangsbuchstabe des D�monentyps (a, b, k oder s), gefolgt von einer fortlaufenden Nummer (1, 2, 3, 4, ...). Will man also einen Bullrik beschw�ren, wird er mit b1, b2, b3... je nachdem, wie viele man besitzt und welchen man beschw�ren will, beschworen. Besitzt man nur einen Bullrik, kann man auch einfach b nehmen, die 1 ist dann nicht n�tig. Will man die automatische Nomenklatur nicht verwenden, reicht auch einfach das angeben der ersten Buchstaben des Namens. Insofern diese Buchstaben eindeutig zuweisbar sind, wir der vollst�ndige Name erg�nzt.
Zu beachten ist jedoch, dass hierbei nicht die normale Spiel-Syntax verwendet werden kann, da man dann einen zu gro�en Eingriff in das Spielerleben vornehmen w�rde. Vielleicht m�chten ja einige Spieler trotzdem die normale Spielweise fortf�hren, einfach weil es ihnen vom Rollenspiel-Charakter her besser gef�llt? Darum haben wir Aliase definiert, die das Spielen angenehmer gestalten und gleichzeitig die Namensvervollst�ndigung integrieren. Folgend findet ihr die vollst�ndige Liste aller daf�r vorgesehenen Aliase:

zh name - Hervorrufung
zw name - Wegschicken
zgp name - Gedankenpeitsche
zvs name - Verschmelzung
bnm name typ - Name
bbs name ziel - Besch�tzen
brv name ziel - R�stungsverst�rkung
bwv name ziel - Waffenverst�rkung
el name - Erl�sen
vg name - Vergessen
dli - Abrufen der internen D�monenliste inkl. Abk�rzungen
dbw name - Einen D�mon bewerten

Wir w�nschen nun viel Spa� und gute Unterhaltung beim Spielen!

Das Entwicklerteam
Dranor, Magician und Chiaray

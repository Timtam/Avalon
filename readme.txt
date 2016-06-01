Herzlich Willkommen zu unserem Soundpack f�r das MUD Avalon.

Bereits seit 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterst�tzt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln.
Seit 2014 ist auch Chiaray mit im Entwicklerteam.

In diesem Dokument werdet ihr Informationen zur Anwendung des Soundpacks und zu allen Details der Features finden.

Viel Spa� beim Lesen und falls sonst noch Fragen bestehen, k�nnt ihr euch gerne Online an uns wenden.
F�r weitere Informationen empfehle ich euch ebenfalls, meinen Blog zu besuchen: http://toni.satoprogs.de/

Generelle Informationen
------------

Allgemein f�r das Soundpack gilt folgende Regel: In keinem Fall d�rft ihr �nderungen an der Welt speichern, wenn ihr beim Schlie�en des Clients danach gefragt werdet. Sollten, wie hier in dieser Datei beschrieben, �nderungen an der Welt vorgenommen worden sein, dann werden diese Daten anderweitig gespeichert, sodass sie euch, auch wenn ihr die Welt nicht speichert, beim n�chsten Start zur Verf�gung stehen werden. Solltet ihr die Welt dennoch speichern, wird es garantiert zu diversen Fehlern kommen, f�r welche wir keinerlei Gewehrleistung tragen. Solltet ihr sie dennoch einmal ungewollt gespeichert haben, k�nnt ihr sie mithilfe des Updaters zur�cksetzen. F�hrt daf�r einfach ein regul�res Update aus, indem ihr die update.exe im Soundpack-Ordner startet und den Anweisungen folgt. 

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

Da einige Leute mit der Unterst�tzung von JAWS mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es m�glich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
-----------------------

Wir unterst�tzen die Ausgabe von TP, ZP und AP via Sounds.
Da nicht jeder alle diese Ausgaben immer anhaben m�chte und es durchaus zu einer ganzen F�lle an Sounds kommen kann, gibt es die M�glichkeit, die Ausgaben einzeln zu deaktivieren.
Daf�r sind die Tasten F2, F3 und F4 zust�ndig. Probiert es doch einfach mal aus.

Hinweis: Falls ihr euch wundert, dass die Sound-Ausgaben etwas asynchron zum Spielverlauf arbeiten und ihr denkt, dass es zu langsam bzw. ineffizient w�re - falsch gedacht. Tats�chlich ist es schneller und pr�ziser als die Ingame-Ausgabe, da die Ingame-Ausgabe h�chstens jede Sekunde Werte ausgibt, die Sound-Ausgaben jedoch sofort reagiert.

zauber-Tracking und Warnungen
-----------------------------

Hierzu haben wir die Funktion eingebaut, dass man vor Allem Schutzzauber startet und anschlie�end jeder Zeit die bereits laufende Zeit der zauber abfragen kann. Dazu ben�tigt man nur das Kommando "az".
Dazugekommen ist au�erdem die M�glichkeit, sich Warnungen �ber den aktuellen Verlauf eines Zaubers ausgeben lassen zu k�nnen. Dazu ben�tigt man ausschlie�lich das Ausrufezeichen (!). Tippt man einfach nur !, so werden einem die unterst�tzten Zauber ausgegeben, zusammen mit einer Nummer, die ben�tigt wird, wenn ihr eine Warnung einschalten wollt. Tippt ihr das !, direkt gefolgt von der Nummer, so wird die Warnung f�r diesen Zauber aktiviert/deaktiviert.
Beispiel: !9
Anschlie�end wird jede Minute eine Warnung ausgegeben, die euch darauf hinweist, dass euer Zauber noch l�uft.

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
Au�erdem zur Navigation geh�rt die M�glichkeit, sich via Nummernblock, so man einen hat, zu bewegen.
Dabeibesitzt jede Taste f�nf Funktionen. Entweder langes sp�hen, kurzes sp�hen, klettern, schwimmen oder laufen, wobei die ersteren beiden Optionen nur mithilfe eines Fernrohrs m�glich sind. Umgeschaltet werden diese Modi mithilfe der Multiplikations- oder auch L�schen Taste. Sollte diese Taste mal nicht reagieren, wird mithilfe des Befehls numpad Abhilfe geschaffen.
Die Tasten sind in den entsprechenden Himmelsrichtungen angeordnet, hei�t s�dwesten =1, nordosten = 9, osten = 6, Norden = 8 und so weiter. Die restlichen Tasten geben den Spielstand entweder lang oder kurz aus oder schauen sich im derzeitigen Raum um.

Kanalverlauf
------------

F�r Blinde
------------

Seit einiger Zeit gibt es die M�glichkeit, die letzten 10 Meldungen aller �ffentlichen Kan�le auch Client-intern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:
Alt+Pfeilrechts/Pfeillinks - Kan�le durchschalten
Alt+1-0 - Nachricht via Sprache ausgeben
Alt+1-0 zwei mal schnell dr�cken - Text in die Zwischenablage kopieren
Alt+1-0 drei mal schnell dr�cken - Text an dieser Stelle einf�gen

F�r Sehende
------------

Im Zuge einer �berarbeitung f�r Sehende wurde dem Soundpack auch ein Ausgabefenster f�r Kanal-Nachrichten hinzugef�gt. Die Farben der Kan�le sind dabei frei w�hlbar, stimmen allerdings nicht mit den Farben �berein, die ihr f�r das normale Verbindungsfenster in Avalon gew�hlt habt. Stattdessen m�sst ihr unter Game -> Configure -> Custom Colours eure eigenen Farben definieren. Es folgt eine Liste von Kan�len mit den zugeh�rigen Zahlen der Custom Colours, damit ihr sie euch passend einf�rben k�nnt:
Sagen 1
Reden 2
Laber 3
Gruppe 4
Neuling 5
Verk�ndungen 6
Tod 7
Schwafel 8
Login, Logout, Statue 9
Monster, Rufen 10
Gilde 11
Gilden, R�tsel, Spiele 12
Zeitung 13
Tafelrunde 14
D-Chat 15
Restliche 16

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
abt - Portal Abtei auf Nereid
affe - Anleger Affenkopfinsel in der Unterwelt
ale - Zugang Alemnja auf Losaria
alo - Westtor von Alotria auf Nereid
aloz : Auf der Strasse Al'Chwarismi in Alotria am Wegweiser, Nereid
amp - Mondtor von Amphibos
anl - Diverse Anlegestellen in der Unterwelt
apf - Der absonderliche Apfel von Bauer Block auf Nereid
arg - Meister aller Waffen auf Ruwenda
ash - Feld n�rdlich vom Nordtor Ashar
ashz - Platz der Helden in Ashar
aug - Tor Augyra auf Amphibos
bank - Bank (Diverse)
barde - Barden (Diverse)
camp - Zugang Camp Baralon in der Unterwelt
cor - Vor der H�hle von Corona
corz - Platz des Lebens in Corona
dhun - Feld vor dem Transportkorb in Dhungar
dichter - Feld vor dem Haus der Dichterzunft
dk - Standort der S�ule der D�monenkriegergilde in der Unterwelt
dol - Mondtor auf Dolphinia
druide - Druide (diverse)
farm - Eingang der Pfeifenkrautfarm auf Holbytla
form - Formwandler (diverse)
gol - Gilde der Golemkultisten in der Unterwelt
gwen - Bettler in Gwendon auf Tintagel
haendler - Gemischtwahrenlaeden (diverse)
haf - H�fen diverser Inseln auf Elandor
hain - Eingang Druidenhain auf Solgard
her - Hermine Eisenbieger auf Holbytla
hol - Mondtor auf Holbytla
htoe - Feld vor der H�hle / dem Ausgang der Totenebene zur�ck in die Unterwelt
ilme - Ilmelorn auf Tolsgal
jagd - J�ger (diverse)
jas - Stadttor von Jasthan in der Unterwelt
jer - Feld vor dem ersten Feld Jeresa auf Losaria
kap - Priester in der Kapelle, Zugang Rilauven in der Unterwelt
ker - Vor dem Tor, Kergora auf Amphibos
koch - Kochzunft auf Holbytla
lim - Zugang Limarch auf Holbytla
lor - Mondtor von Lorinant
los - Mondtor von Losaria
magier bzw. magier1 bis magierN - Magie-Lehrmeister (diverse)
min - Marktplatz von Minias auf Nereid
mine - Minenzugang (Gold, Silber, Mithril, Diamantmine und Golemmine)
moor - Moor der Untoten, Unterwelt, Ankunft nach Aushebeln der Planken bei Anlegestelle 1 in Minias
mos - Goblinburg Mossul auf Amphibos
muehle - M�hle auf Holbytla
orks - Orkj�gerlager auf Nereid
papierfalter - Feld vor dem Haus der Origamizunft auf Nereid
por - Portal Rilauven in der Unterwelt
post - Post (diverse)
ril - Zentrum Rilauven in der Unterwelt
run - �bergang zu den Runenschmieden auf Amphibos
ruw - Hafen von Ruwenda auf Elandor
san - S�dtor von Sandutz auf Nereid
schlucht - Zugang der Knochenschlucht auf Nereid
schmied - Nebenstellen der Schmiedezunft (diverse)
see - Quecksilbersee in der Unterwelt
siedlung - Zugang Waldsiedlung auf Tintagel
skal - Stadttor von Skalewar in der Unterwelt
sol - Zentrum von Solgard
teich - Teich westlich von Alotria (Zugang Walhalla) auf Nereid
tempel - Febracim-Tempel in der Unterwelt
tief - Zentrum Tiefebene in der Unterwelt
tin - Mondtor von Tintagel
toe - Absprungstelle Totenebene in der Unterwelt
tol - Mondtor von Tolsgal
tor - Jeweiliges Mondtor auf Nereid
umi - Im Zentrum des Hauptplatzes von Uminotokai auf Amphibos
uw - Von der Oberwelt aus der Standort des Unterwelt-Einganges in Dhungar, in der Unterwelt "Ein Weg in andere Gefilde"
ver - Vern auf Losaria
wahrsager - Feld vor dem Zelt der Wahrsagerzunft auf Nereid
wal - H�tte in Walhalla
wl - Waldl�ufer auf Tintagel
wlm bzw. wlm1 bis wlmN - Waffenlehrmeister (diverse)
wtoe - Wegweiser in der Totenebene, ein Feld �stlich von der Absprungsstelle
yol - Bis vor die Yoldatfest in der Unterwelt
zwerge - Weggabelung im m�rdlichen Gebirge auf Nereid

Unterst�tzte Spiele
-------------------

Wir werden anfangen, Spiele, soweit es m�glich ist, mit Ger�uschen zu untermalen und vielleicht auch f�r den Spielenden einfacher zu gestalten, vor Allem bei eher f�r Sehende ausgelegten Spielen kann dies f�r Blinde durchaus besser sein. Hier findet ihr eine Liste der bisher unterst�tzten Spiele, inklusive derer Spezialkommandos:
Hajo: Vollst�ndig mit Sounds unterlegt.
Dieses Spiel besitzt ein extra alias "rausl", welches das MUD-Kommando rauslegen abk�rzt und also genau so verwendet werden kann.

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

Der integrierte Kompass
-----------------------

Analog zu dem bestehenden Befehl "pos" gibt es nun die M�glichkeit sich schon w�hrend des Herumlaufens das Gebiet und die aktuellen Standortkoordinaten sich gleich ausgeben zu k�nnen, anstelle auf jedem Feld separat "pos" eingeben zu m�ssen.
Eine Hilfe zum Kompass gibt es mit "kompass hilfe" oder "kompass ?".
Der Befehl "pos" bleibt nach wie vor erhalten.
Wir w�nschen nun viel Spa� und gute Unterhaltung beim Spielen!

Das Entwicklerteam
Dranor, Magician und Chiaray

Herzlich Willkommen zu unserem Soundpack für das MUD Avalon.

Bereits seit 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterstützt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln.
Seit 2014 ist auch Chiaray mit im Entwicklerteam.

In diesem Dokument werdet ihr Informationen zur Anwendung des Soundpacks und zu allen Details der Features finden.

Viel Spaß beim Lesen und falls sonst noch Fragen bestehen, könnt ihr euch gerne Online an uns wenden.
Für weitere Informationen empfehle ich euch ebenfalls, meinen Blog zu besuchen: http://toni.satoprogs.de/

Generelle Informationen
------------

Allgemein für das Soundpack gilt folgende Regel: In keinem Fall dürft ihr Änderungen an der Welt speichern, wenn ihr beim Schließen des Clients danach gefragt werdet. Sollten, wie hier in dieser Datei beschrieben, Änderungen an der Welt vorgenommen worden sein, dann werden diese Daten anderweitig gespeichert, sodass sie euch, auch wenn ihr die Welt nicht speichert, beim nächsten Start zur Verfügung stehen werden. Solltet ihr die Welt dennoch speichern, wird es garantiert zu diversen Fehlern kommen, für welche wir keinerlei Gewehrleistung tragen. Solltet ihr sie dennoch einmal ungewollt gespeichert haben, könnt ihr sie mithilfe des Updaters zurücksetzen. Führt dafür einfach ein reguläres Update aus, indem ihr die update.exe im Soundpack-Ordner startet und den Anweisungen folgt. 

Sounds
------

Die Hauptfunktion des Soundpacks ist, Avalon mit Geräuschen zu untermalen. Diesbezüglich gibt es natürlich einige Konfigurationen, die ihr vornehmen könnt. Hier die dazu verwendeten Tastenkombinationen:

F9 - Lautstärke der Geräusche leiser drehen
F10 - Lautstärke der Geräusche lauter drehen

Musik
-----

Wir versuchen ebenfalls, Avalon mit Musik zu unterlegen, um das Spielen spaßiger zu machen und den verschiedenen Regionen etwas mehr Pepp zu verleihen. Natürlich gibt es auch hier einige Tastenkombinationen:
F11 - Wechsel zwischen der Sound-Lautstärkeregelung und Musiklautstärkeregelung
F9 - Falls mit F11 auf Musik umgestellt wurde, regelt man hiermit die Lautstärke nach unten
F10 - Falls mit F11 auf Musik umgestellt, wird hiermit die Lautstärke hochgedreht.

Muting
------

Eingefleischte Zocker von euch wissen, dass man unter Muting das Stummschalten bezeichnet. Das Soundpack bietet die Möglichkeit, Sounds, Musik oder beides gleichzeitig stumm zu schalten. Dazu drückt man Strg+F11. Je nachdem, welche Lautstärkeregelung man mit F11 gerade eingestellt hat, wird dieses System stummgeschaltet. Mit Strg+Umschalt+F11 werden alle Systeme stummgeschaltet.

ScreenReader-Unterstützung
--------------------------

Da einige Leute mit der Unterstützung von JAWS mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es möglich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
-----------------------

Wir unterstützen die Ausgabe von TP, ZP und AP via Sounds.
Da nicht jeder alle diese Ausgaben immer anhaben möchte und es durchaus zu einer ganzen Fülle an Sounds kommen kann, gibt es die Möglichkeit, die Ausgaben einzeln zu deaktivieren.
Dafür sind die Tasten F2, F3 und F4 zuständig. Probiert es doch einfach mal aus.

Hinweis: Falls ihr euch wundert, dass die Sound-Ausgaben etwas asynchron zum Spielverlauf arbeiten und ihr denkt, dass es zu langsam bzw. ineffizient wäre - falsch gedacht. Tatsächlich ist es schneller und präziser als die Ingame-Ausgabe, da die Ingame-Ausgabe höchstens jede Sekunde Werte ausgibt, die Sound-Ausgaben jedoch sofort reagiert.

zauber-Tracking und Warnungen
-----------------------------

Hierzu haben wir die Funktion eingebaut, dass man vor Allem Schutzzauber startet und anschließend jeder Zeit die bereits laufende Zeit der zauber abfragen kann. Dazu benötigt man nur das Kommando "az".
Dazugekommen ist außerdem die Möglichkeit, sich Warnungen über den aktuellen Verlauf eines Zaubers ausgeben lassen zu können. Dazu benötigt man ausschließlich das Ausrufezeichen (!). Tippt man einfach nur !, so werden einem die unterstützten Zauber ausgegeben, zusammen mit einer Nummer, die benötigt wird, wenn ihr eine Warnung einschalten wollt. Tippt ihr das !, direkt gefolgt von der Nummer, so wird die Warnung für diesen Zauber aktiviert/deaktiviert.
Beispiel: !9
Anschließend wird jede Minute eine Warnung ausgegeben, die euch darauf hinweist, dass euer Zauber noch läuft.

Hinweis: Bisher sind noch nicht alle Zauber unterstützt. Wir werden jedoch versuchen, nach und nach alle Zauber aufzunehmen. Falls ihr noch etwas hinzugefügt haben wollt, meldet euch einfach bei uns.

Optimierte Ausgabe
------------------

Mit Hilfe der Tastenkombination Strg+Tab ist es möglich, in ein Ausgabefenster zu wechseln, welches dem Windows Editor nachempfunden ist. Hier werden auch sämmtliche Ausgaben von Avalon hineingeleitet und können ohne weiteres nachgelesen und herauskopiert werden. Um wieder in die Avalon Eingabe zu gelangen, wird einfach Strg+Tab erneut gedrückt.

Mondsuche
---------

Da es einige vergessliche Menschen gibt, die sich die Zielpositionen der Monde Foie und Jani nicht merken können, gibt es eine Reihe von Aliasen, die es euch ermöglichen, die Position mithilfe eines einzelnen Kommandos abzufragen. Die Aliase sind wie folgt aufgebaut: MondnamePosition. Beispiel: foien für Foie Norden =Alotria, foienw für Foie Nordwesten =Sandutz.

Navigation
----------

Damit sich einige Leute vielleicht doch besser zurechtfinden oder einfach nur aus Spaß gibt es jetzt das Kommando "pos". Dieses Kommando gibt die zuletzt erkannte Position, die ihr besucht habt, aus und, falls ihr euch auf einer Karte bewegt, auch eure X bzw. Y-Koordinaten.
Außerdem zur Navigation gehört die Möglichkeit, sich via Nummernblock, so man einen hat, zu bewegen.
Dabeibesitzt jede Taste fünf Funktionen. Entweder langes spähen, kurzes spähen, klettern, schwimmen oder laufen, wobei die ersteren beiden Optionen nur mithilfe eines Fernrohrs möglich sind. Umgeschaltet werden diese Modi mithilfe der Multiplikations- oder auch Löschen Taste. Sollte diese Taste mal nicht reagieren, wird mithilfe des Befehls numpad Abhilfe geschaffen.
Die Tasten sind in den entsprechenden Himmelsrichtungen angeordnet, heißt südwesten =1, nordosten = 9, osten = 6, Norden = 8 und so weiter. Die restlichen Tasten geben den Spielstand entweder lang oder kurz aus oder schauen sich im derzeitigen Raum um.

Kanalverlauf
------------

Für Blinde
------------

Seit einiger Zeit gibt es die Möglichkeit, die letzten 10 Meldungen aller öffentlichen Kanäle auch Client-intern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:
Alt+Pfeilrechts/Pfeillinks - Kanäle durchschalten
Alt+1-0 - Nachricht via Sprache ausgeben
Alt+1-0 zwei mal schnell drücken - Text in die Zwischenablage kopieren
Alt+1-0 drei mal schnell drücken - Text an dieser Stelle einfügen

Für Sehende
------------

Im Zuge einer Überarbeitung für Sehende wurde dem Soundpack auch ein Ausgabefenster für Kanal-Nachrichten hinzugefügt. Die Farben der Kanäle sind dabei frei wählbar, stimmen allerdings nicht mit den Farben überein, die ihr für das normale Verbindungsfenster in Avalon gewählt habt. Stattdessen müsst ihr unter Game -> Configure -> Custom Colours eure eigenen Farben definieren. Es folgt eine Liste von Kanälen mit den zugehörigen Zahlen der Custom Colours, damit ihr sie euch passend einfärben könnt:
Sagen 1
Reden 2
Laber 3
Gruppe 4
Neuling 5
Verkündungen 6
Tod 7
Schwafel 8
Login, Logout, Statue 9
Monster, Rufen 10
Gilde 11
Gilden, Rätsel, Spiele 12
Zeitung 13
Tafelrunde 14
D-Chat 15
Restliche 16

Speedwalking
------------

Die Speedwalks sind ebenfalls ein sehr gern genutztes Feature des Soundpacks. Dabei handelt es sich um die Möglichkeit, von einem Platz zu einem anderen zu kommen, indem man einfach angibt, dass man von hier nach dort laufen möchte. Dabei muss man keinen Finger krümmen, dass Programm läuft ganz von allein. Das Basiskommando dafür ist "/". Dieser Befehl listet alle vorhandenen Speedwalks auf. Dabei haben wir auf kurze und effiziente Abkürzungen zurückgegriffen. Damit auch ihr durch unser System durchsteigt, findet ihr im Anschluss eine Liste aller bisherigen Abkürzungen inkl. detaillierter Erklärung. Prinzipiell ist das Kommando für einen Weg wie folgt aufgebaut: / um zu bedeutet, dass es sich hierbei um ein Speedwalk handelt, Abkürzung der Startposition, _ um zu signalisieren, dass nun die Zielposition folgen wird und schließlich die Abkürzung des Ziels. Ein Beispielkommando, um von Minias nach Corona zu laufen wäre also: "/min_cor". Mit einem / und folgender Startposition, ohne dem _ und der Angabe einer Zielposition kann man sich alle Speedwalks filtern, welche von der Startposition starten.
Hinter dem Speedwalk findet ihr außerdem in Klammern stehend auch die Angabe "sicher" oder "unsicher". Dieser Wert gibt an, ob bei diesem Speedwalk ausschließlich auf sicheren Feldern, d. h. ohne Kampf oder Störung gelaufen wird, oder ob dieser Speedwalk auch durch gefährliches Gebiet führt.
Mit Hilfe der Tastenkombination Strg+D wird der momentan laufende Speedwalk an der Stelle, an welcher ihr euch gerade befindet, abgebrochen. Es kann durch wiederholtes Drücken der Tastenkombination wieder fortgesetzt werden.
Außerdem haben wir die Möglichkeit eingebaut, eure Startposition abzusichern. Dadurch könnt ihr nicht mehr von einer falschen Position loslaufen und landet dadurch im Nirgendwo. Dieses Feature ist standardmäßig eingeschaltet. Falls ihr die Absicherung ausschalten wollt, drückt einfach F5. Diese Funktion kann nur effektiv genutzt werden, wenn es auf euren zuletzt besuchten Feld hell ist. Falls es gerade hell geworden ist, ihr trotzdem die Meldung erhaltet, dass es auf eurem Feld hell sein muss, dann wechselt bitte das Feld. Wenn ihr außerdem die Meldung erhalten solltet, dass es noch keine Startposition für dieses Speedwalk gibt und deshalb in das alte System zurückgefallen wird waren wir bisher noch faul und haben die Startposition noch nicht hinterlegt. In diesem Fall nehmt bitte brieflich oder via Rede oder natürlich via E-Mail Kontakt zu uns auf.

Hinweis: Es sind längst noch nicht alle Wege im Soundpack vorhanden. Da das Integrieren dieser Wege recht zeitaufwändig ist bitten wir um Verständnis, dass wir bisher nicht alle Wege unterstützen. Ihr könnt uns jedoch unterstützen, indem ihr uns auf einen nicht vorhandenen Weg hinweist oder uns sogar einen von euch notierten Weg schickt, damit wir ihn mit in unser System aufnehmen.
Um gerade diese eigene Notierung der Wege zu vereinfachen, ist in Avalon auch ein Speedwalk Mapper integriert, d. h. eine Möglichkeit, eure Wege aufzuzeichnen und anschließend den Entwicklern zukommen zu lassen, um sie fest zu integrieren. Dieser Mapper ist selbsterklären, sobald ein wichtiges Kommando bekannt ist: "spm start". Dieses Kommando startet die Aufzeichnung. Jedes Kommando, das anschließend getippt wird, wird aufgezeichnet. Alle fortlaufenden Aktionen erklärt der Speedwalk Mapper von selbst.
Mit dem Kommando "spm z", wird der zuletzt eingegebene Befehl wieder gelöscht.
Der Speedwalk Mapper lässt sich mit "spm stop" beenden.
Anschließend werden die Namen für die Start- und die Endposition abgefragt. Ebenfalls wird abgefragt, ob der Speedwalk nur über sichere Wege verläuft.
Danach stehen die Informationen in der Zwischenablage zur Verfügung.

Nun noch die Liste der Abkürzungen in alphabetischer Reihenfolge:
abt - Portal Abtei auf Nereid
affe - Anleger Affenkopfinsel in der Unterwelt
ale - Zugang Alemnja auf Losaria
alo - Westtor von Alotria auf Nereid
aloz : Auf der Strasse Al'Chwarismi in Alotria am Wegweiser, Nereid
amp - Mondtor von Amphibos
anl - Diverse Anlegestellen in der Unterwelt
apf - Der absonderliche Apfel von Bauer Block auf Nereid
arg - Meister aller Waffen auf Ruwenda
ash - Feld nördlich vom Nordtor Ashar
ashz - Platz der Helden in Ashar
aug - Tor Augyra auf Amphibos
bank - Bank (Diverse)
barde - Barden (Diverse)
camp - Zugang Camp Baralon in der Unterwelt
cor - Vor der Höhle von Corona
corz - Platz des Lebens in Corona
dhun - Feld vor dem Transportkorb in Dhungar
dichter - Feld vor dem Haus der Dichterzunft
dk - Standort der Säule der Dämonenkriegergilde in der Unterwelt
dol - Mondtor auf Dolphinia
druide - Druide (diverse)
farm - Eingang der Pfeifenkrautfarm auf Holbytla
form - Formwandler (diverse)
gol - Gilde der Golemkultisten in der Unterwelt
gwen - Bettler in Gwendon auf Tintagel
haendler - Gemischtwahrenlaeden (diverse)
haf - Häfen diverser Inseln auf Elandor
hain - Eingang Druidenhain auf Solgard
her - Hermine Eisenbieger auf Holbytla
hol - Mondtor auf Holbytla
htoe - Feld vor der Höhle / dem Ausgang der Totenebene zurück in die Unterwelt
ilme - Ilmelorn auf Tolsgal
jagd - Jäger (diverse)
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
muehle - Mühle auf Holbytla
orks - Orkjägerlager auf Nereid
papierfalter - Feld vor dem Haus der Origamizunft auf Nereid
por - Portal Rilauven in der Unterwelt
post - Post (diverse)
ril - Zentrum Rilauven in der Unterwelt
run - Übergang zu den Runenschmieden auf Amphibos
ruw - Hafen von Ruwenda auf Elandor
san - Südtor von Sandutz auf Nereid
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
wal - Hütte in Walhalla
wl - Waldläufer auf Tintagel
wlm bzw. wlm1 bis wlmN - Waffenlehrmeister (diverse)
wtoe - Wegweiser in der Totenebene, ein Feld östlich von der Absprungsstelle
yol - Bis vor die Yoldatfest in der Unterwelt
zwerge - Weggabelung im mördlichen Gebirge auf Nereid

Unterstützte Spiele
-------------------

Wir werden anfangen, Spiele, soweit es möglich ist, mit Geräuschen zu untermalen und vielleicht auch für den Spielenden einfacher zu gestalten, vor Allem bei eher für Sehende ausgelegten Spielen kann dies für Blinde durchaus besser sein. Hier findet ihr eine Liste der bisher unterstützten Spiele, inklusive derer Spezialkommandos:
Hajo: Vollständig mit Sounds unterlegt.
Dieses Spiel besitzt ein extra alias "rausl", welches das MUD-Kommando rauslegen abkürzt und also genau so verwendet werden kann.

Gildenerweiterungen
-------------------

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

Der integrierte Kompass
-----------------------

Analog zu dem bestehenden Befehl "pos" gibt es nun die Möglichkeit sich schon während des Herumlaufens das Gebiet und die aktuellen Standortkoordinaten sich gleich ausgeben zu können, anstelle auf jedem Feld separat "pos" eingeben zu müssen.
Eine Hilfe zum Kompass gibt es mit "kompass hilfe" oder "kompass ?".
Der Befehl "pos" bleibt nach wie vor erhalten.
Wir wünschen nun viel Spaß und gute Unterhaltung beim Spielen!

Das Entwicklerteam
Dranor, Magician und Chiaray

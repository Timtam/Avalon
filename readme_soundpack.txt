Herzlich Willkommen zu unserem Soundpack f�r das MUD Avalon.

Bereits seit 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterst�tzt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln.
Seit 2014 ist auch Chiaray mit im Entwicklerteam.

In diesem Dokument findet ihr Informationen zur Anwendung des Soundpacks und zu allen Feature-Details.

Viel Spa� beim Lesen und falls sonst noch Fragen bestehen, k�nnt ihr euch gerne Online an uns wenden.

Generelle Informationen
------------

Allgemein f�r das Soundpack gilt folgende Regel: In keinem Fall d�rft ihr �nderungen an der Welt speichern, wenn ihr beim Schlie�en des Clients danach gefragt werdet. Sollten, wie hier in dieser Datei beschrieben, �nderungen an der Welt vorgenommen worden sein, dann werden diese Daten anderweitig gespeichert, sodass sie euch, auch wenn ihr die Welt nicht speichert, beim n�chsten Start zur Verf�gung stehen werden. Solltet ihr die Welt dennoch speichern, wird es garantiert zu diversen Fehlern kommen, f�r welche wir keinerlei Gewehrleistung tragen. Solltet ihr sie dennoch einmal ungewollt gespeichert haben, k�nnt ihr sie mithilfe des Updaters zur�cksetzen. F�hrt daf�r einfach ein regul�res Update aus, indem ihr die update.exe im Soundpack-Ordner startet und den Anweisungen folgt. 

Sounds
------

Die Hauptfunktion des Soundpacks ist, Avalon mit Ger�uschen zu untermalen. Diesbez�glich gibt es nat�rlich einige Konfigurationen, die ihr vornehmen k�nnt. Hier die dazu verwendeten Tastenkombinationen:

F9 - Lautst�rke der Ger�usche leiser drehen
F10 - Lautst�rke der Ger�usche lauter drehen
Mit dem Befehl reset_audio k�nnt ihr au�erdem die Sound-Ausgabe zur�cksetzen, falls sich bspw. die aktive Standard-Soundkarte beim Spielen �ndert.

Musik
-----

Wir versuchen ebenfalls, Avalon mit Musik zu unterlegen, um das Spielen spa�iger zu machen und den verschiedenen Regionen etwas mehr Pepp zu verleihen. Nat�rlich gibt es auch hier einige Tastenkombinationen:
F11 - Wechsel zwischen der Sound-Lautst�rkeregelung und Musiklautst�rkeregelung
F9 - Falls mit F11 auf Musik umgestellt wurde, regelt man hiermit die Lautst�rke nach unten
F10 - Falls mit F11 auf Musik umgestellt, wird hiermit die Lautst�rke hochgedreht.

Die Musik wurde unter Anderem bereitgestellt von:
Dag Reinbott: https://www.terrasound.de/

Muting
------

Eingefleischte Zocker von euch wissen, dass man unter Muting das Stummschalten bezeichnet. Das Soundpack bietet die M�glichkeit, Sounds, Musik oder beides gleichzeitig stumm zu schalten. Dazu dr�ckt man Strg+F11. Je nachdem, welche Lautst�rkeregelung man mit F11 gerade eingestellt hat, wird dieses System stummgeschaltet. Mit Strg+Umschalt+F11 werden alle Systeme stummgeschaltet.

Screenreader-Unterst�tzung
--------------------------

Da einige Leute mit der Unterst�tzung von JAWS mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es m�glich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
-----------------------

Wir unterst�tzen die Ausgabe von TP, ZP und AP via Sounds.
Da nicht jeder alle diese Ausgaben immer anhaben m�chte und es durchaus zu einer ganzen F�lle an Sounds kommen kann, gibt es die M�glichkeit, die Ausgaben einzeln zu deaktivieren.
Daf�r sind die Tasten F2, F3 und F4 zust�ndig. Probiert es doch einfach mal aus.
Alternativ k�nnen die Aktions-, Mana-, Treffer- und Zauberpunkte auch mit den Tastenkombinationen Alt+k, Alt+m, Alt+t und Alt+z abgefragt werden.

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
Dabeibesitzt jede Taste drei Funktionen. Entweder langes sp�hen, kurzes sp�hen oder laufen, wobei die ersteren beiden Optionen nur mithilfe eines Fernrohrs m�glich sind. Umgeschaltet werden diese Modi mithilfe der Multiplikations- oder auch L�schen Taste. Sollte diese Taste mal nicht reagieren, wird mithilfe des Befehls numpad Abhilfe geschaffen.
Die Tasten sind in den entsprechenden Himmelsrichtungen angeordnet, hei�t s�dwesten =1, nordosten = 9, osten = 6, Norden = 8 und so weiter. Die restlichen Tasten geben den Spielstand entweder lang oder kurz aus oder schauen sich im derzeitigen Raum um.
Falls in eine Richtung geklettert oder geschwommen werden muss, wird dies automatisch vom Soundpack umgesetzt. Es muss also nicht extra schwimme westen oder klettere norden getippt werden.
Das Soundpack versucht ebenfalls, geschlossene T�ren zu �ffnen, nachdem der Spieler versucht hat hindurchzugehen. Dies funktioniert allerdings nicht auf Feldern, auf denen es mehrere T�ren gibt.

Kanalverlauf
------------

F�r Blinde
------------

Seit einiger Zeit gibt es die M�glichkeit, die letzten 10 Meldungen aller �ffentlichen Kan�le auch Client-intern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:

Alt+Pfeil rechts/links   - Kan�le durchschalten
Alt+1 bis Alt+0          - Nachricht via Sprache ausgeben
Alt+1 bis Alt+0          - Zwei mal schnell dr�cken - Text in die Zwischenablage kopieren
Alt+1 bis Alt+0          - Drei mal schnell dr�cken - Text an dieser Stelle einf�gen

F�r Sehende
------------

Im Zuge einer �berarbeitung f�r Sehende wurde dem Soundpack auch ein Ausgabefenster f�r Kanal-Nachrichten hinzugef�gt. Die Farben der Kan�le sind dabei frei w�hlbar, stimmen allerdings nicht mit den Farben �berein, die ihr f�r das normale Verbindungsfenster in Avalon gew�hlt habt. Stattdessen m�sst ihr unter Game -> Configure -> Custom Colours eure eigenen Farben definieren. Es folgt eine Liste von Kan�len mit den zugeh�rigen Zahlen der Custom Colours, damit ihr sie euch passend einf�rben k�nnt:

 1 - Sagen
 2 - Reden
 3 - Laber
 4 - Gruppe
 5 - Neuling
 6 - Verk�ndungen
 7 - Tod
 8 - Schwafel
 9 - Login, Logout, Statue
10 - Monster, Rufen/Gebr�ll
11 - Gildenkanal
12 - Gilden, R�tsel, Spiele
13 - Zeitung
14 - Tafelrunde
15 - D-Chat
16 - Restliche

Speedwalks
----------

Die Speedwalks sind ebenfalls ein sehr gern genutztes Feature des Soundpacks. Dabei handelt es sich um die M�glichkeit, von einem Platz zu einem anderen zu kommen, indem man einfach angibt, dass man von hier nach dort laufen m�chte. Das Programm l�uft ganz von allein.

Der wichtigste Teil eines Speedwalks ist der / (Schr�gstrich). Mit ihm wei� das Soundpack, dass nun ein Speedwalk folgt.
Der Befehl // zeigt eine Liste aller Speedwalks an. Ein Speedwalk besteht dabei aus zwei Komponenten: einem Gebiet und einem Zielort.
Das Gebiet ist meist die Stadt oder die Insel, auf welchem der Zielort liegt. Der Ort selber ist dann ein bestimmter Anlaufpunkt in dieser Stadt oder auf dieser Insel.
In diesem Speedwalk-System wird eine Ortsangabe also in zwei Teile geteilt, welche mit . voneinander getrennt werden. Der Marktplatz in Minias kann somit beispielsweise mit Minias.Zentrum beschrieben werden.
Der Befehl // kann nun die anzuzeigenden Orte filtern. F�hrt man //minias aus, bekommt man nur die Orte angezeigt, welche in Minias liegen. Mit //.zentrum dagegen alle Zentrum-Orte, die das Speedwalksystem kennt.

Einen bestimmten Ort anlaufen kann man nun, indem man /start_ziel eintippt. Beispielsweise /minias.zentrum_alotria.zentrum. Man kann allerdings auch die Startangabe entfallen lassen, wenn man von genau dem Ort starten m�chte, an dem man sich gerade befindet. In dem Fall w�rde /_alotria.zentrum ausreichen.
Sofern der Name immernoch eindeutig ist, k�nnt ihr die Bezeichnung des Gebietes und des Ortes auch abk�rzen, soweit ihr wollt. /_alo.ze w�re immer noch eindeutig genug, um das Zentrum von Alotria als euren Zielort ausmachen zu k�nnen.
Wenn ihr nur einen Startpunkt angebt, aber keinen Zielpunkt, werden euch Informationen �ber diesen Ort angezeigt, beispielsweise, wo ungef�hr sich die Gabelung1 auf Nereid befindet.

Mit Hilfe der Tastenkombination Strg+D wird der momentan laufende Speedwalk an der Stelle, an welcher ihr euch gerade befindet, abgebrochen. Er kann durch wiederholtes Dr�cken der Tastenkombination wieder fortgesetzt werden.
Au�erdem haben wir die M�glichkeit eingebaut, eure Startposition abzusichern. Dadurch k�nnt ihr nicht mehr von einer falschen Position loslaufen und landet dadurch im Nirgendwo. Dieses Feature ist standardm��ig eingeschaltet. Falls ihr die Absicherung ausschalten wollt, dr�ckt einfach F5. Diese Funktion kann nur effektiv genutzt werden, wenn es auf euren zuletzt besuchten Feld hell ist. Falls es gerade hell geworden ist, ihr trotzdem die Meldung erhaltet, dass es auf eurem Feld hell sein muss, dann wechselt bitte das Feld.
Das Ziel eines Speedwalks kann auch aus einer Liste ausgew�hlt werden, sofern der aktuelle Start-Punkt bekannt ist. Durch Dr�cken der Tastenkombination Alt+S kann man zun�chst das Ziel-Gebiet aus einer Liste ausw�hlen. Hierbei ist das aktuelle Gebiet voreingestellt. Nachdem mit Eingabe best�tigt wurde, kann nun der Zielort ausgew�hlt werden. Es werden Orte inkl. Beschreibung angezeigt, die im zuvor ausgew�hlten Ziel-Gebiet liegen.

Beachtet, dass ihr euch �ber die Speedwalks nahezu frei bewegen k�nnt (auf Nereid k�nnt ihr beispielsweise von jedem bekannten Ort an nahezu jeden anderen Ort laufen). Jedoch kann es bei wenigen Orten zu Einschr�nkungen kommen, weil Speedwalks dort nicht eingesetzt werden k�nnen, oder es dort hin einfach noch keinen Speedwalk gibt. In dem Fall kontaktiert uns einfach per Ingame-Brief oder E-Mail.

Hinweis: Es sind l�ngst noch nicht alle Wege im Soundpack vorhanden. Da das Integrieren dieser Wege recht zeitaufw�ndig ist bitten wir um Verst�ndnis, dass wir bisher nicht alle Wege unterst�tzen. Ihr k�nnt uns jedoch unterst�tzen, indem ihr uns auf einen nicht vorhandenen Weg hinweist oder uns sogar einen von euch notierten Weg schickt, damit wir ihn mit in unser System aufnehmen.

Um gerade diese eigene Notierung der Wege zu vereinfachen, ist in Avalon auch ein Speedwalk Mapper integriert, d. h. eine M�glichkeit, eure Wege aufzuzeichnen und anschlie�end den Entwicklern zukommen zu lassen, um sie fest zu integrieren. Dieser Mapper ist selbsterkl�ren, sobald ein wichtiges Kommando bekannt ist: "spm start". Dieses Kommando startet die Aufzeichnung. Jedes Kommando, das anschlie�end getippt wird, wird aufgezeichnet. Alle fortlaufenden Aktionen erkl�rt der Speedwalk Mapper von selbst.

Mit dem Kommando "spm z", wird der zuletzt eingegebene Befehl wieder gel�scht.

Der Speedwalk Mapper l�sst sich mit "spm stop" beenden.

Anschlie�end werden die Gebiete, die Namen und die Beschreibungen f�r die Start- und die Endposition abgefragt.

Danach kann entweder das spm k Kommando genutzt werden, um den Speedwalk in die Zwischenablage zu kopieren und uns zukommen zu lassen, oder spm sp, um den Speedwalk abzuspeichern und in das Speedwalk-System zu integrieren. Dann findet ihr ihn auch mittels der // Auflistung.
Zum L�schen dieser Speedwalks gibt es das Kommando spm l, gefolgt von start_ziel.
In der Auflistung mit // werden selbst definierte Stationen mit (*) gekennzeichnet. Lasst ihr euch die Informationen zu so einem Ort mit /ort anzeigen, so werden euch au�erdem die Speedwalks aufgelistet, die ihr manuell gespeichert habt.

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

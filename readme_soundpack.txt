Herzlich Willkommen zu unserem Soundpack für das MUD Avalon.

Bereits seit 2011 entwickeln Dranor und Magician daran weiter, immer wieder unterstützt von anderen Leuten, die uns ihre Ideen zuleiten und das Soundpack somit indirekt weiterentwickeln.
Seit 2014 ist auch Chiaray mit im Entwicklerteam.

In diesem Dokument findet ihr Informationen zur Anwendung des Soundpacks und zu allen Feature-Details.

Viel Spaß beim Lesen und falls sonst noch Fragen bestehen, könnt ihr euch gerne Online an uns wenden.

Generelle Informationen
------------

Allgemein für das Soundpack gilt folgende Regel: In keinem Fall dürft ihr Änderungen an der Welt speichern, wenn ihr beim Schließen des Clients danach gefragt werdet. Sollten, wie hier in dieser Datei beschrieben, Änderungen an der Welt vorgenommen worden sein, dann werden diese Daten anderweitig gespeichert, sodass sie euch, auch wenn ihr die Welt nicht speichert, beim nächsten Start zur Verfügung stehen werden. Solltet ihr die Welt dennoch speichern, wird es garantiert zu diversen Fehlern kommen, für welche wir keinerlei Gewehrleistung tragen. Solltet ihr sie dennoch einmal ungewollt gespeichert haben, könnt ihr sie mithilfe des Updaters zurücksetzen. Führt dafür einfach ein reguläres Update aus, indem ihr die update.exe im Soundpack-Ordner startet und den Anweisungen folgt. 

Sounds
------

Die Hauptfunktion des Soundpacks ist, Avalon mit Geräuschen zu untermalen. Diesbezüglich gibt es natürlich einige Konfigurationen, die ihr vornehmen könnt. Hier die dazu verwendeten Tastenkombinationen:

F9 - Lautstärke der Geräusche leiser drehen
F10 - Lautstärke der Geräusche lauter drehen
Mit dem Befehl reset_audio könnt ihr außerdem die Sound-Ausgabe zurücksetzen, falls sich bspw. die aktive Standard-Soundkarte beim Spielen ändert.

Musik
-----

Wir versuchen ebenfalls, Avalon mit Musik zu unterlegen, um das Spielen spaßiger zu machen und den verschiedenen Regionen etwas mehr Pepp zu verleihen. Natürlich gibt es auch hier einige Tastenkombinationen:
F11 - Wechsel zwischen der Sound-Lautstärkeregelung und Musiklautstärkeregelung
F9 - Falls mit F11 auf Musik umgestellt wurde, regelt man hiermit die Lautstärke nach unten
F10 - Falls mit F11 auf Musik umgestellt, wird hiermit die Lautstärke hochgedreht.

Die Musik wurde unter Anderem bereitgestellt von:
Dag Reinbott: https://www.terrasound.de/

Muting
------

Eingefleischte Zocker von euch wissen, dass man unter Muting das Stummschalten bezeichnet. Das Soundpack bietet die Möglichkeit, Sounds, Musik oder beides gleichzeitig stumm zu schalten. Dazu drückt man Strg+F11. Je nachdem, welche Lautstärkeregelung man mit F11 gerade eingestellt hat, wird dieses System stummgeschaltet. Mit Strg+Umschalt+F11 werden alle Systeme stummgeschaltet.

Screenreader-Unterstützung
--------------------------

Da einige Leute mit der Unterstützung von JAWS mit dem von uns verwendeten Ausgabe-Plugin Probleme hatten, haben wir eine Tastenkombination (Strg+F12) eingebaut, mit welcher es möglich ist, zwischen mehreren Ausgabe-Plugin hin- und her zu wechseln. Falls es also Probleme mit der Sprachausgabe unter Jaws gibt versucht bitte erst, via Strg+F12 die Ausgabe-Systeme zu wechseln, bevor ihr euch an uns wendet.

TP-, ZP- und AP-Ausgabe
-----------------------

Wir unterstützen die Ausgabe von TP, ZP und AP via Sounds.
Da nicht jeder alle diese Ausgaben immer anhaben möchte und es durchaus zu einer ganzen Fülle an Sounds kommen kann, gibt es die Möglichkeit, die Ausgaben einzeln zu deaktivieren.
Dafür sind die Tasten F2, F3 und F4 zuständig. Probiert es doch einfach mal aus.
Alternativ können die Aktions-, Mana-, Treffer- und Zauberpunkte auch mit den Tastenkombinationen Alt+k, Alt+m, Alt+t und Alt+z abgefragt werden.

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
Dabeibesitzt jede Taste drei Funktionen. Entweder langes spähen, kurzes spähen oder laufen, wobei die ersteren beiden Optionen nur mithilfe eines Fernrohrs möglich sind. Umgeschaltet werden diese Modi mithilfe der Multiplikations- oder auch Löschen Taste. Sollte diese Taste mal nicht reagieren, wird mithilfe des Befehls numpad Abhilfe geschaffen.
Die Tasten sind in den entsprechenden Himmelsrichtungen angeordnet, heißt südwesten =1, nordosten = 9, osten = 6, Norden = 8 und so weiter. Die restlichen Tasten geben den Spielstand entweder lang oder kurz aus oder schauen sich im derzeitigen Raum um.
Falls in eine Richtung geklettert oder geschwommen werden muss, wird dies automatisch vom Soundpack umgesetzt. Es muss also nicht extra schwimme westen oder klettere norden getippt werden.
Das Soundpack versucht ebenfalls, geschlossene Türen zu öffnen, nachdem der Spieler versucht hat hindurchzugehen. Dies funktioniert allerdings nicht auf Feldern, auf denen es mehrere Türen gibt.

Kanalverlauf
------------

Für Blinde
------------

Seit einiger Zeit gibt es die Möglichkeit, die letzten 10 Meldungen aller öffentlichen Kanäle auch Client-intern abzufragen. Dazu gibt es die folgenden Tastenkombinationen:

Alt+Pfeil rechts/links   - Kanäle durchschalten
Alt+1 bis Alt+0          - Nachricht via Sprache ausgeben
Alt+1 bis Alt+0          - Zwei mal schnell drücken - Text in die Zwischenablage kopieren
Alt+1 bis Alt+0          - Drei mal schnell drücken - Text an dieser Stelle einfügen

Für Sehende
------------

Im Zuge einer Überarbeitung für Sehende wurde dem Soundpack auch ein Ausgabefenster für Kanal-Nachrichten hinzugefügt. Die Farben der Kanäle sind dabei frei wählbar, stimmen allerdings nicht mit den Farben überein, die ihr für das normale Verbindungsfenster in Avalon gewählt habt. Stattdessen müsst ihr unter Game -> Configure -> Custom Colours eure eigenen Farben definieren. Es folgt eine Liste von Kanälen mit den zugehörigen Zahlen der Custom Colours, damit ihr sie euch passend einfärben könnt:

 1 - Sagen
 2 - Reden
 3 - Laber
 4 - Gruppe
 5 - Neuling
 6 - Verkündungen
 7 - Tod
 8 - Schwafel
 9 - Login, Logout, Statue
10 - Monster, Rufen/Gebrüll
11 - Gildenkanal
12 - Gilden, Rätsel, Spiele
13 - Zeitung
14 - Tafelrunde
15 - D-Chat
16 - Restliche

Speedwalks
----------

Die Speedwalks sind ebenfalls ein sehr gern genutztes Feature des Soundpacks. Dabei handelt es sich um die Möglichkeit, von einem Platz zu einem anderen zu kommen, indem man einfach angibt, dass man von hier nach dort laufen möchte. Das Programm läuft ganz von allein.

Der wichtigste Teil eines Speedwalks ist der / (Schrägstrich). Mit ihm weiß das Soundpack, dass nun ein Speedwalk folgt.
Der Befehl // zeigt eine Liste aller Speedwalks an. Ein Speedwalk besteht dabei aus zwei Komponenten: einem Gebiet und einem Zielort.
Das Gebiet ist meist die Stadt oder die Insel, auf welchem der Zielort liegt. Der Ort selber ist dann ein bestimmter Anlaufpunkt in dieser Stadt oder auf dieser Insel.
In diesem Speedwalk-System wird eine Ortsangabe also in zwei Teile geteilt, welche mit . voneinander getrennt werden. Der Marktplatz in Minias kann somit beispielsweise mit Minias.Zentrum beschrieben werden.
Der Befehl // kann nun die anzuzeigenden Orte filtern. Führt man //minias aus, bekommt man nur die Orte angezeigt, welche in Minias liegen. Mit //.zentrum dagegen alle Zentrum-Orte, die das Speedwalksystem kennt.

Einen bestimmten Ort anlaufen kann man nun, indem man /start_ziel eintippt. Beispielsweise /minias.zentrum_alotria.zentrum. Man kann allerdings auch die Startangabe entfallen lassen, wenn man von genau dem Ort starten möchte, an dem man sich gerade befindet. In dem Fall würde /_alotria.zentrum ausreichen.
Sofern der Name immernoch eindeutig ist, könnt ihr die Bezeichnung des Gebietes und des Ortes auch abkürzen, soweit ihr wollt. /_alo.ze wäre immer noch eindeutig genug, um das Zentrum von Alotria als euren Zielort ausmachen zu können.
Wenn ihr nur einen Startpunkt angebt, aber keinen Zielpunkt, werden euch Informationen über diesen Ort angezeigt, beispielsweise, wo ungefähr sich die Gabelung1 auf Nereid befindet.

Mit Hilfe der Tastenkombination Strg+D wird der momentan laufende Speedwalk an der Stelle, an welcher ihr euch gerade befindet, abgebrochen. Er kann durch wiederholtes Drücken der Tastenkombination wieder fortgesetzt werden.
Außerdem haben wir die Möglichkeit eingebaut, eure Startposition abzusichern. Dadurch könnt ihr nicht mehr von einer falschen Position loslaufen und landet dadurch im Nirgendwo. Dieses Feature ist standardmäßig eingeschaltet. Falls ihr die Absicherung ausschalten wollt, drückt einfach F5. Diese Funktion kann nur effektiv genutzt werden, wenn es auf euren zuletzt besuchten Feld hell ist. Falls es gerade hell geworden ist, ihr trotzdem die Meldung erhaltet, dass es auf eurem Feld hell sein muss, dann wechselt bitte das Feld.
Das Ziel eines Speedwalks kann auch aus einer Liste ausgewählt werden, sofern der aktuelle Start-Punkt bekannt ist. Durch Drücken der Tastenkombination Alt+S kann man zunächst das Ziel-Gebiet aus einer Liste auswählen. Hierbei ist das aktuelle Gebiet voreingestellt. Nachdem mit Eingabe bestätigt wurde, kann nun der Zielort ausgewählt werden. Es werden Orte inkl. Beschreibung angezeigt, die im zuvor ausgewählten Ziel-Gebiet liegen.

Beachtet, dass ihr euch über die Speedwalks nahezu frei bewegen könnt (auf Nereid könnt ihr beispielsweise von jedem bekannten Ort an nahezu jeden anderen Ort laufen). Jedoch kann es bei wenigen Orten zu Einschränkungen kommen, weil Speedwalks dort nicht eingesetzt werden können, oder es dort hin einfach noch keinen Speedwalk gibt. In dem Fall kontaktiert uns einfach per Ingame-Brief oder E-Mail.

Hinweis: Es sind längst noch nicht alle Wege im Soundpack vorhanden. Da das Integrieren dieser Wege recht zeitaufwändig ist bitten wir um Verständnis, dass wir bisher nicht alle Wege unterstützen. Ihr könnt uns jedoch unterstützen, indem ihr uns auf einen nicht vorhandenen Weg hinweist oder uns sogar einen von euch notierten Weg schickt, damit wir ihn mit in unser System aufnehmen.

Um gerade diese eigene Notierung der Wege zu vereinfachen, ist in Avalon auch ein Speedwalk Mapper integriert, d. h. eine Möglichkeit, eure Wege aufzuzeichnen und anschließend den Entwicklern zukommen zu lassen, um sie fest zu integrieren. Dieser Mapper ist selbsterklären, sobald ein wichtiges Kommando bekannt ist: "spm start". Dieses Kommando startet die Aufzeichnung. Jedes Kommando, das anschließend getippt wird, wird aufgezeichnet. Alle fortlaufenden Aktionen erklärt der Speedwalk Mapper von selbst.

Mit dem Kommando "spm z", wird der zuletzt eingegebene Befehl wieder gelöscht.

Der Speedwalk Mapper lässt sich mit "spm stop" beenden.

Anschließend werden die Gebiete, die Namen und die Beschreibungen für die Start- und die Endposition abgefragt.

Danach kann entweder das spm k Kommando genutzt werden, um den Speedwalk in die Zwischenablage zu kopieren und uns zukommen zu lassen, oder spm sp, um den Speedwalk abzuspeichern und in das Speedwalk-System zu integrieren. Dann findet ihr ihn auch mittels der // Auflistung.
Zum Löschen dieser Speedwalks gibt es das Kommando spm l, gefolgt von start_ziel.
In der Auflistung mit // werden selbst definierte Stationen mit (*) gekennzeichnet. Lasst ihr euch die Informationen zu so einem Ort mit /ort anzeigen, so werden euch außerdem die Speedwalks aufgelistet, die ihr manuell gespeichert habt.

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

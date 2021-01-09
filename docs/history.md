______________________________________________________________________________________________________________________________________________________________
Programminfo:	Dieses Spiel namens "Quillion" ist ein ein Klon des früheren Spieles "Crillion". Es baut sich wie folgt auf:	

					Ein Ball, welcher durch den Spieler waagerecht bewegt werden kann,
					bewegt sich auf und ab. Das eigentliche Ziel dabei ist, alle zerstörbaren Blöcke
					zu berühren und so das Spielfeld "aufzurδumen". Bei dieser Variante ist, ebenfalls
					ein Spieleditor vorhanden, welche durch eine untere Leiste in der alle Arten von
					Blöcken vorhanden sind, gekennzeichnet ist.

______________________________________________________________________________________________________________________________________________________________
Programmänderungsplan:

Datum		Änderung

| Datum | Beschreibung |
| ---------- | ------------------------------------------------------------ |
| 12.12.2015 |   Projektthema ausgesucht, erste Ideen der Umsetzung gesammelt |
| 14.12.2015 |   Einfache Grundbewegung des Balles programmiert zur bessern Vorstellung der zukünftigen Probleme, welche beim Programmieren auftreten können in Testdatei Quillion_0_0_0 |
| 15.12.2015 |   Absprechung mit dem Fachlehrer Herr Hildmann über die Umsetzung;       Diskussion über spδter auftretende Probleme und Aussichtstellungen auf Erweiterungen;       Erstellen der 8 Bilder für verschiedene Blockarten (Mauer) |
| 16.12.2015 |   Erstellen der 8 Bilder für verschiedene Ballarten (Ball);       Hinzufügen der Testdatei Quillion_0_0_1           Veranschaulichung der Abprallfδhigkeit an den Wδnden          Problem: Abprallen am Rechteck |
| 18.01.2016 |   Erstellen von 73 Bildern für verschiedene Arten von Objekten (Schloss, Schlüssel, Tod,etc.)       Verbesserung der Testdatei Quillion_0_0_1, Abprall am Rechteck perfektioniert |
| 19.01.2016 |   Einführung von zwei neuen Klassen( Ball , Rechteck)          rec  Klasse in Quillion_0_0_2.pde          ball Klasse in Quillion_0_1_0.pde          Abprall von zufδllig erzeugte Blöcken in Version Quillion_0_1_0.pde          Erzeugung des "data" Verzeichnisses in dem bisher nur die Bilder gespeichert sind          Laden der Bilder für Ball und Hintergrund |
| 20.01.2016 |   Versuch des besseren Abpralls       Entstehung der Datei Quillion_0_1_1.pde          enthδlt Fehler im Abstoß (Bug01) |
| 23.01.2016 |   (Datei Quillion_0_1_2.pde)          Abprall am Rechteck(Bugfix01)          Aufbau des Editorfensters und Ausbau der Klasse rec          RechteckMatrix entsteht          sehr langsames Arbeiten des Programmes (Bug02)       Datei Quillion_0_2_0.pde          neue Methode "Bildereinlesen"          Langsames Arbeiten verbessert(Bugfix02)       Datei Quillion_0_2_1.pde          Mehtode Editor erstellt          Editor-Fenster gestaltet             Start (S) und Pause (P) Taste im Editorfenster             Erste Symbole im unteren Editorfenster (Uditor)       Datei Quillion_0_2_2.pde          Hinzufügen der Farbenbilder im Uditor          Beim Übergang der Maus über ein einzelnes Elemnt des Uditors Vergrößerung des Bildes       Datei Quillion_0_2_3.pde          alleinige Feststellung von Objekten im Uditor          Farbanpassung (z.B.: bei Klick auf Gelb, werden rechts gelbe Symbole angezeigt,etc.) |
| 25.01.2016 |   (Datei Quillion_0_2_4.pde)          Editor- Meü erstellt (Laden, Speichern, Optionen, Hauptmenü)          Einfügen von Uditor Elementen in das Spielfeld          Speicherfunktion des Levels |
| 26.01.2016 |   (Datei Quillion_0_2_5.pde)             Ballsymbol hinzugefügt             nimmt x und y Wert an des Spielballes beim Start             funktioniert erst noch nur in eine Richtung (geht nur wenn Position in der Rechteck- Klasse zunimmt)(Bug03)          erste Ladefunktionen |
| 27.01.2016 |   (Datei Quillion_0_2_6.pde)          Menü erstellt mit farbwechsler- Methode          Editor- Menü ( neuer Eintrag: Hauptmenü)          Ladefunktion perfektioniert          kleine Speicherprobleme entdeckt (Bug04)             Speicherung von nicht beabsichtigten Inhalten       Datei Quillion_0_3_0.pde          kleine Anpassungen          Funktion "Neu" im Editor- Menü             Funktion der Löschung des alten noch nicht ganz durchzogen bei "Neu"(Bug05) |
| 15.02.2016 |   (Datei Quillion_0_3_1.pde)          Funktion Neu überarbeitet(Bugfix05) |
| 16.02.2016 |   (Datei Quillion_0_3_2.pde)          Speicherfunktion verbessert (Bugfix04)          Ballpositionsproblem gelöst (Bugfix03) |
| 17.02.2016 |   (Datei Quillion_0_3_3.pde)          Überprüfung in der Rechteckklasse, ob der Ball, dass jeweilige berührt (ballber- Variable)           Anfang der Eigenschaft: zerstören          nicht über 17 Level speicherbar (Bug06) |
| 19.02.2016 |   (Datei Quillion_0_3_4.pde)          Anfang der Eigenschaft Fester farbwechsler             - kein Merken der farbe die aus dem Editor gegeben ist (Bug07)          Anfang der Eigenschaft variabler Farbwechsler             - kein Wechsel der Farbe im Farbwechsler, oder nur fehlerhaftes(Bug08) |
| 20.02.2016 |   (Datei Quillion_0_3_4_1.pde)          Versuch der Behebung der Bugs 07 und 08 |
| 23.02.2016 |   (Datei Quillion_0_3_5.pde)          Merkfδhigkeit der Farbe des Balles aus dem Editor nicht vorhanden, jedoch neues Setzen des Balles δndert dies (Bugfix07, Δnderung folgt)          Wechsel der Farbe wurde gegeben(Bugfix08)          Zielsteineigenschaft && Tod wurde erschaffen             noch nicht ausgereift, erst im Spiel richtiger Gewinn |
| 26.02.2016 |   (Datei Quillion_0_3_6.pde)          Löschfunktion einzelner Level umgesetzt          Levelbegrenzung aufgehoben (Bugfix06) |
| 26.02.2016 |   (Datei Quillion_0_3_7.pde)          Neue Eigenschaften für:                 - Zerstörbare Blöcke                Ballposition lδsst Block verschwinden im Spiel, wenn es sich überlagert (Bug09)                nur einmal zerstörbar, im zweiten spiel probleme bei Onehit und Twohit(Bug10)             - Schlüssel             - Schloss             - Ansδtze für USB          Laden der Ballposition mit Anzeige ohne erneutes Drücken der Ballsetzung funktioniert (Bugfix07_02end) |
| 27.02.2016 |   (Datei Quillion_0_3_8.pde)          Ladebildschirm hinzugefügt           Allgemeine Verbesserung der Durchführung der Eigenschaften          Ausbau der USB- Eigenschaften             - Blöcke können nicht über Plδtze an denen ein anderer mal war (Bug11)          einige Ladeprobleme (Bug12)             Nochmaliges Laden behebt dies meist |
| 27.02.2016 |   (Datei Quillion_0_3_9.pde)          Überarbeitung des Editorfensters          Anfδngliche Punktezδhlung & Überarbeitung der Zieleigenschaften          Verbesserung der Farbwechseleigenschaft                - Farbe des Balls aus dem Editor wird über das Spiel hinweg gespeichert (man fδngt mit dem Ball an, der vorgegeben wird und nicht mit dem, mit dem aufhörte)          USB- Blockverschiebung funktioniert einwandfrei (Bugfix11)             danach jedoch immer hellgrün (Bug13) |
| 28.02.2016 |   (Datei Quillion_0_4_0.pde)          Überarbeitung des Lademenüs             Levelbegrenzung komplett aufgehoben(Bugfix06_02end)             Lademenü besitzt jetzt Mausradfunktionen          Optionsmenü angefangen |
| 29.02.2016 |      Optionsklasse weitergeführt                       Option hinzugefügt für die Option mit Mausrad |
| 03.03.2016 |         Option hinzugefügt für die Auswahl der Tasten für das Spielen          Löschfunktion verbessert             Verhinderung, dass mehrere Level doppelt gelöscht werden, ohne das Wissen des Nutzers          Lademenü besitzt nun keine Schwierigkeiten mehr zu laden (Bugfix12)          USB- Eigenschaft funkitoniert erst für die gellgrüne farbe          Titelfunktion im oberen Editorfenster hinzugefügt          Verbesserung von Bug09 (Bugfix09_01)             nur in Extremtests noch der Fall          Verbesserung von Bug10 (Bugfix10_01) |
| 06.03.2016 |   (Datei_0_4_1.pde)                    Zerstörung und Wiederherstellung von Blöcken funktioniert einwandfrei, von farbigen gibt es einige Probleme (Bugfix10_02)          Variablen Farbwechsler verbessert             farbweitergabe funktionierte anfangs nicht richtig          Löschfunktionsprobleme entdeckt(Bug14) |
| 08.03.2016 |   (Datei_0_4_2.pde)          Verbesserung des Ballabpralles          Farbδnderungen von der USB eigenschaft verhindert (Bugfix13)          Schlüssel werden jetzt ebenfalls auch bei Ballüberlagerung nach Pause wieder gezeichnet(Bugfix09_02) |
| 11.03.2016 |   (Datei_0_4_3.pde)          Hotkeys wurden hinzugefügt          Löschfunktionsprobleme wurden aufgehoben(Bugfix14)          USB- Funktiosprobleme entdeckt (Bug15) (Ball verschwindet) |
| 15.03.2016 |      Anfang des Spielmenüs                         |
| 20.03.2016 |   (Datei_0_4_4.pde)          Spielmenü wurde weiter überarbeitet und mit dem Lademenü gekoppelt          Ballpositionsprobleme entdeckt, bei einem schwarzen Ball(Bug16) |
| 22.03.2016 |      Doppelter Buttonprobleme gelöst          Schlüsselanzeige eingeführt          Punkteanzeige eingeführt und Punktevergabe verbessert |
| 25.03.2016 |      Todesbildschirm und Siegesbildschirm hinzugefügt       Datei_0_4_5.pde          Anfang des Challenge- Modus          Ballpositionsmerkprobleme, nach einem gewonnen oder verlorenen Spiel und weitere Probleme bei der Punktzδhlung in diesem Fall (Bug17)          Erste Musik eingebunden (Musik- & Gerδuscheoption)          Farbwechsleroption eingebunden          Hintergrundwechseloption eingebunden           Überlagerung der Sounds (Bug18) |
| 26.03.2016 |      Aufhören der Hintergrundmusik bei Abspielen des Blocksetzsounds (Bug18) |
| 28.03.2016 |   (Datei_0_4_6.pde)          Verbesserung des Challengemodes          Ballpositionsprobleme wurden behoben (Bugfix17_01)          USB- Ballverschwinden verhindert und verδndert (Bugfix 15)                 Anpassung der Grenzen für die Erkennung eines Balles (bpos) (Bugfix16)          Punktezδhlung verbessert und eingebunden (Bugfix17_02end)          bei der Farbauswahl in den Optionen sind jetzt auch dunkle Farben durch Drehen des Mausrades möglich |
| 30.03.2016 |      letztes Update des Editors: endgültige Einbindung der Bild3- Variablen, somit Sicherung des Voherigen bestandes nach dem Spielen im Editor (Bugfix10_03end)       Datei_0_4_7.pde                 Accountnamen eingebunden |
| 31.03.2016 |      Speicherung des Namens, Namensliste          Laden des Namens, Namensliste          Verbesserung der Punktezδhlung durch Einführung der Punktezδhlung in dem Editor             Sichtbarkeit wδhrend des Teststartes |
| 01.04.2016 |      Erkennung und gleichzeitiges Beheben der Übertragung der Ballfarbe und Ballposition im Editor, wenn man ein neues Level lδdt (Bug18)(Bugfix18)       Datei_1_0_0_beta.pde          Einführung des Highscores          Verbesserung der Punkteabnahme          Einschub weiterer Musik          Allgemeine Verbesserungen im Aussehen des Quellcodes          Erstellung von 20 neuen PC- Levels, die als Challenge dienen          Erstellung der ersten Beta- Version mit vielen Testungen und einigen kleinen Behebungen |
| 29.07.2016 |      Grafikerweiterung (Neue Bδlle)     - Option eingefügt zum Wechsel vom klassischen Design in das Moderne !! noch nicht möglich (Bug19) |
|            |                                                              |



### Bugs			

01:	Abstoßfehler des Balles an Rechtecken

02:	sehr langsame Perfomance

03:	Setzen der Ballposition im Editor bisher, nur wenn Position in der Rechteck- Klasse zunimmt

04:	Speicherung von nicht beabsichtigten Inhalten

05:	Löschung noch nicht vollkommen durchzogen beim Löschen

06:	Levelspeicher auf 17 begrenzt

07:	im Editor gesetzte Farbe ist bei Aktivierung des Farbwechslers geδndert wurden

08:	variabler Farbwechsler hat kein variables Farbwechseln

09:	zerstörte und verschobene Steine sind bei Überlagerung des Balles im Spiel danach gelöscht

10:	Zerstörbare Blöcke nur einmal zerstörbar

11:	USB-Blöcke können nicht auf ehemalige Positionen anderer geschoben werden

12:	Ladeprobleme

13: (27.02.2016)	nach Verschiebung USB-Blöcke immer grün

14: (06.03.2016)	Löschen funktioniert nicht einwandfrei

15: (11.03.2016)	USB-Blöcke können nicht einwandfrei verschoben werden

16: (20.03.2016)	Ballposition wird beim schwarzen Ball nicht richtig gespeichert

17: (25.03.2016)	Ballposition wird nicht richtig gespeichert bei gewonnenen oder verlorenen Spiel

18: (01.04.2016)	Aufhören der Hintergrundmusik bei Abspielen des Blocksetzsounds

19: (29.07.2016)	Wechsel vom modernen in das klassische Design noch nicht möglich

Bemerkungen:		Level_0 ist nicht spielbar und ist nur der Platzhalter um Levels zu verschieben ist also Level_0 immer leer bzw. bedeutungslos





















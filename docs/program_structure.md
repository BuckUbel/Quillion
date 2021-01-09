Feld: 	3:5 	--> 40x22 Kästchen je 25x25 Pixel
		-->300 Kästchen

Zweite Datei für Optionen, wie:	Bildschirmgröße: klein 500x300 oder groß 1000x600

Quillion ist geteilt:			Editor, Spiel

				Kostüme werden als Bilder eingebunden

Editor
_____________________________________________________________

Objektarray kast:	noFill();
		noStroke();
		rect(a,b,25,25);
			Eigenschaften:
				Grund: gelber Punkt in der Mitte des Kästchens
				verschiedene "Kostüme" je nach wert der Variablen "Art" und "Farbe"
			Variablen:  	Farbe (8); 	
							(1)	schwarz 		(0,0,0)
							(2)	hellgrün 		(0,0,255)
							(3)	dunkelblau 	(0,0,255)							
							(4)	orange 		(255,128,0)							
							(5)	hellblau 		(0,255,255)							
							(6)	rot 		(255,0,0)
							(7)	dunkelgrün 	(0,128,0)							
							(8)	gelb 		(255,255,0)
																				

					Art (12);		
							x(1)	kein Stoß
							x(2)	1 Stoß
							x(3)	2 Stoß
							x(4)	Schloss
							x(5)	Schlüssel
							x(6)	Farbwechsler( Fest)
							x(7)	Farbwechsler(variabel)
							x(8)	USB- Stick
							x(9)	Tod
							x(10)	Mauer
							x(11)	Ziel
							x(12)	Ball
					 
					durchdringbar=1( ja) = 0(nein)
	
					methode durchdringen( if ball.x ...)
					verschiedene Funktionen je nach wert der  Artvariablen

Spiel
____________________________________________________________

Laden der davor erstellten editor dateien, welche angezeigt und je nach art gespielt werden können

Ende bei Ziel Erreichung, welches sich erst mit der Zerstörung aller Stein öffnet bzw. wenn alle Steine zerstört worden sind

Klasse Ball:	fill( in der Farbe, Standard grün);
		ellipse(x,y, 13,13);
		no fill();
		noStroke();
		rect(x,y,25,25)

			methode bewegen(){   x bleibt gleich, bei pfeil nach rechts bzw. links +1/-1
					    y bewegt sich so lange um +1 bzw. -1
	
						bei Berührung eines kast.a, also: ball.x>= kast.a und ball.y>=ball.b umkehrungs  }
					ähnlich der Testdatei Quillion_0_0_1.pde
			methodeFarbwechseln(){}

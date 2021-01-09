class Rechteck {

  int e;        // gibt die x- Koordinate des Vierecks an
  int f;        // gibt die y- Koordinate des Vierecks an
  int g;        // gibt die Breite des Vierecks an (in x- Richtung)
  int h;        // gibt die Länge des Vierecks an ( in y- Richtung)
  int rpos;     // gibt an, das wie vielte Viereck es in dem Objektarray ist


  int bpos=81;   // gibt an, welche Eigenschaften und Methoden durchgeführt werden müssen // spezifische Variable
  int bpos2=81;  // gibt vorübergehend an, welche Eigenschaften und Methoden durchgeführt werden müssen
  int durch=0;   //übermittler ob durchlässig oder nicht
  int durch1=1;  //speicherung und überprüfung ob durchlässig
  int block=0;   // wichtig für die Eigenschaft von USB- Blocks die verschoben werden
  int ballber=0; //Ballberührung
  int fber=0;    //farbuübereinstimmung
  int art=0;     //wichtig für die Art des Zeichnens // mehr Informationen in der Methode Rechteck.zeichnen()
  int art2=art;  //wichtig für die Art des Zeichnens // mehr Informationen in der Methode Rechteck.zeichnen()
  int posfarbe=0;//wichtig für die Übermittlung der jeweiligen Farbe von dem Objekt
  int colour=0;  //gibt die Farbe des Objektes an
  int colour2=colour;  // gibt die Farbe des Objektes vorübergehend an
  int colour3=colour;  // gibt die Farbe des Objektes vorübergehend an
  int wechself=0;      // wichtig für variable Farbwechsler
  int s1=0;   // ab Start, =1
  int s2=0;   // Zähler für einmalige Aktionen, nach dem Start
  int s3=0;   // Schlüsselzähler  -
  int s4=0;   // Schlüsselzähler  +
  int s5=0;   // Zeitpunktezählung
  int s6=0;   // erzielte Punktzahl
  int s7=0;   //  Zählervariable für variablen Farbwechsler
  int s8=0;   // zu schaffende Punktzahl

  // Sicherungsvariablen, damit nach einem Spiel im Editor die richtige Situation wieder herrscht
  int ball=0;



  Ball ball2;                // das Objekt der Ballklasse wird mit eingebunden
  PImage bild= rbild[81];    // vorübergehendes Bild
  PImage bild2=rbild[81];    // das Bild, welches meist angezeigt wird
  PImage bild3=rbild[81];    // vorübergehendes Bild
  PImage bild4=rbild[81];    // vorübergehendes Bikd
  Rechteck() {
  }
  Rechteck(int posX, int posY, int laenge, int laenge2, Ball qall, int Rpos ) {
    e=posX;
    f=posY;
    g=laenge;
    h=laenge2;   
    ball2=qall;
    rpos=Rpos;
  }
  void faerben() {                                                                // Methode zur richtigen Übermittlung der gerades besessenen Farbe
    if (bpos>=8) {
      for (posfarbe=bpos; posfarbe>=8; posfarbe=posfarbe-8) {
        if (bpos<91) {
          colour=posfarbe-8;
        }
        if (bpos>=91) {
          colour=ball2.bfarbe;
        }
      }
    } else {
      colour=bpos;
    }
  }
  void test() {                                                                   // Methode zum Test von einzelnen Zuständen an einem Rechteck
    if (mouseX>e && mouseX<e+g && mouseY>f && mouseY<f+h && keyPressed && key== 'q') {
      println();
      println();
    }
  }
  void zeichnen() {                                                              // Methode zur Initialisierung und Einbindung der im Editor erstellten Elemente in einer Rechteck Klasse
    faerben();

    if (edi==0) {


      if (mouseX>e && mouseX<e+g && mouseY>f && mouseY<f+h && mousePressed && mouseButton==RIGHT) { //rechts klick anfang
        art=0;                                                                                       // Art=0
      }                                                                                              //rechts klick ende

      if (mouseX>e && mouseX<e+g && mouseY>f && mouseY<f+h && mousePressed && mouseButton==LEFT ) { // Links klick anfang


        if (bpos>90 && bpos<99 && start==0 ) {              //Fall 1 : Das ausgewählte ist ein Ball
          imageMode(CENTER);
          ball2.bfarbe=bpos-91;                                                      //Die Ballfarbe von der Klasse Ball wird auf die Farbe des Ballbildes gesetzt
          for (int i=0; i<rec.length; i++) {
            if (rec[i].ball==1) {                                                    //Alle anderen Bälle werden zu normalen Feldern
              rec[i].ball=0;
              rec[i].art=1;
            }
          }
          ball=1;                                                                     //Ein Ball ist vorhanden in diesem Rechteck

          bild=qbild;                                                                 //Das Bild welches ausgewählt wurde im Uditor ist das "bild" des Rechtecks
          bild2=bild;                                                                 // dasselbe mit "bild2"
          bild3=bild;

          bpos=speicherhilfe;                                                         //Die Bildpositionsnummer wird auf die Speicherhilfe gesetzt, damit die Speicherung der bpos- Nummern später von statten gehen kann

          image(bild2, e+g/2, f+h/2);                                                 // Bild2 wird gezeichnet mit der Position in der Mitte, aber nur im Zeitraum des Klicks
          art=2;                                                                      // Art= 2
          imageMode(CORNER);
        }

        if (bpos<91 && start==0 ) {                           // Fall2 : Das ausgewählte ist kein Ball

          bild=qbild;                                                                //Das Bild welches ausgewählt wurde im Uditor ist das "bild" des Rechtecks
          bild2=bild;                                                                // dasselbe mit "bild2"
          bild3=bild;

          bpos=speicherhilfe;                                                        //Die Bildpositionsnummer wird auf die Speicherhilfe gesetzt, damit die Speicherung der bpos- Nummern später von statten gehen kann

          image(bild2, e, f);                                                        // Bild2 wird gezeichnet mit der Position l.o., aber nur im Zeitraum des Klicks
          art=2;                                                                     // Art= 2
        }
      }                                                                              //Links klick zu Ende



      if (mouseX>e && mouseX<e+g && mouseY>f  && mouseY<f+h ) {                      //Mit der Maus über das Kästschen, wenn es im Normalzustand ist (gelber punkt/blauer punkt)
        if (bild== rbild[81] || bild == rbild[82]) {
          art=1;                                                                       // Art=1
        }
      } else {
        if (bild==rbild[82]) {                                                       //Wenn das "bild" der blaue Punkt ist dann
          art=0;                                                                     // Art=0
        }
      }


      if ( art==0 && start==0) {                                                     // Fall 1: Art= 0         --> Entweder durch Rechtsklick oder dadurch das bpos=81 und die Maus nicht über derm Kästschen ist
        bild3=rbild[81];
        bild2=rbild[81];                                                             // bild2 wird gleich gelber Punkt
        bild=rbild[81];                                                              // bild wird gleich gelber Punkt

        noFill();
        stroke(255, 255, 0, 25);
        rect(e, f, g, h);
        bpos=81;                                                                     //bpos ist gleich 81 (gelber Punkt)
        image(bild2, e+g*0.4, f+h*0.4);                                                  //Bild 2 wird gezeichnet in die Mitte des Rechtecks
      }

      if ( art==1 && start==0) {                                                     // Fall 2 : Art=1 --> falls Maus über einem gelben Punkt/ blauer Punkt
        bild=rbild[82];                                                              // bild wird gleich blauer punkt
        noFill();
        stroke(0, 255, 255);
        rect(e, f, g, h);
        bpos=81;                                                                     // bpos wird gleich 81 (gelber punkt) /mit Absicht       
        image(bild, e+g*0.4, f+h*0.4);                                                   // bild wird gezeichnet in die Mitte des Rechtecks
      }


      if ( art==2) {                                                                 // Fall 3 : Art=2 --> ein Objek wurde ausgewählt und auf ein Rechteck geklickt

        if (bpos>90 && bpos<99 && ball==1) {                                         // falls es ein Ball ist
          imageMode(CENTER);
          image(bild2, e+g/2, f+h/2);                                               // wird es in die Mitte gezeichnet
          imageMode(CORNER);
          if (start==0) {
            ball2.bfarbe=bpos-91;                                                       // und die Ballfarbe wieder angepasst    
            colour=ball2.bfarbe;
          }
        }

        if (bpos<91) {                                                              // falls nicht
          image(bild2, e, f);                                                        // dann l.o.
        }
        if (mouseX>e && mouseX<e+g && mouseY>f  && mouseY<f+h && start==0) {
          fill(0, 255, 255, 125);
          stroke(0, 255, 255);
          rect(e, f, g, h);
        }
      }


      if (art==3) {
        if (bpos>90 && bpos<99 && ball==1) {                                         // falls es ein Ball ist
          image(bild2, e+g/2, f+h/2);                                                // wird es in die Mitte gezeichnet
          ball2.bfarbe=bpos-91;                                                       // und die Ballfarbe wieder angepasst    
          colour=ball2.bfarbe;
        }
        //println(colour + ":colour");
        if (bpos<91) {                                                               // falls nicht
          image(bild2, e, f);                                                        // dann l.o.
        }
      }
    }
  }//Ende Zeichnen Methode  



  int abprallenx( int x, int y, float r, int bewx) {          // Methode für den Abprall des Balles in der x- Richtung
    if (durch==0) {
      if (x>=e  && x<=e+g/2 ) {
        if (y>=f && y<=f+h) {
          ballber=1;
        } else {
          ballber=0;
        }
      } 

      if (x<=e+g && x>=e+g/2) {
        if (y>=f && y<=f+h) {
          ballber=1;
        } else {
          ballber=0;
        }
      }

      return bewx;
    } else {
      x=x+int(r);
      if (x>=e  && x<=e+g/2 ) {
        if (y>=f && y<=f+h) {
          bewx=3;
          ballber=1;
          return bewx;
        } else {
          ballber=0;
        }
      } 
      x=x-int(r*1.25);
      if (x<=e+g && x>=e+g/2) {
        if (y>=f && y<=f+h) {
          bewx=4;
          ballber=1;
          return bewx;
        } else {
          ballber=0;
        }
      } 
      return bewx;
    }
  } //Ende abprallenx 


  int  abpralleny( int x, int y, float r, int bewy) {            // Methode für den Abprall des Balles in y - Richtung
    y=y+int(r*0.25);
    if (durch==0) {
      if (y==f || y==f+1 || y==f+2) {
        if (x>=e && x<=e+g) {
          ballber=1;
        } else {
          ballber=0;
        }
      }

      if (y>=f && y<=f+h/2) {
        if (x>=e && x<=e+g) {
          ballber=1;
        } else {
          ballber=0;
        }
      }
      return bewy;
    } else {
      if (y==f || y==f+1 || y==f+2) {
        if (x>=e && x<=e+g) {
          bewy=1;
          ballber=1;
          return bewy;
        } else {
          ballber=0;
        }
      } 
      y=y-int(r*1.25);
      if (y>=f && y<=f+h/2) {
        if (x>=e && x<=e+g) {
          bewy=0;
          ballber=1;
          return bewy;
        } else {
          ballber=0;
        }
      } 
      return bewy;
    }
  }//Ende abpralleny



  void eigen() {                                                          // große Methode für die Einstellungen im Spiel und Editor und für deren Eigenschaften und Methoden zur Durchführung des Spielprinzips

    if (start==1) {                                     // fortlaufende Maßnahmen in jedem Spiel
      ball2.tod=0;
      s1=1;
      s2=1;
      s3=0;
      s4=0;
      bild3=bild;
      if (s8==0) {                                       // einmalig in jedem neuen Spiel durchführende Maßnahmen
        if (menue==1) {                                  // Punktzählung im Editor
          for (int i=24; i<32; i++) {  // noHit
            if (bpos==i) {
              punkte2=punkte2+1;
            }
          }
          for (int i=32; i<40; i++) {  // OneHit
            if (bpos==i) {
              punkte2=punkte2+2;
            }
          }

          for (int i=40; i<48; i++) {  //Schloss
            if (bpos==i) {
              punkte2=punkte2+1;
            }
          }

          for (int i=48; i<56; i++) {  //Schlüssel
            if (bpos==i) {
              punkte2=punkte2+1;
            }
          }
          for (int i=64; i<72; i++) {   // TwoHit
            if (bpos==i) {
              punkte2=punkte2+3;
            }
          }
        }
        s8=1;
      }
      zeit=zeit+1;
      if (punkte!=0 ) {
        if (zeit2-zeit/1000>=0) {
          punkte3=punkte*1000+(zeit2-zeit/1000);
        } else {
          punkte3=punkte*1000;
        }
      }
      if (s5==0) {                                    
        zeit2=punkte2*75;
        s5=1;
      }
    }

    if (start==0) {
      s5=0;
      s6=0;
      s8=0;
      punkte=0;
      punkte2=0;
    }
    if (colour==ball2.bfarbe) {
      fber=1;
    } else {
      fber=0;
    }




    for (int i=0; i<24; i++) {        //Durchdringend
      if (bild2==rbild[i]) {
        durch=1;
        durch1=1;
      }
    } 
    if (fber==0) {
      for (int i=24; i<32; i++) {        
        if (bild2==rbild[i]) {
          durch=1;
          durch1=1;
        }
      }
    }
    if (fber==1) {
      for (int i=24; i<32; i++) {        
        if (bild2==rbild[i]) {
          durch=0;
          durch1=0;
        }
      }
    }
    for (int i=32; i<81; i++) {        
      if (bild2==rbild[i]) {
        durch=1;
        durch1=1;
      } 
      if (bild2==rbild[81]) {
        durch=0;
        durch1=0;
      }
    }
    for ( int i=91; i<100; i++) {
      if (bpos==i) {
        ball=1;
      }
    }




    if (fber==1) {
      for (int i=24; i<32; i++) {      //noHit
        if (bpos==i || bpos2==i) {
          if (s7==0) {
            bpos2=bpos;
            s7=1;
          }

          if (start==1) {
            if (ballber==1) {
              bild3=bild2;
              durch1=0;
              bild2=fbild[0];
              ballber=0;
              if (s6==0 ) {
                punkte=punkte+1;
                s6=1;
              }
            }
          }
          if (start==0 && s1==1 && s2==1) { 
            if (ballber==1) {
              bild3=bild;
              bild2=rbild[i];
            }
            bild2=bild3; 
            bild=bild3;
            s2=0;
          }
        }
      }

      for (int i=32; i<40; i++) {      //oneHit
        if (bpos==i ||bpos2==i ) {
          if (s7==0) {
            bpos2=bpos;
            s7=1;
          }
          if (start==1) {
            if (ballber==1) {
              bild3=bild2;
              if (bpos==i) {
                bpos2=bpos;
              }
              bpos2=bpos2-8;
              bild2=rbild[bpos2];
              ballber=0;
              if (s6==0 ) {
                punkte=punkte+1;
              }
            }
          }
          if (start==0 && s1==1 && s2==1) {
            bild2=bild3; 
            bild=bild3;
            bpos2=bpos;
            s2=0;
          }
        }
      }


      for (int i=64; i<72; i++) {      //twoHit
        if ( bpos==i) {

          if (s7==0) {
            bpos2=bpos;
            s7=1;
          }
          if (start==1) {
            if (ballber==1) {
              bild3=bild2;

              bpos2=bpos;
              bpos2=bpos2-32;
              bild2=rbild[bpos2];
              ballber=0; 
              punkte=punkte+1;
            }
          }
          if (start==0 && s1==1 && s2==1) {
            bild2=bild3; 
            bild=bild3;
            bpos2=bpos;

            s2=0;
          }
        }
      }
    }

    for ( int i=0; i<8; i++) {  //Festerfarbwechsler
      if (bpos==i) {

        if (start==1) { 
          if (ballber==1) {
            ball2.bfarbe=i;

            ballber=0;
          }
        }
      }
    }

    for ( int i=8; i<16; i++) {  //variablerfarbwechsler
      if (bpos==i) {

        if (start==1) { 
          if (s7==0) {
            bpos2=bpos;
            s7=1;
          }
          if (ballber==1) {
            faerben();
            if (s7==0) {
              bpos2=bpos;
              s7=1;
            }
            bpos=ball2.bfarbe+8;
            ball2.bfarbe=colour;
            if (wechself==0) {
              bild3=bild2;
            }
            wechself=1;
            bild2=rbild[bpos];
            ballber=0;
          }
        }
        if (start==0 && s1==1 && s2==1) {
          bild2=bild3;
          bild=bild3;
          s2=0;
          bpos=bpos2;
        }
      }
    }


    if (fber==1) {
      for (int i=40; i<48; i++) {          //Schloss
        if (bpos==i) {

          if (ballber==1) {
            if (schluessel>=1) {
              if (s3==0 && bild3==bild2) {
                schluessel=schluessel-1;
                s3=1;
              }
              if (s6==0) {
                punkte=punkte+1;
                s6=1;
              }
              bild3=bild2;
              durch1=0;
              bild2=fbild[0];
            }
            ballber=0;
          }
          if (start==0 && s1==1 && s2==1) {
            if (ballber==1) {
              bild3=bild;
              bild2=rbild[i];
            }
            bild2=bild3;
            bild=bild3;
            s2=0;
          }
        }
      }


      for (int i=48; i<56; i++) {      //Schlüssel
        if (bpos==i) {

          if (start==1) {
            if (ballber==1) {
              if (s4==0 && bild3==bild2) {
                schluessel=schluessel+1;
                s4=1;
              }
              if (s6==0) {
                punkte=punkte+1;
                s6=1;
              }
              bild3=bild2;
              durch1=0;
              bild2=fbild[0];
              ballber=0;
            }
          }
          if (start==0 && s1==1 && s2==1) {
            if (ballber==1) {
              bild3=bild;
              bild2=rbild[i];
            }
            bild2=bild3; 
            bild=bild3;
            s2=0;
          }
        }
      }
      for (int i=56; i<64; i++) {  //Tod
        if (bpos==i) {
          if (ballber==1) {
            punkte=0;
            punkte2=0;
            ball2.tod=1;
            menue=23;
            ballber=0;
          }
        }
      }

      for (int i=72; i<80; i++) {  //USB
        if (bpos==i) {
          if (start==1) { 
            if (s7==0) {
              bpos2=bpos;
              colour3=colour;
              bild4=bild2;
              s7=1;
            }
            if (ballber==1) {
              if (ball2.x>=e+g && ball2.y>=f && ball2.y<f+h && rpos-22>=0) {     //von rechts kommender ball
                if (rec[rpos-22].bild2==fbild[0] || rec[rpos-22].bild2==rbild[81] ) {
                  rec[rpos-22].bild3=rec[rpos-22].bild2;
                  rec[rpos-22].bpos2=rec[rpos-22].bpos;
                  rec[rpos-22].art2=rec[rpos-22].art;
                  rec[rpos-22].bild=bild;
                  rec[rpos-22].bild2=bild2;
                  rec[rpos-22].bpos=bpos;
                  rec[rpos-22].art=art;
                  rec[rpos-22].colour=colour;
                  if (rec[rpos-22].block==2) {
                    rec[rpos-22].block=3;
                  } else {
                    rec[rpos-22].block=1;
                  }
                  if (block==0 || block==2) {
                    bild3=bild2;
                    durch1=0;
                    bild2=fbild[0];
                    block=2;
                    bpos=81;
                  } else {
                    bild2=fbild[0];
                    bild=fbild[0];
                    bild3=rbild[81];
                    durch1=0;
                    bpos=81;
                  }
                }
              }
              if (ball2.x<=e && ball2.y>=f && ball2.y<f+h && rpos+22<=879) {     //von links kommender ball
                if (rec[rpos+22].bild2==fbild[0] || rec[rpos+22].bild2==rbild[81]) {
                  rec[rpos+22].bild3=rec[rpos+22].bild2;
                  rec[rpos+22].bpos2=rec[rpos+22].bpos;
                  rec[rpos+22].art2=rec[rpos+22].art;
                  rec[rpos+22].bild=bild;
                  rec[rpos+22].bild2=bild2;
                  rec[rpos+22].bpos=bpos;
                  rec[rpos+22].art=art;
                  rec[rpos+22].colour=colour;
                  if (rec[rpos+22].block==2) {
                    rec[rpos+22].block=3;
                  } else {
                    rec[rpos+22].block=1;
                  }
                  if (block==0 || block==2) {
                    bild3=bild2;
                    durch1=0;
                    bild2=fbild[0];
                    block=2;
                    bpos=81;
                  } else {
                    bild2=fbild[0];
                    bild=fbild[0];
                    bild3=rbild[81];
                    durch1=0;
                    bpos=81;
                  }
                }
              }
              if (ball2.x>=e && ball2.x<=e+g && ball2.y<f) {     //von oben kommender ball
                if (rec[rpos+1].bild2==fbild[0] || rec[rpos+1].bild2==rbild[81]) {
                  rec[rpos+1].bild3=rec[rpos+1].bild2;
                  rec[rpos+1].bpos2=rec[rpos+1].bpos;
                  rec[rpos+1].art2=rec[rpos+1].art;
                  rec[rpos+1].bild=bild;
                  rec[rpos+1].bild2=bild2;
                  rec[rpos+1].bpos=bpos;
                  rec[rpos+1].art=art;
                  rec[rpos+1].colour=colour;
                  if (rec[rpos+1].block==2) {
                    rec[rpos+1].block=3;
                  } else {
                    rec[rpos+1].block=1;
                  }
                  if (block==0 || block==2) {
                    bild3=bild2;
                    durch1=0;
                    bild2=fbild[0];
                    block=2;
                    bpos=81;
                  } else {
                    bild2=fbild[0];
                    bild=fbild[0];
                    bild3=rbild[81];
                    durch1=0;
                    bpos=81;
                  }
                }
              }
              if (ball2.x>=e && ball2.x<=e+g && ball2.y>f+h/2 ) {     //von unten kommender ball
                if (rec[rpos-1].bild2==fbild[0] || rec[rpos-1].bild2==rbild[81]) {
                  rec[rpos-1].bild3=rec[rpos-1].bild2;
                  rec[rpos-1].bpos2=rec[rpos-1].bpos;
                  rec[rpos-1].art2=rec[rpos-1].art;
                  rec[rpos-1].bild=bild;
                  rec[rpos-1].bild2=bild2;
                  rec[rpos-1].bpos=bpos;
                  rec[rpos-1].art=art;
                  rec[rpos-1].colour=colour;
                  if (rec[rpos-1].block==2) {
                    rec[rpos-1].block=3;
                  } else {
                    rec[rpos-1].block=1;
                  }
                  if (block==0 || block==2) {
                    bild3=bild2;
                    durch1=0;
                    bild2=fbild[0];
                    block=2;
                    bpos=81;
                  } else {
                    bild2=fbild[0];
                    bild=fbild[0];
                    bild3=rbild[81];
                    durch1=0;
                    bpos=81;
                  }
                }
              }
              ballber=0;
            }
          }
          if (start==0 && s1==1 && s2==1) {
            colour=colour3;
            colour2=colour3;
            bild2=bild4;
            bild=bild4;
            bpos=bpos2;
            faerben();
            s2=0;
          }
        }
      }
    }
    if (bpos==80) {                  //Ziel
      if (ballber==1 && punkte>=punkte2) {
        if (menue != 2 && menue!= 21 && menue!=211 && menue!=212) {
          delay(2000);
          start=10;
        }
        if (int(gaming[0])==levelhoehe) {
          gaming[0]=str(int(gaming[0])+1);
          saveStrings("data/gaming.txt", gaming);
          gaming=loadStrings("data/gaming.txt");
          println("Level "+gaming[0]+ " freigeschalten");
        }
        punkte=0;
        punkte2=0;
        sieg=1;
        menue=22;
        ballber=0;
      }
    }
    if (start==0 ) {
      if (block==2 || block==3) {
        bild=rbild[72+colour3];
        bild2=rbild[72+colour3];

        bpos=72+colour3;
      }
      if (block==1) {
        bild2=bild3;
        bild=bild3;
        bpos=bpos2;
        art=art2;
      }
    }

    if (durch1==1) {
      durch=1;
    }
    if (durch1==0) {
      durch=0;
    }
    if (start==0 && bpos==81) {
      if (bild==fbild[0]) {
        bild=rbild[81];
        bild2=rbild[81];
        art=1;
      }
      if (bild2==fbild[0]) {
        bild=rbild[81];
        bild2=rbild[81];
        art=1;
      }
    }
    if (start==0) {
      bpos2=bpos;
      block=0;
      wechself=0;
      colour=colour3;
      colour2=colour3;
      if (bpos!=81) {
        bild=bild3;
        bild2=bild3;
      }
      s7=0;
      if (ball==1) {

        bpos=ball2.bfarbe+91;
        bild2=ballbild[ball2.bfarbe];
        bild=bild2;
        bild3=bild2;
      }
    }


    if (bpos>=91 && bpos<100) {      //Ballpositionen
      if (start==0) {
        bild=ballbild[bpos-91];
        bild2=ballbild[bpos-91];
        bild3=ballbild[bpos-91];
        ball2.bfarbe=bpos-91;
        ball2.x=e+g/2;
        ball2.y=f+h/2;
        ball2.zy=0;
        gballx= e+g/2;
        gbally= f+h/2;
      }
      if (start==1) {
        durch=0;
        bild2=fbild[0];
        if (s2==1) {
          gballx= e+g/2;
          gbally= f+h/2;
          bpos2=bpos;
          s2=0;
        }
      }
    }

    if (start==10) {
      if (ball==1) {
        bpos=91+ball2.bfarbe;
      }
      if (ball2.tod==0) {
        ball2.x=gballx;
        ball2.y=gbally;
      }
      s8=0;
      s7=0;
      s6=0;
      s5=0;
      punkte=0;
      punkte2=0;
      schluessel=0;
      for (int i=0; i<99; i++) {
        if (bpos==i && bpos<=80) {
          bild2=rbild[i];
        }
        if (bpos==i && bpos>=91) {
          bild2=ballbild[i-92];
        }
      }
      delay(100);
      start=0;
    }
  }//Ende eigen Methode
}//Endklammer
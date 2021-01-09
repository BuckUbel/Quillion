class Uditor {                        // Diese  Klasse zeichnet im Editor den unteren Teil, sodass Auswahl, Hilfe und Vergrößerung der auswählbaren Elemente möglich wird.


  PImage bild;              // gibt das Bild an, welches es beinhaltet
  int auswahl=0;           
  int fest=0;                



  Uditor() {
  }
  Uditor(PImage Bild) {

    bild= Bild;
  }
  
  void aktualisieren(PImage Bild){
    bild= Bild;
  }


  void zeichnen1(int x, int y, int j) {                        // Diese Methode zeichnet nur die Nicht- Farbbilder
    String hilfe="";
    if (mouseX>x && mouseX<x+25 && mouseY>y && mouseY<y+25) {
      auswahl=1;
      if (mousePressed && mouseButton== LEFT && fest==0) {
        auswahl=2; 
        for (int i=0; i<unten.length; i=i+1) {
          unten[i].fest=0;
        }
      }  

      if (mousePressed && mouseButton== RIGHT && fest==1) {
        auswahl=0;
        fest=0;
        festk=0;
      }
    } else {
      auswahl=0;
    }
    if (auswahl==0 && fest==0) {
      image(bild, x, y, 25, 25);
    }
    if (auswahl==1 || fest==1) {
      if (j>=0 && j<=7) {
        hilfe="Farbwechsler";
      }
      if (j>=8 && j<=15) {
        hilfe="Farbwechsler2";
      }
      if (j>=16 && j<=23) {
        hilfe="Mauer";
      }
      if (j>=24 && j<=31) {
        hilfe="noHit";
      }
      if (j>=32 && j<=39) {
        hilfe="oneHit";
      }
      if (j>=40 && j<=47) {
        hilfe="Schloss";
      }
      if (j>=48 && j<=55) {
        hilfe="Schlüssel";
      }
      if (j>=56 && j<=63) {
        hilfe="Tod";
      }
      if (j>=64 && j<=71) {
        hilfe="twoHit";
      }
      if (j>=72 && j<=79) {
        hilfe="USB-Block";
      }
      if (j==80) {
        hilfe="Ziel";
      }
      if (j>=91 && j<=98) {
        hilfe="Ball";
      }
      if (fest==1) {
        textSize(10);
        fill(255);
        text(hilfe, x-5, y-6);
        image(bild, x-5, y-5, 30, 30);
      }
      if (fest==0) {
        textSize(15); 
        fill(255);
        text(hilfe, x, y-1);
        image(bild, x, y, 25, 25);
      }
    }
    if (auswahl==2) {
      auswahl=1;
      fest=1;
      festk=1;
      auswahl(j);
    }
  }
  void zeichnen2(int x, int y, int j) {                        // Diese Methode zeichnet alle Farbbilder

    if (mouseX>x && mouseX<x+25 && mouseY>y && mouseY<y+25) {
      auswahl=1;
      if (mousePressed && mouseButton== LEFT && fest==0 ) {
        auswahl=2; 
        for (int i=83; i<unten.length; i=i+1) {
          unten[i].fest=0;
        }
      }  
      if (mousePressed && mouseButton== RIGHT && fest==1) {
        auswahl=0;
        fest=0;
      }
    } else {
      auswahl=0;
    }
    if (auswahl==0 || fest==0) {
      image(bild, x, y, 25, 25);
    }
    if (auswahl==1 || fest==1) {
      image(bild, x-5, y-5, 30, 30);
    }
    if (auswahl==2) {
      auswahl=1;
      fest=1;
      farbe=j-83;
    }
  }
  void zeichnen(int x, int y, int j) {                              // Diese Methode ist notwendig, damit man in dem Baumodus, welcher von dem Mausrad beeinflusst wird, richtig auswählen kann.

    if (mouseX>x && mouseX<x+25 && mouseY>y && mouseY<y+25) {
      auswahl=1;
      if (mousePressed && mouseButton== LEFT && fest==0) {
        auswahl=2; 
        for (int i=0; i<unten.length; i=i+1) {
          unten[i].fest=0;
        }
      }  

      if (mousePressed && mouseButton== RIGHT && fest==1) {
        auswahl=0;
        fest=0;
        festk=0;
      }
    } else {
      auswahl=0;
    }
    if (auswahl==0 && fest==0) {
      image(bild, x, y, 25, 25);
    }
    if (auswahl==1 || fest==1) {
      image(bild, x-5, y-5, 30, 30);
    }
    if (auswahl==2) {
      auswahl=1;
      fest=1;
      festk=1;
      auswahl(j);
    }
  }


  void auswahl(int j) {                                          // Diese Methode überträgt das ausgewählte Bild bzw. Objekt, sodass in der Rechteck- Klasse dies benutzt werden kann.

    qbild=bild;
    speicherhilfe=j;
    println("Speicherhilfe:"+speicherhilfe);
  }
}
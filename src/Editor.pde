void editor(int fall, int u) {
  //oben
  if (u==0) {
    //Editor Feld 
    fill(255, 0, 0);
    rect(0, 0, 80, 25);
    fill(0);
    textSize(25); 
    text("Editor", 2, 24);

    if (mouseX>0 && mouseX<80 && mouseY>0 && mouseY<25) {

      fill(155, 0, 0);
      rect(0, 25, 180, 30);//Speichern
      rect(0, 55, 180, 30);//Laden
      rect(0, 85, 180, 30); //Optionen
      rect(0, 115, 180, 30);//Hauptmenü
      rect(0, 145, 180, 30);//Neu
      fill(0);
      textSize(25);
      text("Speichern", 5, 50);
      text("Laden", 5, 80);
      text("Optionen", 5, 110);
      text("Hauptmenü", 5, 140); 
      text("Neu", 5, 170);
      edi=1;
    }
    if (edi==1 && mouseX>0 && mouseX<180 && mouseY>25 && mouseY<175) {
      fill(155, 0, 0);
      rect(0, 25, 180, 30);//Speichern
      rect(0, 55, 180, 30);//Laden
      rect(0, 85, 180, 30); //Optionen
      rect(0, 115, 180, 30);//Hauptmenü
      rect(0, 145, 180, 30);//Neu

      if (mouseX>0 && mouseX<180 && mouseY>25 && mouseY<55) {
        fill(205, 50, 50);
        rect(0, 25, 180, 30);//Speichern

        if (mousePressed) {
          speichern();
        }
      }
      if (mouseX>0 && mouseX<180 && mouseY>55 && mouseY<85) {
        fill(205, 50, 50);
        rect(0, 55, 180, 30);//Laden

        if (mousePressed) {
          menue=11;
          laden();
        }
      }
      if (mouseX>0 && mouseX<180 && mouseY>85 && mouseY<115) {
        fill(205, 50, 50);
        rect(0, 85, 180, 30); //Optionen
        if (mousePressed) {
          menue=12;
        }
      }
      if (mouseX>0 && mouseX<180 && mouseY>115 && mouseY<145) {
        fill(205, 50, 50);
        rect(0, 115, 180, 30);//Hauptmenü
        if (mousePressed) {
          menue=0;
        }
      }
      if (mouseX>0 && mouseX<180 && mouseY>145 && mouseY<175) {
        fill(205, 50, 50);
        rect(0, 145, 180, 30);//Neu
        if (mousePressed) {
          for (int i=0; i<rec.length; i++) {
            rec[i].art=0;
            rec[i].bild=rbild[81];
            rec[i].bild2=rbild[81];
            rec[i].bild3=rbild[81];
            rec[i].bpos=81;
          }
          reset();
          laderqw="Level"+str(int(saver[0])+1);
          menue=1;
        }
      }
      fill(0);
      textSize(25);
      text("Speichern", 5, 50);
      text("Laden", 5, 80);
      text("Optionen", 5, 110);
      text("Hauptmenü", 5, 140);
      text("Neu", 5, 170);
    }
    if (edi==1 &&  mouseX>180 || mouseY>175 ) {
      edi=0;
    }
    //Ende Editor Feld

    //Start Feld
    if (start==1) { 
      fill(205, 50, 50);
    }
    if (start==0) {
      fill(155, 0, 0);
    }
    rect(80, 0, 40, 25);
    fill(0);
    textSize(25); 
    text(" S", 84, 24); 

    if (mouseX>80 && mouseX< 120 && mouseY>0 && mouseY<25 && mousePressed) {
      if (start==0) {
        start=1;
        cursor(HAND);
        schluessel=0;
        punkte=0;
      }
    }
    if (keyPressed) {
      if (key == 's') {
        if (start==0) {
          start=1;
          cursor(HAND);
          schluessel=0;
          punkte=0;
        }
      } 
      if (key =='p') {
        if (start==1) {
          start=10;
          cursor(CROSS);
        }
      }
    }

    //Ende Start Feld

    //Pause Feld
    if (start==0) { 
      fill(205, 50, 50);
    }
    if (start==1) {
      fill(155, 0, 0);
    }
    rect(120, 0, 40, 25);
    fill(0);
    textSize(25); 
    text(" P", 124, 24); 

    if (mouseX>120 && mouseX< 160 && mouseY>0 && mouseY<25 && mousePressed) {
      if (start==1) {
        start=10;
        cursor(CROSS);
      }
    }
    // Ende Pause Feld

    //Titel Feld
    fill(155, 0, 0);
    rect(160, 0, width-160, 25);
    fill(0);
    textSize(25); 
    text(laderqw, 164, 24);  
    if (mouseX>160 && mouseX< width && mouseY>0 && mouseY<25 && mousePressed) {
      fill(205, 50, 50);
      rect(160, 0, width-160, 25);
      fill(0);
      text(laderqw, 164, 24);
    }
    //Ende Titel Feld
  }
  //Ende Oben
  // Unten

  if (fall==0) {
    //Variante Mausrad
    if (m1==1) {
      int j=0;
      for (int i=0; i<81; i++) {
        unten[i].zeichnen(mw*30+30*i, height-25, i);
        j=j+1;
      }
      for (int i=91; i<unten.length; i++) {
        unten[i].zeichnen(mw*30+30*(i-10), height-25, i);
        j=j+1;
      }
    }
    //Variante Farbe
    if (m1==0) {
      int j=0;

      for (int i=83; i<91; i++) {
        unten[i].zeichnen2(30*j, height-25, i);
        j=j+1;
      }
      for (int i=farbe; i<80; i=i+8) {
        unten[i].zeichnen1(30*j, height-25, i);
        j=j+1;
      }
      unten[80].zeichnen1(30*j, height-25, 80);
      j=j+1;
      for (int i=farbe+91; i<99; i=i+8) {
        unten[i].zeichnen1(30*j, height-25, i);
        j=j+1;
      }

      textSize(20);
      fill(255);
      text("x:"+int((mouseX/25)+1)+" y:"+int(((mouseY-25)/25)+1), j*30, height-5);
    }
  }
  if (fall==1) {
    textSize(25);
    farbwechsler(3);
    text("Punkte: "+ punkte*1000 + " / " +punkte2*1000, 25, height-2);
    if (zeit2-zeit/1000>=0) {
      text("Zeitbonuspunkte: " +(zeit2-zeit/1000), width-300, height-2);
    } else {
      text("Zeitbonuspunkte: 0", width-300, height-2);
    }
  }

  if (fall==2) {
    for (int i=schluessel; i>0; i--) {
      image(rbild[49], width-i*25, height-25);
    }
    textSize(25);
    farbwechsler(3);
    text("Punkte: "+ punkte*1000 + " / " +punkte2*1000, 25, height-2);
    if (zeit2-zeit/1000>=0) {
      text("Zeitbonuspunkte: " +(zeit2-zeit/1000), 25, 23);
    } else {
      text("Zeitbonuspunkte: 0", 25, 23);
    }
    text(hour()+":"+minute()+":"+second(), width-125, 23);
  }
}
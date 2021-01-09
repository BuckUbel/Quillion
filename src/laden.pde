void laden() {
  // Diese Methode lädt alle editierten Level sowie PC- Level - für Anzeige in den Lademenues.

  loader= new String[int(saver[0])];
  for (int i=0; i<int(saver[0]); i++) {
    loader[i]=("Level "+str(int(i)+1));
  }
  loaderpc= new String[int(saver[0])];
  for (int i=0; i<int(saver[0]); i++) {
    loaderpc[i]=("PC Level "+str(int(i)+1));
  }
}


void laden2(int i, int b) { // i gibt an welches Level geladen werden soll. // b gibt an welches Menue danach erscheinen soll.
  // Diese Methode lädt ein einzelnes Level und löscht zuvor alle übrigen Daten, die noch im "Cache" enthalten sind.
  // Sie kann ebenfalls gleich die Punkte berechnen, die für dieses Level notwendig sind, um zu siegen.

  i=i+1;
  lader=loadStrings("/data/Speicher/Levels/level_"+i+".txt");
  for (int j=0; j<rec.length; j++) {
    rec[j].art=0;
    rec[j].bild=rbild[81];
    rec[j].bild2=rbild[81];
    rec[j].bild3=rbild[81];
    rec[j].bpos=81;
  } 
  reset();
  for (int j=0; j<rec.length; j++) {
    rec[j].bpos=int(lader[j]);
    if (rec[j].bpos<81 ) {
      rec[j].bild=rbild[rec[j].bpos]; 
      rec[j].bild2=rbild[rec[j].bpos]; 
      rec[j].bild3=rbild[rec[j].bpos]; 
      rec[j].art=2;
    }
    if (rec[j].bpos>90) {                            // Ballbestimmung
      rec[j].bild=ballbild[rec[j].bpos-91]; 
      rec[j].bild2=ballbild[rec[j].bpos-91]; 
      rec[j].bild3=ballbild[rec[j].bpos-91]; 
      rec[j].art=2;
      ball.bfarbe=rec[j].bpos-91;
      gballx=rec[j].e+rec[j].g/2;
      gbally=rec[j].f+rec[j].h/2;
      ball.x=gballx;
      ball.y=gbally;
    }
    if (rec[j].bpos>=24 && rec[j].bpos<=31) {          // Punkteberechnung
      punkte2=punkte2+1;                      // noHit
      // println("nohit:" + punkte2);
    }
    if (rec[j].bpos>=32 && rec[j].bpos<=39) {
      punkte2=punkte2+2;  
      // println("onehit:" + punkte2);// OneHit
    }
    if (rec[j].bpos>=40 && rec[j].bpos<=47) {
      punkte2=punkte2+1;          
      // println("schloss:" + punkte2);// Schlüssel
    }
    if (rec[j].bpos>=48 && rec[j].bpos<=55) {
      punkte2=punkte2+1;          
      //  println("schlüssel:" + punkte2);// Schloss
    }
    if (rec[j].bpos>=64 && rec[j].bpos<=71) {
      punkte2=punkte2+3;          
      // println("twohit:" + punkte2);// TwoHit
    }
  }
  println("Laden von level_"+i+".txt abgeschlossen");
  delay(100);
  menue=b;
  lader=loadStrings("/data/loader.txt");
  speicher=loadStrings("/data/loader.txt");
}



void ladenpc(int i) {// i gibt an welches Level geladen werden soll.
  // Diese Methode lädt ein einzelnes PC-Level und löscht zuvor alle übrigen Daten, die noch im "Cache" enthalten sind.
  // Sie kann ebenfalls gleich die Punkte berechnen, die für dieses PC-Level notwendig sind, um zu siegen.
  i=i+1;
  lader=loadStrings("/data/Speicher/PC- LEVELS/level_"+i+".txt");
  for (int j=0; j<rec.length; j++) {
    rec[j].art=0;
    rec[j].bild=rbild[81];
    rec[j].bild2=rbild[81];
    rec[j].bild3=rbild[81];
    rec[j].bpos=81;
    rec[j].durch=0;
  } 
  reset();
  for (int j=0; j<rec.length; j++) {
    rec[j].bpos=int(lader[j]);
    if (rec[j].bpos<81 ) {
      rec[j].bild=rbild[rec[j].bpos]; 
      rec[j].bild2=rbild[rec[j].bpos]; 
      rec[j].bild3=rbild[rec[j].bpos]; 
      rec[j].art=2;
    }
    if (rec[j].bpos>90) {                              // Ballbestimmung
      rec[j].bild=ballbild[rec[j].bpos-91]; 
      rec[j].bild2=ballbild[rec[j].bpos-91]; 
      rec[j].bild3=ballbild[rec[j].bpos-91]; 
      rec[j].art=2;
      ball.bfarbe=rec[j].bpos-91;
      gballx=rec[j].e+rec[j].g/2;
      gbally=rec[j].f+rec[j].h/2;
      ball.x=gballx;
      ball.y=gbally;
    }
    if (rec[j].bpos>=24 && rec[j].bpos<=31) {          // Punkteberechnung
      punkte2=punkte2+1;                      // noHit
      //println("nohit:" + punkte2);
    }
    if (rec[j].bpos>=32 && rec[j].bpos<=39) {
      punkte2=punkte2+2;  
      //println("onehit:" + punkte2);// OneHit
    }
    if (rec[j].bpos>=40 && rec[j].bpos<=47) {
      punkte2=punkte2+1;          
      //println("schloss:" + punkte2);// Schlüssel
    }
    if (rec[j].bpos>=48 && rec[j].bpos<=55) {
      punkte2=punkte2+1;          
      // println("schlüssel:" + punkte2);// Schloss
    }
    if (rec[j].bpos>=64 && rec[j].bpos<=71) {
      punkte2=punkte2+3;          
      // println("twohit:" + punkte2);// TwoHit
    }
  }
  println("Laden von level_"+i+".txt abgeschlossen");
  delay(100);
  menue=21;
  lader=loadStrings("/data/loader.txt");
  speicher=loadStrings("/data/loader.txt");
}




void lademenue(int b) {    // b gibt das Menue an, welches angezeigt werden soll.
  // Dies ist die ausgelagerte Methode für das Lademenue, welches verfügbar für die editierten Level ist.
  // Es besitzt auch die Möglichkeit die Level zu loeschen, anstatt sie zu laden.
  // Bei der Löschung von Dateien wird nochmal nachgefraggt ob dies wirklich gemacht werden soll.
  int qmx=0;
  int qmy=0;

  stroke(0, 255, 255, 25);
  image(hint, 0, 0, width, height);
  if (edi==0) {




    for (int i=0; i<int(saver[0]); i++) {
      fill(far[0], far[1], far[2]);
      textSize(25);
      text(loader[i], 25, mw*30+(i+1)*30+50); 
      if (loe==0) {            
        if (mouseX>0 && mouseX<width && mouseY>mw*30+(i+1)*30+25 && mouseY<mw*30+((i+1)*30)+50 && mouseY>50) {
          noFill();
          stroke(205, 0, 0);
          rect(10, mw*30+(i+1)*30+25, width-20, 30); 
          fill(far[0], far[1], far[2]);
          text(loader[i], 25, mw*30+(i+1)*30+50); 
          if (mousePressed && ls==0 && dbutton==false) {// bei Ladefunktion
            background(h[4]);
            laden2(i, b);
            /*delay(100);
             laden2(i, b);
             delay(1000);
             laden2(i, b);*/
            laderqw=loader[i];
          }
          if (b==1) {
            if (mousePressed && ls==1 && dbutton==false) {// bei Löschfunktion
              loe=1;
              loescher=i+1;
              laderqw=loader[i];
            }
          }
        }
      }
      if (loe==1) {      

        stroke(100);
        fill(far[0], far[1], far[2]);
        rect(width/4, height/3, 500, 150);
        fill(0);
        text("Willst du wirklich "+laderqw+" löschen?", width/4+15, height/3+30);
        fill(far[0], far[1], far[2]);
        rect(width/4+50, height/2, 100, 30);
        rect(width/4+250, height/2, 100, 30);
        fill(0);
        text("JA!", width/4+65, height/2+25);
        text("Nein!", width/4+265, height/2+25);
        if (mousePressed && mouseX>width/4+250 && mouseY>height/2 && mouseX<width/4+350 && mouseY<height/2+30) {
          loe=0;
        }
        if (mousePressed && mouseX>width/4+50 && mouseY>height/2 && mouseX<width/4+150 && mouseY<height/2+30 &&mouseX != qmx && mouseY !=qmy && dbutton==false) {
          loeschen(loescher);
          qmx=mouseX;
          qmy=mouseY;
          delay(100);
          loe=0;
          dbutton=true;
        }
      }
    }

    fill(0);
    noStroke();
    rect(0, 25, width/2, 30);
    fill(far[0], far[1], far[2]);
    text("LADEN", 25, 50);
    if (mouseX>0 && mouseX<width/2 && mouseY>25 && mouseY<50 || ls==0) {
      fill(205, 0, 0);
      rect(0, 25, width/2, 30); 
      fill(far[0], far[1], far[2]);
      text("LADEN", 25, 50);
      if (mousePressed && dbutton==false) {
        ls=0;
        far[0]=50;
        far[1]=155;
        far[2]=50;
      }
    } 
    if (b==1) {
      text("LÖSCHEN?", width-175, 50);
      if (mouseX>width/2 && mouseX<width && mouseY>25 && mouseY<50 || ls==1) {
        fill(205, 0, 0);
        rect(width/2, 25, width, 30); 
        fill(far[0], far[1], far[2]);
        text("LÖSCHEN?", width-175, 50);
        if (mousePressed && dbutton==false) {
          ls=1;
          far[0]=155;
          far[1]=50;
          far[2]=50;
        }
      }
    }
  }
  if (b==21) {
    farbwechsler(3);
    triangle(width-325, height-75, width-300, height-100, width-300, height-50);
    rect(width-300, height-85, 40, 20);
    rect(width-200, height-100, 50, 50);
    fill(0);
    textSize(50);
    text("H", width-195, height-55);
    if (mouseX>width-200 && mouseX<width-150 && mouseY>height-100 && mouseY<height-50 && mousePressed) {
      menue=0;
      delay(100);
    }
    if (mouseX>width-325 && mouseX<width-260 && mouseY>height-100 && mouseY<height-50 && mousePressed) {
      menue=2;
      delay(100);
    }
  }
  stroke(100);
  editor(3, 0);
}


void lademenue2() {
  // Diese ausgelagerte Methode beschreibt ein Lademenue, dass sich von dem obigen weitgehend abgrenzt
  // Es wird nicht als Liste ausgegeben sondern als eine Auswahl, bei der Level erst freigeschalten werden,
  // ,wenn man die vorherigen erfolgreich gespielt hat
  // Hier ist keine Löschfunktion möglich, da dies der Kern des Spieles ist, wenn man den Editor aus Betracht zieht.
  background(hint);
  farbwechsler(3);

  int k=0;
  for (int i=0; i<5; i++) {
    for (int j=0; j<12; j++) {
      k=k+1;
      if (int(saverpc[0])>=k) {
        if (int(gaming[0])>=k) {
          noFill();
          rect((j+1)*75, (i+1)*75, 50, 50);
          text(k, (j+1)*75, (i+1)*75+48);
          if (mouseX>=(j+1)*75 && mouseX<=(j+1)*75+50 && mouseY>=(i+1)*75 && mouseY<=(i+1)*75+50) {
            fill(r, g, b);
            rect((j+1)*75, (i+1)*75, 50, 50);
            fill(0);
            text(k, (j+1)*75, (i+1)*75+48);
            if (mousePressed) {
              if ((k+1)<=int(saverpc[0])) {
                background(h[4]);
                ladenpc(k-1);
                levelhoehe=k;
              }
            }
          }
        } else {
          noFill();
          stroke(155, 0, 0);
          rect((j+1)*75, (i+1)*75, 50, 50);
          fill(155, 0, 0);
          text(k, (j+1)*75, (i+1)*75+48);
        }
        if (int(saverpc[0])==k) {
          fill(0);
          stroke(150);
          rect((j+1)*75, (i+1)*75, 50, 50);
        }
      }
      stroke(r, g, b);
      fill(r, g, b);
    }
  }


  farbwechsler(3);
  triangle(width-325, height-75, width-300, height-100, width-300, height-50);
  rect(width-300, height-85, 40, 20);
  rect(width-200, height-100, 50, 50);
  fill(0);
  textSize(50);
  text("H", width-195, height-55);
  if (mouseX>width-200 && mouseX<width-150 && mouseY>height-100 && mouseY<height-50 && mousePressed) {
    menue=0;
    delay(100);
  }
  if (mouseX>width-325 && mouseX<width-260 && mouseY>height-100 && mouseY<height-50 && mousePressed) {
    menue=2;
    delay(100);
  }
  stroke(100);
  editor(3, 0);
}
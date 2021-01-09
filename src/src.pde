// import ddf.minim.*;                // Einbindung der minim Bibliothek für Abspielen von Sounds
// import ddf.minim.analysis.*;
// import ddf.minim.effects.*;
// import ddf.minim.signals.*;
// import ddf.minim.spi.*;
// import ddf.minim.ugens.*;

// Minim m;                        // Weitere Musikvariablen
// Minim m2;
// AudioPlayer[] p;
// AudioPlayer t;
int musik =1;            // gibt an ob Musik gespielt werden darf
int music= 0;            // gibt Zufallswert für den Siegessong an
int ton=0;               // gitb an ob Geräusche gespielt werden dürfen 
int qw=0;                // für einmaliges Abspielen des Siegesongs

PImage[] h;              // Hintergrundbilder
PImage[] sonstbild;      // sonstige Bilder
PImage[] ballbild;       // Ballbilder
PImage[] ballbild1;       // Ballbilder-klassisch
PImage[] ballbild2;       // Ballbilder-modern
PImage[] rbild;          // Rechtecksbilder
PImage[] fbild;          // Einfarbbilder
PImage   qbild;          // Bild zum Übertragen an die Rechteckklasse von der Uditorklasse
PImage  hint;            // das derzeitige Hintergrundbild

String[] speicher;       // enthält Zahlen für die Rechteckklasse
String[] saver;          // gibt an wie viele eiditierte Level es gibt
String[] saverpc;        // gibt an wie viele PC- LEVEL es gibt
String[] gaming;         // gibt an wie weit ein Spieler die Challenge gespielt hat
int levelhoehe=0;        // gibt an wie weit der Spieler in der Challernge spielen darf
String[] lader;          // enthält Zahlen für die Rechteckklasse
int      loescher=0;     // enthält die Zahl des Elementes, welches gelöscht werden soll 


StringList high;          // gibt die Liste des Highscores an
String[] highscore;       // gibt die gespeicherte bzw. geladen Liste high.txt an
String[] Name;            // Angezeigte Name in Buchstaben
String[] Namen;           // Verfügbare Accountnamen
int namenslaenge;         // Länge des angezeigten Namens
String[] namenslaengen;   // gibt die Längen der Namen an
String name;              // Angezeigter Name
int eing=0;               // wichtig für die Eingabe eines Zeichens


String[] loader;          //enthält ein geladenes Level
String[] loaderpc;        //enthält ein geladenes Level
Rechteck[] rec;           // RechteckKlasse
Ball ball;                // Ballklasse
Uditor[] unten;           // Uditorklasse


int[] far;                 // Farben des Lademenues
int r=255;                 // Farben für den Farbwechsler
int g=0;
int b=0;

char links= LEFT;            // gibt an mit welcher Taste man nach links spielen muss
int l=1;                   // optionsvariable für "links"
char rechts= RIGHT;           // gibt an mit welcher Taste man nach rechts spielen muss
int re=1;                  // optionsvariable für "rechts"

color farbc=0;              // für die Auswahl einer Farbe wichtig
int k=0;                    // für die einmalige Durchfürhung der Erstellung des Mehrfarbenbildes
int c=3;                    // Variable für den Ablauf
int timest=0;               // Variable für den Ablauf
int ms=0;                   // Variable für den Ablauf // enthält Millisekunden
int gballx=0;               // enthält die x- Grundposition des Balles
int gbally=0;               // enthält die y- Grundposition des Balles

String laderqw="Level";     // enthält das String, welche im oberen Rand oft sichtbar ist
boolean dbutton=false;      // wichtig für das Drücken von Buttons
int design=0;               // gibt an, ob man klassisches Design verwenden möchte oder nicht
int farbopt=0;              // gibt an, ob man die Farbe ändern darf oder nicht
int sieg=0;                 // gibt an, ob man gewonnen hat oder nicht
int spielball=0;            // wichtig für die einmalige Setzung des Balles im Spielemodus
int spielm=0;               // gibt an ob gespielt wird
int loe=0;                  // gibt einen Wert für den Löschvorgang an
int ls=0;                   // gibt mit an, ob gelöscht oder geladen werden soll
int start=0;                // gibt an ob gestartet wurde oder pausiert
int mw=0;                   // gibt einen Wert des Mausrades an;
int festk=0;                // für die Übertragung vom Uditor zur Rechteckklasse notwendig
int edi=0;                  // gibt an, was gezeichnet werden soll, während man im oberen menue ist
int schluessel=0;           // gibt an wie viele schluessel man besitzt
int speicherhilfe=0;        // hilft beim Speichern
int farbe=1;                // gibt eine derzeitige Grundfarbe an
int menue=0;                // gibt an, welches Menue gerade gezeigt werden soll
int menue2=0;               // gibt an, welches Menue gerade gezeigt wurde
int punkte=0;               // laufende Punkte
int punkt=0;
int punkte2=0;              // festehende Punkte des jeweiligen Levels
int punkte3=0;              // Gesamtpunkte nach einem Level
int punkt3=0;
int punkte4=0;              // Summe der Gesamtpunkte
int punkt4=0;
int punkte5=0;              // zu speichernde Punkte im Highscore
int zeit=0;                 // Zeitvariable
int zeit2=0;                // Zeitvariable
int m1=0;                   // Optionsvariable
int[] opt;                  // Optionsavariablenarray
int lade=0;                 // wichtig für die Benutzung des Mausrades
float dreh=0;               // wichtig für die Drehung von Objekten
int qwe=0;                  // Zählervariable für die Wiedereinstellung des Designs beim Uditor

void setup() {
  size(1000, 600);
  launch("/data/Nebenspiele/Pong/Pong.exe");
  cursor(CROSS);

  Bildereinlesen2();
  hint=h[4];
  background(hint);
  Bildereinlesen();
  hint=h[3];
  speicher= new String[880];

  lader= new String[880];

  saver= new String[1];
  saver= loadStrings("/data/saver.txt");
  laderqw="Level"+str(int(saver[0])+1);
  println("load: /data/saver.txt");

  saverpc= new String[1];
  saverpc= loadStrings("/data/saver2.txt");
  laderqw="Level"+str(int(saverpc[0])+1);
  println("load: /data/saver2.txt");

  gaming= new String[1];
  gaming= loadStrings("/data/gaming.txt");
  println("load: /data/gamer.txt");


  high = new StringList();
  highscore= loadStrings("/data/high.txt");
  println("load: /data/high.txt");

  /*for (int i=0; i<= highscore.length-1; i=i+2) {
   high.append(highscore[i]+"      "+highscore[i+1]);
   }*/
  for (int i=0; i<= highscore.length-1; i++) {
    high.append(highscore[i]);
  }
  high.sort();


  Namen= loadStrings("/data/namen.txt");
  println("load: /data/namen.txt");
  println("Accounts: "+Namen.length/2);
  namenslaengen= new String[Namen.length/2];
  k=0;
  for (int i=0; i<= Namen.length-1; i=i+2) {
    namenslaengen[k]=Namen[i];
    k++;
  }
  k=0;
  for (int i=1; i<= Namen.length-1; i=i+2) {
    if (k<=Namen.length/2) {
      Namen[k]=Namen[i];
    }
    if (k>=Namen.length/2) {
      Namen[k]="";
    }
    k++;
    println(Namen[i]);
  }

  Name= loadStrings("/data/name.txt");
  println("load: /data/name.txt");
  for (int i=1; i<=Name.length-1; i++) {
    if (i>1) {
      name= name+ Name[i];
    } else { 
      name=Name[i];
    }
  }
  namenslaenge=int(Name[0]);
  println("Login");
  println("_____________________");
  println("Anmeldung von: "+name);
  laden();

  //farben für das lademenue
  far= new int[3];
  far[0]=50;
  far[1]=155;
  far[2]=50;



  opt= new int[7];
  opt[0]=0;
  opt[1]=1;
  opt[2]=1;
  opt[3]=1;
  opt[4]=0;
  opt[5]=0;
  opt[6]=0;

  ball= new Ball(10, 32, farbe);

  //Klasse Uditor

  unten= new Uditor[99];
  int qw=0;
  for (int l=0; l<rbild.length; l=l+1) {
    unten[qw]= new Uditor(rbild[l]);
    qw=qw+1;
  } 
  for (int l=0; l<fbild.length; l=l+1) {
    unten[qw]= new Uditor(fbild[l]);
    qw=qw+1;
  }
   qwe=qw;
  for (int l=0; l<ballbild.length; l=l+1) {
    unten[qw]= new Uditor(ballbild[l]);
    qw=qw+1;
  }

  //Klasse Rechteck

  rec= new Rechteck[880];
  qw=0;
  for (int j=0; j<width; j=j+25) {
    for (int h=25; h<height-25; h=h+25) {
      rec[qw]= new Rechteck(j, h, 25, 25, ball, qw);
      qw=qw+1;
    }
  }


  println("_____________________");
  println("Unfortunately, the open source release contains no music.");
  // m = new Minim(this);
  // p = new AudioPlayer[10];
  // p[0] = m.loadFile("data/Sounds/soundtrack.mp3");
  // p[1] = m.loadFile("data/Sounds/win1.mp3");
  // p[2] = m.loadFile("data/Sounds/win2.mp3");
  // t = m.loadFile("data/Sounds/ediclick.mp3");
  // p[0].play();
  
  
  
  frameRate(60);
}//Ende Setup




void draw() {
// println(frameRate);
  if (menue==0) {                             //Hauptmenue



    lade=0;
    image(hint, 0, 0, width, height);
    farbwechsler(3);
    textSize(100);
    text("Quillion", width/5, height/2);
    ball.zeichnen2();
    ball.bewegen(links, rechts);

    noFill();
    textSize(40);
    text("Spielen", width*3/5+10, height/5+45);
    rect(width*3/5, height/5, width, 50);
    text("Editor", width*3/5+10, height*2/5+45);
    rect(width*3/5, height*2/5, width, 50);
    text("Highscore", width*3/5+10, height*3/5+45);
    rect(width*3/5, height*3/5, width, 50);
    text("Optionen", width*3/5+10, height*4/5+45);
    rect(width*3/5, height*4/5, width, 50);
    text("EXIT", width/2-45, height-5);
    rect(width/2-50, height-45, 100, 50);
    text("CREDITS", width/2+65, height-5);
    rect(width/2+60, height-45, 175, 50);
    text("Name: "+name, width/2-48, 68);
    rect(width/2-50, 15, width, 75);


    if (mouseX>width*3/5 && mouseY>height/5 && mouseY<height/5+50) {
      farbwechsler(3);
      rect(width*3/5, height/5, width, 50);
      fill(0);
      text("Spielen", width*3/5+10, height/5+45);
      if (mousePressed) {
        menue=2;
        delay(100);
      }
    }
    if (mouseX>width*3/5 && mouseY>height*2/5 && mouseY<height*2/5+50) {
      farbwechsler(3);
      rect(width*3/5, height*2/5, width, 50);
      fill(0);
      text("Editor", width*3/5+10, height*2/5+45);
      if (mousePressed) {
        menue=1;
        delay(100);
      }
    }
    if (mouseX>width*3/5 && mouseY>height*3/5 && mouseY<height*3/5+50) {
      farbwechsler(3);
      rect(width*3/5, height*3/5, width, 50);
      fill(0);
      text("Highscore", width*3/5+10, height*3/5+45);
      if (mousePressed) {
        menue=13;
        delay(100);
      }
    }
    if (mouseX>width*3/5 && mouseY>height*4/5 && mouseY<height*4/5+50) {
      farbwechsler(3);
      rect(width*3/5, height*4/5, width, 50);
      fill(0);
      text("Optionen", width*3/5+10, height*4/5+45);
      if (mousePressed) {
        menue=12;
        delay(100);
        dbutton=true;
      }
    }
    if (mouseX>width/2-50 && mouseY>height-45 && mouseX<width/2+50) {
      farbwechsler(3); 
      rect(width/2-50, height-45, 100, 50);
      fill(0);
      text("EXIT", width/2-45, height-5);
      if (mousePressed) {
        exit();
      }
    }
    if (mouseX>width/2+60 && mouseY>height-45 && mouseX<width/2+235) {
      fill(r, g, b);
      rect(width/2+60, height-45, 175, 50);
      fill(0);
      text("CREDITS", width/2+65, height-5);
      if (mousePressed) {
        menue=5;
        dbutton=true;
      }
    }


    if (mouseX>width/2-50 && mouseY>15 && mouseY<90) {
      farbwechsler(3); 
      rect(width/2-50, 15, width, 75);
      fill(0);
      text("Name: "+name, width/2-48, 68);
      if (mousePressed) {
        menue=3;
      }
    }
    mcursor();
    pushMatrix();
    translate(0, 0);
    rotate(radians(dreh));
    rect(-50, -50, 100, 100);
    popMatrix();
    /* pushMatrix();
     translate(width, 0);
     rotate(radians(dreh));
     rect(-50, -50, 100, 100);
     popMatrix();*/
    pushMatrix();
    translate(0, height);
    rotate(radians(dreh));
    rect(-50, -50, 100, 100);
    popMatrix();
    pushMatrix();
    translate(width, height);
    rotate(radians(dreh));
    rect(-50, -50, 100, 100);

    popMatrix();
  }
  if (menue==1) {            //Editor
    laderqw="Level "+str(int(saver[0])+1);
    menue2=1;
    spielm=0;
    cursor(CROSS);
    lade=0;
    image(hint, 0, 0, width, height);
    noFill();
    stroke(100);
    rect(0, 25, width, (height-50));
    stroke(0, 255, 255, 25);


    for (int i=0; i<rec.length; i++) {
      rec[i].zeichnen();
      rec[i].eigen();
      rec[i].test();
      ball.zx=rec[i].abprallenx(ball.x, ball.y, ball.d, ball.zx);
      ball.zy=rec[i].abpralleny(ball.x, ball.y, ball.d, ball.zy);
    }


    if (start==1) {
      ball.zeichnen();
      ball.bewegen(links, rechts);
    }
    // if (mousePressed && ton==1) {
    //   if (p[music].isPlaying()) {
    //   }
    //   t = m.loadFile("data/Sounds/ediclick.mp3");
    //   t.play();
    // }

    if (start==0) {
      editor(0, 0);
    }
    if (start==1) {
      editor(1, 0);
    }
  }

  if (menue==11) {        //Lademenue

    if (lade==0) {
      mw=0;
      lade=1;
    }
    lademenue(1);
  }
  if (menue==12) {        //Optionsmenue
    laderqw="Probier dich aus!";
    cursor(HAND);
    lade=0;
    noStroke();
    image(hint, 0, 0, width, height);
    if (edi==0) {
      farbwechsler(3);
      textSize(50);
      text("Optionen", 40, 85);

      optionen(50, 150, m1, opt[0], "Editorumstellung auf Mausrad", "AN", "AUS");
      m1= option(50, 150, m1, opt[0]);
      opt[0]=opti(50, 150, opt[0]);
      optionen(50, 185, l, opt[1], "Steuerung nach links", "Pfeil", "A");
      l= option(50, 185, l, opt[1]);
      opt[1]=opti(50, 185, opt[1]);
      optionen(50, 220, re, opt[2], "Steuerung nach rechts", "Pfeil", "D");
      re= option(50, 220, re, opt[2]);
      opt[2]=opti(50, 220, opt[2]);
      // optionen(50, 255, musik, opt[3], "Musik", "AN", "AUS");
      // musik= option(50, 255, musik, opt[3]);
      // opt[3]=opti(50, 255, opt[3]);
      // if (opt[3]==1) {
      //   opt[4]=0;
      // }
      // optionen(50, 290, ton, opt[4], "Geräusche", "AN", "AUS");
      // ton= option(50, 290, ton, opt[4]);
      // opt[4]=opti(50, 290, opt[4]);
      // if (opt[4]==1) {
      //   opt[3]=0;
      // }
      // if (opt[3]==1) {
      //   opt[4]=0;
      // }
      optionen(50, 325, farbopt, opt[5], "Bestimmte Farbauswahl", "AN", "AUS");
      farbopt= option(50, 325, farbopt, opt[5]);
      opt[5]=opti(50, 325, opt[5]);

      if (farbopt==1) {
        image(sonstbild[0], 500, 325);
        if (mouseX>=500 && mouseX<=800 && mouseY>=325 && mouseY<=375 && mousePressed && dbutton==false) {
          menue=4; 
          dbutton=true;
          k=0;
        }
      }
      optionen(50, 360, design, opt[6], "Klassische Farbdesign", "AN", "AUS");
      design= option(50, 360, design, opt[6]);
      opt[6]=opti(50, 360, opt[6]);

      if ( design==1) {
        for (int i=0; i<ballbild.length; i++) {
          ballbild[i] = ballbild2[i];
          qw=qwe;
          for (int l=0; l<ballbild.length; l=l+1) {
            unten[qw+l].bild=ballbild[l];
          
          } 
          //unten.aktualisieren();
          println("1");
        }
      } else {
        for (int i=0; i<ballbild.length; i++) {
          ballbild[i] = ballbild1[i];
          qw=qwe;
          for (int l=0; l<ballbild.length; l=l+1) {
            unten[qw+l].bild= ballbild[l];
            
          }
          println("2");
        }
      }

      for (int i=0; i<h.length-1; i++) {
        stroke(155);
        image(h[i], (i+1)*100, height-50, 50, 300); 
        noFill();

        rect((i+1)*100, height-50, 50, 300);
        if (mouseX>=(i+1)*100 && mouseX<=(i+1)*100+50 && mouseY>=height-50 && mouseY<=height+250) {
          image(h[i], (i+1)*100, height-90, 90, 300); 
          noFill();
          stroke(155);
          rect((i+1)*100, height-90, 90, 300);
          if (mousePressed) {
            hint=h[i];
          }
        }
      }
    }



    farbwechsler(3);
    rect(width-200, height-100, 48, 48);
    fill(0);
    textSize(50);
    text("H", width-195, height-55);
    if (mouseX>width-200 && mouseX<width-152 && mouseY>height-100 && mouseY<height-52 && mousePressed && dbutton==false) {
      menue=0;
      delay(100);
    }
    stroke(0, 255, 255, 25);
    editor(3, 0);
  }

  if (l==1) {        // für Ballbewgungsdeklaration
    links =  LEFT;
  } else {
    links='a';
  }
  if (re==1) {
    rechts =  RIGHT;
  } else {
    rechts='d';
  }


  if (menue==13) {
    laderqw="Wie gut warst du?";
    cursor(HAND);
    lade=0;
    noStroke();
    image(hint, 0, 0, width, height);
    if (edi==0) {
      fill(160, 160, 0);
      textSize(50);
      text("Highscore", 40, 85);
      textSize(35);   
      text("Top " + high.size(), 50, 135);
      farbwechsler(3);
      for (int i=high.size()-1; i>=0; i--) {
        if (height/4+(high.size()-i)*40+mw*40 >= height/4+40) {
          text(((high.size()-i))+". "+high.get(i), width/5, height/4+(high.size()-i)*40+mw*40);
        }
      }
    }
    fill(r, g, b);
    rect(90, height-100, 50, 50);
    fill(0);
    textSize(50);
    text("H", 95, height-55);
    if (mouseX>100 && mouseX<150 && mouseY>height-100 && mouseY<height-50 && mousePressed) {
      menue=0;
      delay(100);
    }

    stroke(0, 255, 255, 25);
    editor(3, 0);
  }

  if (menue==2) {
    menue2=2;
    start=0;
    spielball =0;
    spielm=1;
    cursor(HAND);
    lade=0;
    noStroke();
    laderqw="Triff eine Auswahl";
    image(hint, 0, 0, width, height);
    if (edi==0) {
      farbwechsler(3);
      textSize(50);
      text("Spielmodus", 40, 85);

      fill(0);
      rect(150, 150, 200, 200);
      rect(400, 150, 200, 200);
      farbwechsler(3);
      textSize(25);
      text("Eigene Levels", 160, 250);
      text("Challenge", 415, 250);
      if (mouseX>=150 && mouseX<=350 && mouseY>=150 && mouseY<=350) {

        farbwechsler(3);
        rect(150, 150, 200, 200);
        fill(0);
        textSize(25);
        text("Eigene Levels", 160, 250);

        if (mousePressed) {
          menue=211;
          dbutton=true;
        }
      }
      if (mouseX>=400 && mouseX<=600 && mouseY>=150 && mouseY<=350) {

        farbwechsler(3);
        rect(400, 150, 200, 200);
        fill(0);
        textSize(25);
        text("Challenge", 415, 250);

        if (mousePressed) {
          menue=212;
          dbutton=true;
        }
      }
    }
    farbwechsler(3);
    rect(width-200, height-100, 48, 48);
    fill(0);
    textSize(50);
    text("H", width-195, height-55);
    if (mouseX>width-200 && mouseX<width-152 && mouseY>height-100 && mouseY<height-52 && mousePressed) {
      menue=0;
      delay(100);
    }
    stroke(0, 255, 255, 25);
    editor(3, 0);
  }
  if (menue==211) {        //Lademenue
    start=0;
    menue2=211;
    if (lade==0) {
      mw=0;
      lade=1;
    }
    ls=0;
    lademenue(21);
    laderqw="Deine editierten Levels";
    mcursor();
  }
  if (menue==212) {      // Challenge Menue
    start=0;
    menue2=212;
    if (lade==0) {
      mw=0;
      lade=1;
    }
    lademenue2();
    laderqw="Challenge - Zeig was in dir steckt!";
    mcursor();
  }

  if (menue==21) {            //Spielm
    spielm=1;
    start=1;

    cursor(CROSS);
    lade=0;
    image(hint, 0, 0, width, height);
    noFill();
    stroke(100);
    rect(0, 25, width, (height-50));
    stroke(0, 255, 255, 25);

    if (spielball ==0) {
      for (int i=0; i<rec.length; i++) {
        if (rec[i].bpos>90 && rec[i].bpos<99) {
          ball.bfarbe=rec[i].bpos-91;
          ball.x=rec[i].e+rec[i].g/2;
          ball.y=rec[i].f+rec[i].h/2;
          ball.zy=0;
        }
      }
      schluessel=0;
      spielball =1;
    }
    for (int i=0; i<rec.length; i++) {
      rec[i].zeichnen();
      rec[i].eigen();
      rec[i].test();
      ball.zx=rec[i].abprallenx(ball.x, ball.y, ball.d, ball.zx);
      ball.zy=rec[i].abpralleny(ball.x, ball.y, ball.d, ball.zy);
    }


    if (start==1) {
      ball.zeichnen();
      ball.bewegen(links, rechts);
    }
    if (sieg==1) {
      if (menue2==212) {
        punkte4= punkte4+punkte3;
      }
      menue=22;
    }

    if (ball.tod==1) {
      if (menue2==212) {
        punkte4= punkte4+punkte3;
      }
      menue=23;
    }
    editor(2, 1);
  }


  if (menue==22) {     // Sieg
    musik=0;
    if (qw==0) {
      // music=int(random(1, 3));
      // p[music].play();
      qw=1;
    }
    background(hint);
    farbwechsler(3);
    textSize(150);
    text("Sieg!", width/2, height/2+100);
    textSize(35);
    if (menue2==212) {
      if (punkt3 < punkte3) { 
        punkt3= punkt3 +punkte3/100;
      } else {
        punkt3=punkte3;
      }
      if (punkt4 < punkte4) { 
        punkt4= punkt4 +punkte4/100;
      } else {
        punkt4=punkte4;
      }
      textAlign(RIGHT);

      if (zeit2-zeit/1000>=0) {
        text(punkte3-(zeit2-zeit/1000), width/3, height/4);
        text(zeit2-zeit/1000, width/3, height/4+30);
      } else {
        text(punkt3, width/3, height/4);
        text("0", width/3, height/4+30);
      }
      text("+", width/3-150, height/4+30);
      line(width/3, height/4+35, width/3-150, height/4+35);
      text(punkt3, width/3, height/4+70);
      text(punkt4, width/3, height/4+100);
      textAlign(LEFT);
      text(name + " gewinnt:", width/6, height/4-35);
      text(" erspielte Punkte", width/3, height/4);
      text(" Zeitbonuspunkte", width/3, height/4+30);
      text(" Gesamtpunktzahl des Levels", width/3, height/4+70);
      text(" Dein Highscore", width/3, height/4+100);
      line(width/3, height/4+105, width/3-150, height/4+105);
      line(width/3, height/4+110, width/3-150, height/4+110);
    }

    if (menue2==1) {
      text("Nochmal spielen?", width/4, height*3/4+40);
    }
    if (menue2!=1) {
      text("Weiter zum nächsten Level?", width/4, height*3/4+40);
    }
    rect(width-275, height-100, 50, 50);
    rect(width-275, height-150, 250, 50);
    fill(0);

    text("JA!", width-270, height-55);
    textSize(40);
    text("Highscore", width-270, height-105);
    if (mouseX>width-275 && mouseX<width-25 && mouseY>height-150 && mouseY<height-100 && mousePressed) {
      if (menue2==212) {
        punkte5= punkte4;
        high.append(punkte5+"      "+name);
        high.sort();
        highscore= high.array();
        saveStrings("/data/high.txt", highscore);
        punkte3=0;
        punkte4=0;
      }
      menue=13;
      delay(100);
      start=10;
      sieg=0;
    }
    if (mouseX>width-275 && mouseX<width-227 && mouseY>height-100 && mouseY<height-52 && mousePressed) {
      if (menue2==1) {
        menue=1;
        start=10;
        sieg=0;
      }
      if (menue2==2) {
        menue=2;
        start=10;
        sieg=0;
      }
      if (menue2==211) {
        menue=211;
        start=10;
        sieg=0;
      }
      if (menue2==212) {
        menue=212;
        start=10;
        sieg=0;
      }
      delay(100);
      if (menue2!=1) {
        reset();
      }
    }
    mcursor();
  }



  if (menue==23) {        // Tod

    int a=width/2;
    int b=height/2;
    if (millis()>=ms) {
      background(hint);
      fill(random(255));
      textSize(150);
      text("TOD!", 50, 150);



      if (timest ==0) {
        ms=millis();
        timest=1;
      }
    }
    imageMode(CENTER);
    if (millis()>=ms+500) {
      image(ballbild[int(random(8))], a, b, c, c);
    }
    if (millis()>=ms+1000) {
      image(ballbild[int(random(8))], a+25, b+25);
      image(ballbild[int(random(8))], a-25, b+25);
      image(ballbild[int(random(8))], a+25, b-25);
      image(ballbild[int(random(8))], a-25, b-25);
    }
    if (millis()>=ms+1500) {
      image(ballbild[int(random(8))], a+50, b+50);
      image(ballbild[int(random(8))], a-50, b+50);
      image(ballbild[int(random(8))], a+50, b-50);
      image(ballbild[int(random(8))], a-50, b-50);
    }
    if (millis()>=ms+3000) {
      c=c+1;
    }

    imageMode(CORNER);
    if (millis()>=ms+6000) {
      background(hint);
      farbwechsler(3);
      textSize(40);
      text(name, width/10, height/2);
      text("ist tot", width/10, height/2+50);
      textSize(20);
      text("Klicke um weiter zu kommen.", width*2/3, height/2+50);
      if (mousePressed ) {
        if (menue2 ==1) {
          menue=1;
          c=3;
          timest=0;
          ms=0;
          ball.tod=10;
          start=0;
        }
        if (menue2 ==2 || menue2==211 || menue2==212) {
          if (menue2==2) {
            menue=13;
          }
          if (menue2==211) {
            menue=13;
          }
          if (menue2==212) {
            menue=13;
            punkte5= punkte4;
            high.append(punkte5+"      "+name);
            high.sort();
            highscore= high.array();
            saveStrings("/data/high.txt", highscore);
            punkte3=0;
            punkte4=0;
            menue=13;
          }
          c=3;
          timest=0;
          ms=0;
          ball.tod=0;
          start=10;
          reset();
        }
        dbutton=true;
      }
    }
    mcursor();
  }

  if (menue==3) {
    background(hint);
    laderqw="Wie möchtest du heißen?";
    start=0;
    textSize(50);
    if (mouseX>width/5 && mouseX<width/5+600 && mouseY>height/5 && mouseY<height/5+50) {
      if (mousePressed && eing==0 && dbutton==false) {
        eing=1; 
        dbutton=true;
      }
      if (mousePressed && eing==1 && dbutton==false) {
        eing=0; 
        dbutton=true;
      }
    }
    if (eing==0) {
      farbwechsler(3);
      text(name, width/5+2, height/5+48);
      noFill();
      rect(width/5, height/5, 600, 50);
    }

    if (eing==1) {
      punkte3=0;
      punkte4=0;
      fill(r, g, b);
      rect(width/5, height/5, 600, 50);
      fill(0);
      text(name, width/5+2, height/5+48);
      if (keyPressed && dbutton==false && key== BACKSPACE && namenslaenge>=1) {
        int i=namenslaenge-1;
        if (i+1>1) {
          Name[i]=" ";
          for (int j=0; j<=namenslaenge-1; j++) {
            if (j>1) {
              name= name+ Name[j];
            } else { 
              name=Name[j];
            }
          }
          namenslaenge--;
          println("Neuer Name: "+name);
          dbutton=true;
        }
      }
      if (keyPressed && dbutton==false && key != CODED && key != BACKSPACE) {
        int i=namenslaenge;
        if (i>1) {
          Name[i]=eingabe();
        } else {
          if (i>0) {
            Name[i]=eingabe();
          }
        }
        for (int j=0; j<=namenslaenge; j++) {
          if (j>1) {
            name= name+ Name[j];
          } else { 
            name=Name[j];
          }
        }
        namenslaenge++;
        println("Neuer Name: "+name); 
        dbutton=true;
      }
    }

    for (int i=0; i<= (Namen.length/2)-1; i++) {
      punkte3=0;
      punkte4=0;
      fill(r, g, b);
      textSize(35);
      if (height/3+10+(i*45)+mw*45>=height/3+10) {
        text(Namen[i], width/8, height/3+10+(i*45)+mw*45);
        if (mouseX>=width/8 && mouseX<=width && mouseY<=height/3+10+(i*45)+mw*45 && mouseY>=height/3-20+(i*45)+mw*45) {
          noFill();
          rect(width/8-5, height/3-20+(i*45)+mw*45, width, 35);
          if (mousePressed && dbutton==false) {
            name=Namen[i]; 
            for (int j=0; j<=Name.length-1; j++) {
              Name[j]=" ";
            }
            namenslaenge=int(namenslaengen[i]);
            Name[0]=str(namenslaenge);
            for (int j=1; j<=Name.length-1; j++) {
              Name[j]=name.substring(j-1, j);
            }
            println("Account wird angemeldet: "+name);
            dbutton=true;
          }
        }
      }
    }
    fill(r, g, b);
    rect(width*5/6, height/5, 100, 50);
    fill(0);
    text("Save", width*5/6+7, height/5+35);
    if (mouseX>width*5/6 && mouseX<=width*5/6+100 && mouseY>=height/5 && mouseY<=height/5+50 && mousePressed && dbutton==false) {
      for (int j=0; j<Name.length+1; j++) {
        name=name+" ";
      }
      for (int j=1; j<=Name.length-1; j++) {
        Name[j]=name.substring(j-1, j);
      }
      Name[0]=str(namenslaenge);
      saveStrings("/data/name.txt", Name); 
      println("Account wurde gespeichert: " +name);
      dbutton=true;
    }
    fill(r, g, b);
    rect(width/2+53, height/8-10, 380, 50);
    fill(0);
    text("Der Liste Hinzufügen", width/2+60, height/8+25);
    if (mouseX>width*5/6 && mouseX<=width*5/6+100 && mouseY>=height/5 && mouseY<=height/5+50 && mousePressed && dbutton==false) {
      String[] Namen2;
      String[] Namen3;
      Namen3 =loadStrings("/data/namen.txt");
      Namen2= new String[Namen3.length+2];
      for (int i=0; i<=Namen3.length-1; i++) {
        Namen2[i]=Namen3[i];
      }
      Namen2[Namen.length]=str(namenslaenge);
      Namen2[Namen.length+1]=name;
      saveStrings("/data/namen.txt", Namen2);
      println("Nach Erneutem Starten des Programmes ist der Account in der Liste zu finden: "+name);
    }
    fill(r, g, b);
    triangle(width-325, height-50, width-300, height-75, width-300, height-25);
    rect(width-300, height-60, 40, 20);
    if (mouseX>width-325 && mouseX<width-260 && mouseY>height-75 && mouseY<height-25 && mousePressed) {
      menue=0;
      delay(100);
    }
    mcursor(); 
    stroke(100, 100, 100);
    editor(3, 0);
  }



  if (menue==4) {
    laderqw="Probiere das Mausrad aus";
    if (k==0) {
      background(hint);

      int ro=255;
      int bo=0;
      int go=0;
      float ko=ro;
      for (int i=0; i<width; i=i+18) {
        for (int j=50; j<height-50; j=j+18) {
          fill(ro, go, bo);
          stroke(ro, go, bo);
          rect(i, j, 18, 18);
          if (ro>=ko && bo==0) {
            go=go+1 ;
          }
          if (go>=ko && bo==0) {
            ro=ro-1;
          }
          if (ro==0   && go>=ko) {
            bo=bo+1;
          }
          if (bo>=ko && ro==0) {
            go=go-1;
          }
          if (go==0 && bo>=ko) {
            ro=ro+1;
          }
          if (ro>=ko && go==0) {
            bo=bo-1;
          }
        }
      }
      k=1;
    }

    farbc=get(mouseX, mouseY);
    float farbx= red(farbc)-mw*7;
    float farby= green(farbc)-mw*7;
    float farbz= blue(farbc)-mw*7;
    fill(farbx, farby, farbz);
    rect(0, height-50, width, 50);
    fill(255-farbx, 255-farby, 255-farbz);
    text("Rot: "+farbx+ " Grün: "+farby+ " Blau: "+farbz, width/2, height-25);
    if (mousePressed && dbutton==false) {
      k=0;
      r=int(farbx);
      g=int(farby);
      b=int(farbz);
      menue=12;
      dbutton=true;
    }
    editor(3, 0);
  }

  if (menue==5) {        // Credits
    background(hint);
    laderqw="Danke!";
    start=0;
    textSize(35);
    text("Programm: Quillion", 100, 100)  ;
    text("Kursleiter: Mein Informatik-Leher", 100, 140)  ;
    text("Programmierer: Buck Ubel", 100, 180)  ;
    text("Ersteller der Bilder: Buck Ubel", 100, 220)  ;
    text("Ersteller der Levels: jule, Buck Ubel", 100, 260)  ;
    mcursor(); 
    stroke(100, 100, 100);
    if (mousePressed && dbutton==false) {
      menue=0;
      dbutton=true;
    }
  }


  // Musik
  // if (menue!=22) {
  //   qw=0;
  //   p[music].pause();
  //   if (opt[3]==1) {
  //     musik=1;
  //   }
  // }
  // if (musik==1) {
  //   p[0].play();
  // }
  // int mpos=p[0].position();
  // if (mpos>=159373) {
  //   p[0].cue(0);
  //   p[0].play();
  // }
  // if (musik==1) {
  //   if (!p[0].isPlaying()) {
  //     p[0].loop();
  //   }
  // }
  // if (musik==0) {
  //   p[0].pause();
  // }
  
  
//println("qw: "+qw);
}

void mouseWheel(MouseEvent me) {
  float m = me.getAmount();

  if (m<0) {
    mw=mw+1;
  }
  if (m>0) {
    mw=mw-1;
  }
}
void mouseReleased() {
  dbutton=false;
}
void keyReleased() {
  dbutton=false;
}
void mousePressed() {
  if (mouseButton==CENTER) {
    mw=0; 
    dbutton=true;
  }
}

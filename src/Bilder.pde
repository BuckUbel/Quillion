void Bildereinlesen2() {              // Einlesen der Hintergrundbilder

  h    = new PImage[5];
  for (int i=0; i<h.length; i++) {
    h[i] = loadImage("data/Bilder/Hintergrund/Hintergrund("+i+").jpg");
    println("load: data/Bilder/Hintergrund/Hintergrund("+i+").jpg");
  }
}
void Bildereinlesen() {              // weiteres Einlesen anderer Bilder

  sonstbild  = new PImage[1];
  sonstbild[0] = loadImage("data/Bilder/Sonstige/Farbskala.png");
  println("load: data/Bilder/Sonstige/Farbskala.png");


  ballbild1   = new PImage[8];
  for (int i=0; i<ballbild1.length; i++) {
    ballbild1[i] = loadImage("data/Bilder/Ball-Standard/Ball_0"+i+".png");
    println("load: data/Bilder/Ball-Standard/Ball_0"+i+".png");
  } 

  ballbild2   = new PImage[8];
  for (int i=0; i<ballbild2.length; i++) {
    ballbild2[i] = loadImage("data/Bilder/Ball-Modern/Ball_0"+i+".png");
    println("load: data/Bilder/Ball-Modern/Ball_0"+i+".png");
  }  
  
 ballbild   = new PImage[8];
  for (int i=0; i<ballbild.length; i++) {
    ballbild[i] = ballbild2[i];
  }  

  fbild    = new PImage[8];
  for (int i=0; i<fbild.length; i++) {
    fbild[i] = loadImage("data/Bilder/Farben/Farben("+i+").png");
    println("load: data/Bilder/Farben/Farben("+i+").png");
  } 


  rbild   = new PImage[83];
  int i=0;
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/colorfixed/colorfixed("+j+").png");  
    println("load: data/Bilder/colorfixed/colorfixed("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/colorswitcher/colorswitcher("+j+").png");  
    println("load: data/Bilder/colorswitcher/colorswitcher("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/Mauer/Mauer("+j+").png");  
    println("load: data/Bilder/Mauer/Mauer("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/noHit/noHit("+j+").png");  
    println("load: data/Bilder/noHit/noHit("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/Onehit/Onehit("+j+").png");  
    println("load: data/Bilder/Onehit/Onehit("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/Schloss/Schloss("+j+").png");  
    println("load: data/Bilder/Schloss/Schloss("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/Schlüssel/Schlüssel("+j+").png");  
    println("load: data/Bilder/Schlüssel/Schlüssel("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/Tod/Tod("+j+").png");  
    println("load: data/Bilder/Tod/Tod("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/twoHit/twoHit("+j+").png");  
    println("load: data/Bilder/twoHit("+j+").png");
    i=i+1;
  }
  for (int j=0; j<8; j++) {
    rbild[i] = loadImage("data/Bilder/USB/USB("+j+").png");  
    println("load: data/Bilder/USB/USB("+j+").png");
    i=i+1;
  }

  rbild[i] = loadImage("data/Bilder/Ziel/Ziel.png");  
  println("load: data/Bilder/Ziel/Ziel.png");
  i=i+1;
  for (int j=0; j<2; j++) {
    rbild[i] = loadImage("data/Bilder/Standard/Standard("+j+").png");  
    println("load: data/Bilder/Standard/Standard("+j+").png");
    i=i+1;
  }

  qbild=rbild[82];
}
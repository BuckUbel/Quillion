    class Ball {

  PImage[] bild;



  int zx=0;
  int zy=0;
  int x;
  int y;
  int v=3;
  float d=12.5;
  int bfarbe;
  int bfarbe2;
  int tod=0;


  Ball() {
  }
  Ball(int posX, int posY, int colour) {

    bfarbe=colour;
    x=posX;
    y=posY;
  }

  void zeichnen() {
    if (tod==0) {  
      imageMode(CENTER);
      image(ballbild[bfarbe], x, y);
      imageMode(CORNER);
    }
    //println(bfarbe);
  }

  void zeichnen2() {
    ellipse(x, y, d, d);
  }

  void bewegen(char a, char b) {

    //Variable zy, zx bestimmt die Richtung der Bewegung
    if (zy==0) { 
      y=y+v;
    }
    if (zy==1) { 
      y=y-v;
    }
    if (zy==2) {
      y=y;
    }
    if (zx==0) { 
      x=x;
    }
    if (zx==1) { 
      x=x-v;
    }
    if (zx==2) { 
      x=x+v;
    }
    if (zx==3) { 
      x=x-(v*2);
    }
    if (zx==4) { 
      x=x+(v*2);
    }

    //Abprall und Bewegung des Balles
    if (y<=25) {  
      zy=0;
    }
    if (y+d>=height-25) {  
      zy=1;
    }
    if (keyPressed) {
      if (links== LEFT || rechts== RIGHT) {
        if (key== CODED) {  
          if (keyCode== links) {
            if (x>=0) {   
              zx=1;
            }
          }
          if (keyCode== rechts) {
            if (x<= width) {   
              zx=2;
            }
          }
        }
      }
      if (links== 'a' || rechts== 'd') { 
        if (key== links) {
          if (x>=0) {   
            zx=1;
          }
        }
        if (key== rechts) {
          if (x<= width) {   
            zx=2;
          }
        }
      }
    } else {   
      zx=0;
    }
    if (x<=0 ) {  
      x=x+(v*4);
    }
    if (x>=width-d ) {  
      x=x-(v*4);
    }
  }
}

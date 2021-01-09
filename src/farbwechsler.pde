void farbwechsler() {               // Diese beiden Methoden lassen die globalen Variablen (r,g,b) soo verlaufen, dass nahezu jeder Farbe auf der höchsten Helligkeit dargestellt wird. 
  if (farbopt==0) {                 //  Diese Nutzung sieht man relativ häufig in dem Spiel verbaut.
    int v=3;                        // v ist die Geschwindigkeit, in der die Werte der Farbe im RGB- System verändert werden.

    if (r==255 && b==0) {
      g=g+v ;
    }
    if (g==255 && b==0) {
      r=r-v;
    }
    if (r==0   && g==255) {
      b=b+v;
    }
    if (b==255 && r==0) {
      g=g-v;
    }
    if (g==0 && b==255) {
      r=r+v;
    }
    if (r==255 && g==0) {
      b=b-v;
    }
  }
  fill(r, g, b);
  stroke(r, g, b);
}

void farbwechsler(int ges) {
  if (farbopt==0) {
    int v=ges;

    if (r==255 && b==0) {
      g=g+v ;
    }
    if (g==255 && b==0) {
      r=r-v;
    }
    if (r==0   && g==255) {
      b=b+v;
    }
    if (b==255 && r==0) {
      g=g-v;
    }
    if (g==0 && b==255) {
      r=r+v;
    }
    if (r==255 && g==0) {
      b=b-v;
    }
  }
  fill(r, g, b);
  stroke(r, g, b);
}
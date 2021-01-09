void optionen(int x, int y, int vari, int opti, String txt, String an, String aus) {      // Methoden und returns zur schnellen Einbindung neuer Optionen


  textSize(25);


  if (opti==0) {
    noStroke();
    fill(0, 50, 0);
    rect(x+60, y, 60, 25);
    fill(155, 50, 50);
    text(txt, x+125, y+20);
    rect(x, y, 60, 25);
    fill(0);
    text(aus, x+5, y+20);
    vari=0;
  }
  if (opti==1) {
    noStroke();
    fill(105, 0, 0);
    rect(x, y, 60, 25);
    fill(50, 155, 50);
    text(txt, x+125, y+20);
    rect(x+60, y, 60, 25);
    fill(0);
    text(an, x+5+60, y+20); 
    vari=1;
  }
  if (mousePressed && mouseX>x && mouseX<x+60 && mouseY>y && mouseY<y+25) {
    opti=0;
  }
  if (mousePressed && mouseX>x+60 && mouseX<x+120 && mouseY>y && mouseY<y+25 ) {
    opti=1;
  }
  // vari=option(x,y,vari,opti);
  //opti=opti(x,y,opti);
}






int option(int x, int y, int vari, int opti) {
  int var=vari;

  if (opti==0) {
    vari=0;
    var=vari;
    return var;
  }
  if (opti==1) {
    vari=1;
    var=vari;
    return var;
  }
  if (mousePressed && mouseX>x && mouseX<x+60 && mouseY>y && mouseY<y+25) {
    opti=0;
  }
  if (mousePressed && mouseX>x+60 && mouseX<x+120 && mouseY>y && mouseY<y+25 ) {
    opti=1;
  }

  return vari;
}


int opti(int x, int y, int opti) {
  int opt=opti;
  if (mousePressed && mouseX>x && mouseX<x+60 && mouseY>y && mouseY<y+25) {
    opti=0;
    opt=opti;
    return opt;
  }
  if (mousePressed && mouseX>x+60 && mouseX<x+120 && mouseY>y && mouseY<y+25 ) {
    opti=1;
    opt=opti;
    return opt;
  }

  return opti;
}
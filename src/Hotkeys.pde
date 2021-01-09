void keyPressed() {
  if (menue!=3 && menue!=21) {
    if ( key== 'H' ) {
      menue=0;
    }
    if ( key== 'L') {
      menue=11;
    }
    if ( key== 'B') {
      menue=13;
    }
    if ( key== 'O') {
      menue=12;
    }
    if ( key== 'E') {
      menue=1;
    }
    if ( menue==1 && key== 'S') {
      speichern();
    } 
    if ( menue==1 && key== 'N') {
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
  if (menue!=3 ) {
    if (key == BACKSPACE && start==1 ) {
      ball.tod=1; 
      punkte=0;
      punkte2=0;
      menue=23;
    }
  }
}
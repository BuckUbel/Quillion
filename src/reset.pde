void reset() {
  for ( int i=0; i<rec.length; i++) {      // Reset der Rechteck-Variablen
    rec[i].bpos=81;    
    rec[i].bpos2=81;
    rec[i].durch=0;   
    rec[i].durch1=1;
    rec[i].block=0;
    rec[i].ballber=0; 
    rec[i].fber=0; 
    rec[i].art=0;
    rec[i].art2= rec[i].art;
    rec[i].posfarbe=0;
    rec[i].colour=0;
    rec[i].colour2= rec[i].colour;
    rec[i].colour3= rec[i].colour;
    rec[i].wechself=0;
    rec[i].s1=0;   
    rec[i].s2=0;  
    rec[i].s3=0;  
    rec[i].s4=0;  
    rec[i].s5=0;  
    rec[i].s6=0;  
    rec[i].s7=0;  
    rec[i].s8=0;
    rec[i].ball=0;
    rec[i].bild= rbild[81];
    rec[i].bild2=rbild[81];
    rec[i].bild3=rbild[81];
    rec[i].bild4=rbild[81];
  }
  punkte=0;                            //Reset anderer globaler Variablen
  punkte2=0;
  punkte3=0;
  zeit=0;
  zeit2=0;
}
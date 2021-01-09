void loeschen(int i) {
  // Das Löschen besteht darin, dass die darauf folgenden Level den Namen so ändern, dass alle um eins zurückversetzt sind. Abschließend wird nur noch die Levelanzahl um 1 verringert.
  int xx=0; // Zählervariable zur Ausführung einer einmaligen Sache.
  String[] lader2;
  lader2= new String[880];
  String[] lader3;
  lader3= new String[880];

  if (i+1<=int(saver[0])) {
    for (int j=i; j<int(saver[0]); j++) {
      lader2=loadStrings("/data/Speicher/Levels/level_"+str(int(j)+1)+".txt");
      lader3=lader2;
      saveStrings("/data/Speicher/Levels/level_"+j+".txt", lader3);
    }
  }
  if (xx==0) {
    saver[0]=str(int(saver[0])-1);
    saveStrings("/data/saver.txt", saver);
    println("speicher: "+saver[0]);
    println("Level "+i+" wurde gelöscht");
    xx=1;
  }
  menue=0;
  menue=11;
  delay(1000);
}



void speichern() {
  // Beim Speichern werden lediglich die im String[] speicher vorhandenen Werte genommen und dann in ein level_###.txt Dokument gespeichert.
  // Die dort beschrieben Zahlen geben die bpos an, welche dann später verwendet werden, damit man jedem Feld seine eigenen Eigenschaften und Methoden geben kann.
  for (int i=0; i<rec.length; i++) {
    println("");
    println("str("+i+")"+str(rec[i].bpos));
    println("int("+i+")"+rec[i].bpos);
    speicher[i]=(str(rec[i].bpos));
  }

  int i=int(saver[0])+1;
  saver[0]=str(int(saver[0])+1);
  saveStrings("/data/saver.txt", saver);
  println(i);
  saveStrings("/data/Speicher/Levels/level_"+i+".txt", speicher);


  delay(100);
  for (int j=0; j<rec.length; j++) {
    rec[j].art=0;
    rec[j].bild=rbild[81];
    rec[j].bild2=rbild[81];
    rec[j].bpos=81;
  }
  laderqw="Level"+str(int(saver[0])+1);
}
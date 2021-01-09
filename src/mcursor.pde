void mcursor() {
  noCursor();
  farbwechsler(3);
  dreh=dreh+5;
  pushMatrix();
  translate(mouseX, mouseY); // Mauszeiger
  rotate(radians(dreh));
  noFill();
  line(0, 0, -6, -6);
  rect(-6, -6, 12, 12);
  rotate(radians(-2*dreh));
  noFill();
  line(0, 0, -6, -6);
  rect(-6, -6, 12, 12);
  popMatrix();
}
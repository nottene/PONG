void rectButton(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    stroke(#838383);
  } else {
    stroke(#000000);
  }
}

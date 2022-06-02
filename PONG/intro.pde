void intro() {
  background(#A0A0A0);
  textSize(100);
  textFont(SIUUUUU);
  fill(#000000);
  strokeWeight(5);
  text("PONG", width/2, 100);
  //1 player button
  rectButton(175,425,500,650);
  fill(#FFFFFF);
  rect(175,500,250,150);
  fill(#000000);
  textSize(50);
  text("1 PLAYER",300,575);
  //2 player button
  rectButton(575,825,500,650);
  fill(#FFFFFF);
  rect(575,500,250,150);
  fill(#000000);
  textSize(50);
  text("2 PLAYER",700,575);
}

void introClicks() {
  if (mouseX > 175 && mouseX < 425 && mouseY > 500 && mouseY < 650) {
    mode=GAME;
    AI = true;
  }
  if (mouseX > 575 && mouseX < 825 && mouseY > 500 && mouseY < 650) {
    mode=GAME;
    AI = false;
  }
}

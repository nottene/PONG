void pause() {
  //resume button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(465, 535, 40, 110);
  fill(#FFFF00);
  rect(465, 40, 70, 70);
  image(resumeButton, 465, 40, 70, 70);
  //home button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(450, 550, 120, 190);
  fill(#FFFF00);
  rect(450, 120, 100, 70);
  fill(#000000);
  textSize(30);
  text("HOME", 500, 155);
  //pause text
  textSize(200);
  text("PAUSE", width/2, height/2);
}

void pauseClicks() {
  if (mouseX > 465 && mouseX < 535 && mouseY > 40 && mouseY < 110) {
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 550 && mouseY > 120 && mouseY < 190) {
    mode = INTRO;
    theme.rewind();
    lefty = height/2;
    righty = height/2;
    ballx = width/2;
    bally = height/2;
    ballVel = new PVector(3, 0);
    timer = 3;
  }
}

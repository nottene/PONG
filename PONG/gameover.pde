void gameover () {
  theme.pause();
  gameover.play();
  if (leftscore > rightscore) {
    textFont(SIUUUUU);
    textSize(150);
    fill(#00FFFF);
    text("BLUE WINS!!!", width/2, height/2);
  } else {
    textSize(150);
    fill(#FFFF00);
    text("YELLOW WINS!!!", width/2, height/2);
  }
}

void gameoverClicks () {
  mode=INTRO;
  lefty = height/2;
  righty = height/2;
  ballx = width/2;
  bally = height/2;
  ballVel = new PVector(3, 0);
  timer = 3;
}

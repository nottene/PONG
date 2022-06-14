void game() {
  background(#A0A0A0);
  theme.play();
  //center line
  strokeWeight(5);
  stroke(#000000);
  line(width/2, 0, width/2, height);
  //pause button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(465, 535, 40, 110);
  fill(#FFFF00);
  rect(465, 40, 70, 70);
  image(pauseButton, 465, 40, 70, 70);

  //scoreboard
  textSize(100);
  fill(#00FFFF);
  text(leftscore, width/4, 100);
  fill(#FFFF00);
  text(rightscore, 3*width/4, 100);
  //text(timer, width/2, 100);
  timer = timer - (0.017);


  // draw paddles
  fill(#00FFFF);
  stroke(#000000);
  circle(leftx, lefty, leftd);
  fill(#FFFF00);
  circle(rightx, righty, rightd);
  //move paddles
  if (wkey == true) {
    lefty = lefty - 6;
  }
  if (skey == true) {
    lefty = lefty + 6;
  }
  if (AI == false) {
    if (upkey == true) {
      righty = righty -6;
    }
    if (downkey == true) {
      righty = righty + 6;
    }
  } else {
    if (ballx > width/2) {
      if (bally > righty) {
        righty = righty + 6;
      }
      if ( bally < righty) {
        righty = righty -6;
      }
    }
  }
  lefty = min(max(0, lefty), height);
  righty = min(max(0, righty), height);


  //ball
  fill(#00FF00);
  circle(ballx, bally, balld);

  if (timer <0) {
    ballx = ballx + ballVel.x;
    bally = bally + ballVel.y;
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    leftx = 0;
    lefty = height/2;
    rightx = width;
    righty = height/2;
    ballVel = new PVector(-3, int(random(-3, 3)));
    timer = 3;
    score.rewind();
    score.play();
  }
  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    leftx = 0;
    lefty = height/2;
    rightx = width;
    righty = height/2;
    ballVel = new PVector(3, int(random(-3, 3)));
    timer = 3;
    score.rewind();
    score.play();
  }

  //bouncing
  if (dist(leftx, lefty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - leftx)/10;
    ballVel.y = (bally - lefty)/10;
    bounce.rewind();
    bounce.play();
  }
  if (dist(rightx, righty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - rightx)/10;
    ballVel.y = (bally - righty)/10;
    bounce.rewind();
    bounce.play();
  }
  if (bally >= height-balld/2) {
    ballVel.y = -ballVel.y;
  }
  if (bally <= balld/2) {
    ballVel.y = -ballVel.y;
  }

  //go to end screen
  if (leftscore == 3) {
    mode = GAMEOVER;
  }
  if (rightscore == 3) {
    mode = GAMEOVER;
  }
}


void gameClicks () {
  if (mouseX > 465 && mouseX < 535 && mouseY > 40 && mouseY < 110) {
    mode = PAUSE;
    theme.pause();
  }
}

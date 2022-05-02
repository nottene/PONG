void game() {
  background(#000000);
  // draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  //move paddles
  if (wkey == true) {
    lefty = lefty - 4;
  }
  if (skey == true) {
    lefty = lefty + 4;
  }
  if (upkey == true) {
    righty = righty -4;
  }
  if (downkey == true) {
    righty = righty + 4;
  }


  //ball
  circle(ballx, bally, balld);
  ballx = ballx + vx;
  bally = bally + vy;
  //bouncing

  if (dist(leftx, lefty, ballx, bally) <= (leftd + balld)/2) {
    vx = -vx;
  }
  if (dist(rightx, righty, ballx, bally) <= (leftd + balld)/2) {
    vx = -vx;
  }
  if (bally >= height-balld/2) {
    vy = -vy;
  }
  if (bally <= balld/2) {
    vy = -vy;
  }
}

void gameClicks () {
}

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
  ballx = ballx + ballVel.x;
  bally = bally + ballVel.y;
  //bouncing

  if (dist(leftx, lefty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - leftx)/20;
    ballVel.y = (bally - lefty)/20;
  }
  if (dist(rightx, righty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - rightx)/20;
    ballVel.y = (bally - righty)/20;
  }
  if (bally >= height-balld/2) {
    ballVel.y = -ballVel.y;
  }
  if (bally <= balld/2) {
    ballVel.y = -ballVel.y;
  }
}

void gameClicks () {
}

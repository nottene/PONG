void game() {
 background(#A0A0A0);
 //center line
 strokeWeight(5);
 stroke(#000000);
 line(width/2, 0, width/2, height);

 
 //scoreboard
 textSize(50);
 fill(#00FFFF);
 text(leftscore, width/4, 100);
 fill(#FFFF00);
 text(rightscore,3*width/4, 100);
 
 
  
  // draw paddles
  fill(#00FFFF);
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
  if (upkey == true) {
    righty = righty -6;
  }
  if (downkey == true) {
    righty = righty + 6;
  }


  //ball
  fill(#00FF00);
  circle(ballx, bally, balld);
  ballx = ballx + ballVel.x;
  bally = bally + ballVel.y;
  
  //scoring
  if(ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    ballVel = new PVector(-3,0);
  }
  if(ballx > width) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    ballVel = new PVector(3, 0);
  }
  
  
  
  
  
  
  //bouncing
  if (dist(leftx, lefty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - leftx)/10;
    ballVel.y = (bally - lefty)/10;
  }
  if (dist(rightx, righty, ballx, bally) <= (leftd + balld)/2) {
    ballVel.x = (ballx - rightx)/10;
    ballVel.y = (bally - righty)/10;
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

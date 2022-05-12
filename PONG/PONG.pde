int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
PVector ballVel;
float dis;
//keyboard variables
boolean wkey, skey, upkey, downkey;
//scoring
int leftscore, rightscore, timer;

void setup() {
  size(1000, 800, P2D);
  mode = GAME;

  //intiatize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;


  ballVel = new PVector(3, 0);
  ballVel.setMag(8);
  dis = 500;

  //initialize keybaord vars
  wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if ( mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

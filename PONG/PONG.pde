import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int UTILITIES = 4;
//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
PVector ballVel;
float dis;
boolean AI;
//keyboard variables
boolean wkey, skey, upkey, downkey;
//scoring
int leftscore, rightscore;
float timer;
PFont SIUUUUU;
//pause and resume
PImage pauseButton;
PImage resumeButton;
//sound variables
Minim minim;
AudioPlayer theme, bounce, score, gameover;
void setup() {
  size(1000, 800, P2D);
  mode = INTRO;
  textAlign (CENTER, CENTER);
  pauseButton = loadImage("pauseButton.png");
  resumeButton = loadImage("resumeButton.png");
  SIUUUUU = createFont("Earnest Harlley.ttf", 150);
  //initialize paddles
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

  ballVel = new PVector(3, int(random(-3, 3)));
  dis = 500;

  //initialize score
  rightscore = leftscore = 0;
  timer = 3;

  //initialize keybaord vars
  wkey = skey = upkey = downkey = false;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  bounce = minim.loadFile("bounce.mp3");
  score = minim.loadFile("score.mp3");
  gameover = minim.loadFile("gameover.mp3");
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

/**
 Door: Thomas Otte, Luca Louwris, Sem Laan, Maikel Reijnike en Marco Barantes
 
 
 iG103-3
 Dit programma is ee spel genaam Meiro's labyrint, in dit spel moet je met twee characters door verschillende doolhoven komen
 
 Besturing door WASD, character wisselen met E en Q voor interact
 
 */

import ddf.minim.*; //importing the Minim library

int Screen = 0;
int widthMaze = 1050;
int heightMaze = 700;
boolean char12 = true;
double currentTime = 0;
double lastUpdateTime = 0;
double dt = 0;
int grd = 0;
boolean [] keys = new boolean[128];

int mazecount = 0;

boolean char1fin = false;
boolean char2fin = false;
int finX;
int finY;
int startX1;
int startY1;
int startX2;
int startY2;

int selectedX = 0;
int selectedY = 0;

char letter1 = '_';
char letter2 = '_';
char letter3 = '_';

int charNumber = 0;
int penaltyMiliSeconds = 0;

home home;
Highscorescreen Highscore;
Tutorial tutorial;
settings settings;
keyBoard Board;

Characters char1;
Characters char2;
Maze theMaze;
Wall walls[][];
Timer timer = new Timer();

void setup() {
  size(1280, 720);

  // first, load all graphics & sounds
  loadAssets();

  Board = new keyBoard();  
  home = new home();
  Highscore = new Highscorescreen();
  tutorial = new Tutorial();

  /**
   GameScreen 0 is home
   GameScreen 1 is the highscorescreen
   GameScreen 2 is the game
   GameScreen 3 is the keyboard
   GameScreen 4 are settings
   GameScreen 5 is the tutorial
   ...
   */

  walls = new Wall[20][30];
  theMaze = new Maze();
  theMaze.gridSetup();
  char1 = new Characters();
  char2 = new Characters();
  char2.sizeX = 10;
  char2.sizeY = 10;
  char1.dx = 120;
  char1.dy = 120;

  settings = new settings();
  //background1.loop();

  changeGrid();

  frameRate(60);
}

void drawGame() {
  background(0);
  theMaze.wallDraw();
  char1.draw();
  char2.draw();
  timer.draw();
  //deur.draw();
}

void updateGame() {
  lastUpdateTime = currentTime;

  if (keys['e'] == true) {
  }
  if (char12) {

    char1.update1(dt);
  } else {

    char2.update2(dt);
  }
}


void draw() {
  clear();
  background(255);
  Highscore.update();

  if (Screen == 0) {
    home.draw();
  }
  if (Screen == 1) {
    Highscore.draw();
  }
  if (Screen == 2) {
    updateGame();
    drawGame();
    currentTime = (double) millis() / 1000;
    dt = currentTime - lastUpdateTime;
  }
  if (Screen == 3) {
    Board.draw();
  }
  if (Screen == 4) {
    settings.render();
    settings.draw();
  }
  if (Screen == 5) {
    currentTime = (double) millis() / 1000;
    dt = currentTime - lastUpdateTime;
    tutorial.render();
    tutorial.draw();
  }
}

void keyPressed() {

  if (Screen == 0) {
    if (key != CODED && key != SHIFT) { 
      keys[key] = true;

      if (!keys['q']) {
        keys['a'] = false;
        keys['d'] = false;
        keys['s'] = false;
        keys['w'] = false;
      }             
      keys[key] = true;

      switch (key) {

      case 'A' : 
        keys['a'] = true; 
        break;
      case 'S' : 
        keys['s'] = true; 
        break;
      case 'D' : 
        keys['d'] = true; 
        break;
      case 'W' : 
        keys['w'] = true; 
        break;
      default : 
        break;
      }
      if (!keys['a'] && !keys['d'] && !keys['s'] && !keys['w']) {
        keys[key] = false;
      }
    }
  }
  if (Screen == 1) {
    keys[key] = true;
    if (keys['e'] == true) {
      Screen = 0;
    }
    keys[key] = false;
  } else if (Screen == 2 || Screen == 3 || Screen == 4 || Screen == 5) {
    if (key != CODED && key != SHIFT) {
      keys[key] = true;
      switch (key) {

      case 'A' : 
        keys['a'] = true; 
        break;
      case 'S' : 
        keys['s'] = true; 
        break;
      case 'D' : 
        keys['d'] = true; 
        break;
      case 'W' : 
        keys['w'] = true; 
        break;
      default : 
        break;
      }
    }
  }
}

void keyReleased() {
  if (Screen == 2) {
    if (key != CODED && key != SHIFT) {

      keys[key] = false;

      if (key == 'e' || key == 'E') {

        keys['e'] = false;
        keys['E'] = false;

        if (char12 == true) {

          char12 = false;
        } else if (char12 == false) {

          char12 = true;
        }
      } 

      switch (key) {

      case 'A' : 
        keys['a'] = false; 
        break;
      case 'S' : 
        keys['s'] = false; 
        break;
      case 'D' : 
        keys['d'] = false; 
        break;
      case 'W' : 
        keys['w'] = false; 
        break;
      default : 
        break;
      }
    }
  }

  if (Screen == 3 || Screen == 4 || Screen == 5) {
    if (key != CODED && key != SHIFT) {
      keys[key] = false;

      switch (key) {

      case 'A' : 
        keys['a'] = false; 
        break;
      case 'S' : 
        keys['s'] = false; 
        break;
      case 'D' : 
        keys['d'] = false; 
        break;
      case 'W' : 
        keys['w'] = false; 
        break;
      default : 
        break;
      }
    }
  }
}

/**
 Meiro's labyrinth
 
 Door: Thomas Otte, Luca Louwris, Sem Laan, Maikel Reijnike en Marco Barantes
 Klas: ig103
 Groepje: 3
 
 Dit programma is ee spel genaam Meiro's labyrint, in dit spel moet je met twee characters door verschillende doolhoven komen 
 Besturing door WASD, character wisselen met E en Q voor interact
 
 */


//importing the Minim library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//classes
Home home;
HighscoreScreen highscore;
Settings settings;
LevelSelect levelSelect;
Sidebar sidebar;
Keyboard keyboard;
AssetLoader assetLoader;
Characters char1, char2;
Maze maze;
Wall walls[][];
Timer timer;

//integers
int screen; //TODO: alle Screen in screen veranderen
int widthMaze, heightMaze;
int grd;
int aantalLevels;
int mazeCount;
int finX, finY, startX1, startY1, startX2, startY2;
int selectedX, selectedY;
int charNumber;
int penaltyMiliSeconds;

//characters
char letter1, letter2, letter3;

//booleans
boolean char12;
boolean keys[];
boolean char1fin, char2fin;

//doubles
double currentTime, lastUpdateTime, dt;


void setup() {

  frameRate(60);
  size(1280, 720);

  /**
   GameScreen 0 is home
   GameScreen 1 is the highscorescreen
   GameScreen 2 is the game
   GameScreen 3 is the keyboard
   GameScreen 4 are settings
   */

  variablesInit();
  classesInit();
  assetLoader.loadAssets();
  changeGrid();
}

void update() {

  switch(screen) {

  case 0 : 
    break;
  case 1 : 
    highscore.update();
    break;
  case 2 : 
    screenShakeGroot();
    screenShakeCheck();
    updateCharacters();
    break;
  case 3 : 
    break;
  case 4 : 
    settings.update();
    break;
  case 5 :
    break;
  default : 
    break;
  }
}

void render() {

  switch(screen) {

  case 0 : 
    home.draw();
    break;
  case 1 : 
    highscore.draw();
    break;
  case 2 :
    maze.wallDraw();
    char1.draw();
    char2.draw();
    timer.draw();
    sidebar.draw();
    break;
  case 3 : 
    keyboard.draw();
    break;
  case 4 : 
    settings.draw();
    break;
  case 5 : 
    levelSelect.draw();
    break;
  default : 
    break;
  }
}

void onKeyPressed(char hitKey) {

  if (screen == 5) {
    levelSelect.updateOnKeyboard(hitKey);
  }

  if (screen == 2 && hitKey == 'e') {

    char1.changeCharacter();
  }
}

//void onKeyReleased(char hitKey) {
//}

void updateCharacters() {

  if (char12) {
    char1.update1(dt);
  } else {
    char2.update2(dt);
  }
}

void variablesInit() {

  //variables
  char12 = true;
  keys = new boolean[128];
  char1fin = false;
  char2fin = false;
  currentTime = 0;
  lastUpdateTime = 0;
  dt = 0;
  screen = 0;
  widthMaze = 1050;
  heightMaze = 700;
  grd = 0;
  aantalLevels = 6;
  mazeCount = 0;
  finX = 0;
  finY = 0;
  startX1 = 0;
  startY1 = 0;
  startX2 = 0;
  startY2 = 0;
  selectedX = 0;
  selectedY = 0;
  charNumber = 0;
  penaltyMiliSeconds = 0;
  letter1 = '_';
  letter2 = '_';
  letter3 = '_';
}

void classesInit() {

  //classes
  home = new Home();
  highscore = new HighscoreScreen();
  settings = new Settings();
  levelSelect = new LevelSelect();
  sidebar = new Sidebar();
  keyboard = new Keyboard();
  assetLoader = new AssetLoader();
  char1 = new Characters();
  char2 = new Characters();
  maze = new Maze();
  walls = new Wall[20][30];
  timer = new Timer();

  maze.gridSetup();
  char2.sizeX = 14;
  char2.sizeY = 14;
  char2.r = 0;
  char2.g = 0;
  char2.b = 255;
}


//----------------------------------------------------------------------------------------------------


void draw() {

  background(0);

  currentTime = (double) millis() / 1000;
  dt = currentTime - lastUpdateTime;

  update();
  render();
  println(screen);

  lastUpdateTime = currentTime;
}

void keyPressed() {

  if (key != CODED) {

    onKeyPressed(key);

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
    case 'Q' : 
      keys['q'] = true; 
      break;
    case 'E' : 
      keys['e'] = true; 
      break;
    default : 
      break;
    }
  }
}

void keyReleased() {

  if (key != CODED) {

    //onKeyReleased(key);

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
    case 'Q' : 
      keys['q'] = false; 
      break;
    case 'E' : 
      keys['e'] = false; 
      break;
    default : 
      break;
    }
  }
}

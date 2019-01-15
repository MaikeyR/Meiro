/*
 Meiro's labyrinth
 
 Door: Thomas Otte, Luca Louwris, Sem Laan, Maikel Reijneke en Marco Barantes
 Klas: ig103
 Groepje: 3
 
 Dit programma is een spel genaam Meiro's labyrint, in dit spel moet je met twee characters door verschillende doolhoven komen 
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
Minim minim;
Home home;
Highscorescreen highscoreScreen;
Settings settings;
LevelSelect levelSelect;
Sidebar sidebar;
Keyboard keyboard;
Characters char1, char2;
Maze maze;
Wall walls[][];
Timer timer;
ScreenShake screenShake;
GridArrays grid;
WallKill deathAnimation;
LevelSelect highscoreSelect;


//integers
int screen;
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
boolean fromGame;

//doubles
double currentTime, lastUpdateTime, dt;

//colors
color backgroundColour;
color buttonColour;
color buttonSelectedColour;
color textColour;

//strings
String clearName[];
String clearScore[];


//Initialiseerd alles aan het begin van het spel
void setup() {

  frameRate(60);
  size(1280, 720);

  /*
   Gamescreen 0 is home
   Gamescreen 1 is the highscorescreen
   Gamescreen 2 is the game
   Gamescreen 3 is the keyboard
   Gamescreen 4 are settings
   Gamescreen 5 is levelselect
   Gamescreen 6 is highscoreSelect
   */

  //initialiseerd alle variabelen en daarna alle classes, deze functies kun je verderop in dit tabje vinden
  variablesInit();
  classesInit();

  //Laad alle assets vanaf het tabje AssetLoader
  loadAssets();
}

//Wordt in draw() opgeroepen en doet alle berekeningen afhankelijk van waar je bent
void update() {

  switch(screen) {

  case 0 : 
    break;
  case 1 : 
    highscoreScreen.update();
    break;
  case 2 : 
    screenShake.screenShakeGroot(true);
    screenShake.screenShakeCheck();
    updateCharacters();
    break;
  case 3 : 
    break;
  case 4 : 
    settings.update();
    break;
  case 5 :
    levelSelect.update();
    break;
  case 6 : 
    highscoreSelect.update();

    break;
  default : 
    break;
  }
}

//Tekent alle objecten van het juiste scherm, wordt na update aangeroepen in draw()
void render() {

  switch(screen) {

  case 0 : 
    home.draw();
    break;
  case 1 : 
    break;
  case 2 :
    maze.wallDraw();
    char1.draw();
    char2.draw();
    timer.draw();
    sidebar.draw();
    deathAnimation.draw();
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
  case 6 : 
    highscoreSelect.draw();

    break;
  default : 
    break;
  }
}

//Roept functies op wanneer een key wordt aangeslagen, wordt opgeroepen in keyPressed()
void onKeyPressed(char hitKey) {

  if (screen == 5) {

    levelSelect.updateOnKeyboard(hitKey);
  } else if (screen == 2 && hitKey == 'e') {

    char1.changeCharacter();
  } 

  if (screen == 6) {

    highscoreSelect.updateOnKeyboard(hitKey);
  } else if (screen == 1) {
    highscoreScreen.testForQ(hitKey);
  }
}

//Update het character dat op dat moment actief is, wordt opgeroepen in update()
void updateCharacters() {

  if (char12) {
    char1.update1(dt);
  } else {
    char2.update2(dt);
  }
}

//Initialiseerd alle variabelen
void variablesInit() {

  //variables
  char12 = true;
  keys = new boolean[128];
  char1fin = false;
  char2fin = false;
  fromGame = false;
  currentTime = 0;
  lastUpdateTime = 0;
  dt = 0;
  screen = 0;
  widthMaze = 1050;
  heightMaze = 700;
  grd = 0;
  aantalLevels = 15;
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
  clearName = loadStrings("ClearName.txt");
  clearScore = loadStrings("ClearScore.txt");
  backgroundColour = #3149c4;
  buttonColour = #2F3553;
  buttonSelectedColour = #080C24;
  textColour = #FCFCFC;
}

//Initialiseerd alle classes
void classesInit() {

  //Classes
  home = new Home();
  highscoreScreen = new Highscorescreen();
  settings = new Settings();
  levelSelect = new LevelSelect();
  sidebar = new Sidebar();
  keyboard = new Keyboard();
  char1 = new Characters();
  char2 = new Characters();
  maze = new Maze();
  walls = new Wall[20][30];
  timer = new Timer();
  screenShake = new ScreenShake();
  grid = new GridArrays();
  deathAnimation = new WallKill(20);
  highscoreSelect = new LevelSelect();

  maze.gridSetup();
  char2.size = 14;
  char2.r = 0;
  char2.g = 0;
  char2.b = 255;
}


//----------------------------------------------------------------------------------------------------

//Voert iedere frame alles uit wat uitgevoerd moet worden
void draw() {

  background(backgroundColour);

  //Houdt de tijd bij en hoeveel miliseconden er tussen iedere frame zit
  currentTime = (double) millis() / 1000;
  dt = currentTime - lastUpdateTime;

  update();
  render();

  lastUpdateTime = currentTime;
}

//Wordt aangeroepen wanneer iemand op een toets drukt en houdt bij welke toetsen ingedrukt zijn
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

//Wordt aangeroepen wanneer iemand een toets loslaat en houdt bij welke toetsen ingedrukt zijn
void keyReleased() {
  if (key != CODED) {

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

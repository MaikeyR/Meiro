/**
Door: Thomas Otte, Luca Louwris, Sem Laan, Maikel Reijnike en Marco Barantes


iG103-3
Dit programma is ee spel genaam Meiro's labyrint, in dit spel moet je met twee characters door verschillende doolhoven komen

Besturing door WASD, character wisselen met E en Q voor interact

*/
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
/**
Movement char1;
Movement char2;
Maze theMaze;
*/

Characters char1;
Characters char2;
Maze theMaze;
Wall walls[][];

//Deur deur;

Highscorescreen HS;
home startScherm;
keyBoard Board;
Tutorial tutorial;

Timer timer = new Timer();
instellingen instellingen;

PImage Trophy, PlayButton, Titel, Settings;

void setup(){
  size(1280, 720);
  Trophy = loadImage("Trophy.png");
  PlayButton = loadImage("Playbutton.png");
  Titel = loadImage("Titel.png");
  Settings = loadImage("Settings.png");
  
  Board = new keyBoard();  
  startScherm = new home();
  HS = new Highscorescreen();
  tutorial = new Tutorial();
  /**
  GameScreen 0 is het startscherm
  GameScreen 1 is het highscore scherm
  GameScreen 2 is de game
  GameScreen 3 is keyboard
  GameScreen 4 is instellingen
  GameScreen 5 is tutorial
  ...
  */
  
  //deur = new Deur();
  walls = new Wall[20][30];
  theMaze = new Maze();
  theMaze.gridSetup();
  char1 = new Characters();
  char2 = new Characters();
  char2.sizeX = 10;
  char2.sizeY = 10;

  instellingen = new instellingen();

  frameRate(60);
}

void drawGame() {
  background(0);
  theMaze.wallDraw();
  char1.draw();
  char2.draw();
  timer.draw();
}

void updateGame() {
  clear();
  if (keys['e'] == true) {
  }
  if (char12) {

    char1.update1(dt);
  } else {

    char2.update2(dt);
  }
}


void draw(){
  clear();
  background(255);

    HS.update();
  if (Screen == 0){
    startScherm.draw();
  }
  if(Screen == 1){
    if(keys['e']){
      Screen = 0;
    }
    HS.draw();
  }
  if(Screen == 2){
    currentTime = (double) millis() / 1000;
    dt = currentTime - lastUpdateTime;
    //System.out.println("millis: " + millis());
    //System.out.println("last update time: " + lastUpdateTime);
    //System.out.println("current time: " + currentTime);
    //System.out.println("down time: " + dt);

    updateGame();
    drawGame();
  }
    lastUpdateTime = currentTime;
  if(Screen == 3){
    if(keys['e']){
      Screen = 0;
    }
    Board.draw();
  }
  if(Screen == 4){
    instellingen.render();
    instellingen.draw();
  }
  if(Screen == 5){
    if(keys['e']){
      Screen = 0;
    }
    tutorial.render();
    tutorial.draw();
    currentTime = (double) millis() / 1000;
    dt = currentTime - lastUpdateTime;
  }
  
}

void keyPressed() {

  if(Screen == 0){
    if (key != CODED && key != SHIFT) {
    
      keys[key] = true;
    
      switch (key) {
      
      case 'A' : keys['a'] = true; break;
      case 'S' : keys['s'] = true; break;
      case 'D' : keys['d'] = true; break;
      case 'W' : keys['w'] = true; break;
      default : break;
      
      }   
    } 
  }

  if(Screen == 1 || Screen == 5){
    keys[key] = true;
    if(keys['e'] == true){
     Screen = 0; 
     keys[key] = false;
    }
    keys[key] = false;
  }
  else if(Screen == 2 || Screen == 3 || Screen == 4){

    if (key != CODED && key != SHIFT) {
    
      keys[key] = true;
    
      switch (key) {
      
      case 'A' : keys['a'] = true; break;
      case 'S' : keys['s'] = true; break;
      case 'D' : keys['d'] = true; break;
      case 'W' : keys['w'] = true; break;
      default : break;
      
      }
      
    }
    
  }
  
}

void keyReleased() {
  if(Screen == 2){
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
        
        case 'A' : keys['a'] = false; break;
        case 'S' : keys['s'] = false; break;
        case 'D' : keys['d'] = false; break;
        case 'W' : keys['w'] = false; break;
        default : break;
        
      }
    }
  }

  else if(Screen == 0 || Screen == 1 || Screen == 3 || Screen == 4 || Screen == 5){
    if (key != CODED && key != SHIFT) {
      keys[key] = false;
    
      switch (key) {
      
        case 'A' : keys['a'] = false; break;
        case 'S' : keys['s'] = false; break;
        case 'D' : keys['d'] = false; break;
        case 'W' : keys['w'] = false; break;
        default : break;
      
      }
    }
  }
}

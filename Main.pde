int Screen = 0;
int widthMaze = 1050;
int heightMaze = 700;
boolean char12 = true;
double currentTime = 0;
double lastUpdateTime = 0;
double dt = 0;
int grd = 0;
boolean [] keys = new boolean[128];

boolean char1fin = false;
boolean char2fin = false;
int finX;
int finY;

int selectedX = 0;
int selectedY = 0;

char letter1 = '_';
char letter2 = '_';
char letter3 = '_';

int charNumber = 0;
/**
Movement char1;
Movement char2;
Maze theMaze;
*/

Characters char1;
Characters char2;
Maze theMaze;
Wall walls[];
keyBoard Board = new keyBoard();

Highscorescreen HS;

PImage Trophy, PlayButton, Titel;

void setup(){
  size(1280, 720);
  Trophy = loadImage("Trophy.png");
  PlayButton = loadImage("Playbutton.png");
  Titel = loadImage("Titel.png");
  
  HS = new Highscorescreen();
  /**
  GameScreen 0 is het startscherm
  GameScreen 1 is het highscore scherm
  GameScreen 2 is de game
  ...
  */
  
  walls = new Wall[600];
  theMaze = new Maze();
  theMaze.gridSetup();
  theMaze = new Maze();
  theMaze.wallDraw();
  char1 = new Characters();
  char2 = new Characters();
  char2.posX = 435;
  char2.posY = 400;
  char2.sizeX = 10;
  char2.sizeY = 10;
  frameRate(30);
}

void drawGame() {
  background(0);
  theMaze.wallDraw();
  char1.draw();
  char2.draw();
  if(Screen == 3){
  Board.draw();
  }
}

void updateGame() {

  if (keys['e'] == true) {
  }

  if (char12) {

    char1.update(dt);
  } else {

    char2.update(dt);
  }
}


void draw(){
  if (Screen == 0){
    home startScherm = new home();
    startScherm.draw();
  }
  if(Screen == 1){
    HS.update();
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

    lastUpdateTime = currentTime;
  }
}

void keyPressed() { 
  if(Screen == 0){
    
    keys[key] = true;
    
    if (key != CODED && key != SHIFT) { 
      if(!keys[' ']){
        keys['a'] = false;
        keys['d'] = false;
      }             
      keys[key] = true;
            
      switch (key) {
        
        case 'A' : keys['a'] = true; break;
        case 'S' : keys['s'] = true; break;
        case 'D' : keys['d'] = true; break;
        case 'W' : keys['w'] = true; break;
        default : break;
        
      }
      if(!keys['a'] && !keys['d']){
        keys[key] = false;
      }
    }
  }
  if(Screen == 1){
    keys[key] = true;
    if(keys[' '] == true){
     Screen = 0; 
    }
     keys[key] = false;
  }
  if(Screen == 2 || Screen == 3){
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
  if(Screen == 2 || Screen == 3){  
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
}

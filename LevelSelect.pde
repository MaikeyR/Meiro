int levelSelectedX = 0;
int levelSelectedY = 0;
int maxX = 5; //max aantal levels per rij
int maxY = 5; //max aantal levels per kolom(ook de levels die off-screen zijn)
int minY = 0;
int minX = 0;
int selectedLevel[] = new int[2];

class LevelSelect {
  int x, y;
  int minLineOnscreen = 0;
  int maxLineOnscreen = 4;
  int levelNummer;
  int xButtonGrid = 0;
  int yButtonGrid = 0;
  int buttonGrid[][] = new int[aantalLevels][4];

  void update() {

    if (levelSelectedY > maxLineOnscreen) {

      maxLineOnscreen = levelSelectedY;
      minLineOnscreen = levelSelectedY - 4;
    } else if (levelSelectedY < minLineOnscreen) {

      minLineOnscreen = levelSelectedY;
      maxLineOnscreen = levelSelectedY + 4;
    }
    
  }

  void draw() {
    clear();
    x = 32;
    y = 30;
    levelNummer = 0;

    for (yButtonGrid = 0; yButtonGrid < maxY; yButtonGrid++) {
      for (xButtonGrid = 0; xButtonGrid < maxX; xButtonGrid++) {
        if ( levelNummer >= aantalLevels ) {
          break;
        }
        fill(#6B7CCE);
        rect(x, y, 200, 200);

        fill(#0C0F1C);
        textAlign(CENTER, CENTER);
        text(levelNummer + 1, x + 100, y + 100);

        buttonGrid[levelNummer][0] = xButtonGrid;
        buttonGrid[levelNummer][1] = yButtonGrid;
        buttonGrid[levelNummer][2] = x;
        buttonGrid[levelNummer][3] = y;

        levelNummer ++;

        x += 254;
      }
      y += 230;
      x = 32;
    }
    selectedButton();

    update();
    
    textAlign(LEFT, BASELINE);
  }

  void selectedButton() {
    levelNummer = 0;

    fill(#2C3B83);
    for (int i = 0; i < maxY; i++) {
      for (int j = 0; j < maxX; j++) {
        
        if ( levelNummer >= aantalLevels ) {
          break;
        }

        if (levelSelectedX == j && levelSelectedY == i) {
          rect(buttonGrid[levelNummer][2], buttonGrid[levelNummer][3], 200, 200);
          fill(255);
          text(levelNummer + 1, x + 100, y + 100);
          mazeCount = levelNummer;
          grid.loadGrid(levelNummer);
          break;
        }
        levelNummer ++;
      }
    }
  }
  
  void updateOnKeyboard(char keyboardKey) {
    
    if (keyboardKey == 's' && !(levelSelectedY >= maxY)) {

      levelSelectedY++;
    } else if (keyboardKey == 'w' && !(levelSelectedY <= minY)) {

      levelSelectedY--;
    } else if (keyboardKey == 'a') {
      if (levelSelectedX >= minX && levelSelectedY > 0) {
        levelSelectedX = 4;
        levelSelectedY --;
      } else {
        levelSelectedX --;
      }
    } else if (keyboardKey == 'd') {
      if (levelSelectedX >= maxX -1) {
        levelSelectedX = 0;
        levelSelectedY ++;
      } else {
        levelSelectedX++;
      }
    }
    if (keyboardKey == 'e') {
      screen = 0;
    } else if (keyboardKey == 'q') {

      screen = 2;
      timer.stop();
      penaltyMiliSeconds = 0;
      timer.start();
    }
    
  }
  
}

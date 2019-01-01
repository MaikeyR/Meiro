int levelSelectedX = 0;
int levelSelectedY = 0;
int maxX = 5; //max aantal levels per rij
int maxY = 5; //max aantal levels per kolom(ook de levels die off-screen zijn)
int minY = 0;
int minX = 0;
int selectedLevel[] = new int[2];
boolean highScreen = false;

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
    background(backgroundColour);
    x = 32;
    y = 30;
    levelNummer = 0;

    for (yButtonGrid = 0; yButtonGrid < maxY; yButtonGrid++) {
      for (xButtonGrid = 0; xButtonGrid < maxX; xButtonGrid++) {
        if ( levelNummer >= aantalLevels ) {
          break;
        }
        fill(buttonColour);
        rect(x, y, 200, 200);

        fill(textColour);
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
   
    
    fill(buttonSelectedColour);
    for (int i = 0; i < maxY; i++) {
      for (int j = 0; j < maxX; j++) {

        if ( levelNummer >= aantalLevels ) {
          break;
        }

        if (levelSelectedX == j && levelSelectedY == i) {
          rect(buttonGrid[levelNummer][2], buttonGrid[levelNummer][3], 200, 200);
          fill(textColour);
          text(levelNummer + 1, buttonGrid[levelNummer][2] + 100, buttonGrid[levelNummer][3] + 100);
          //println(levelNummer);
          mazeCount = levelNummer;
          grid.loadGrid(levelNummer);
          break;
        }
        levelNummer ++;
      }
    }
  }

  void updateOnKeyboard(char keyboardKey) {
    //println("test");
    if (keyboardKey == 's' && !(levelSelectedY >= maxY)) {

      levelSelectedY++;
    } else if (keyboardKey == 'w' && !(levelSelectedY <= minY)) {

      levelSelectedY--;
    } else if (keyboardKey == 'a') {
      if (levelSelectedX <= minX && levelSelectedY > 0) {
        //println("test");
        levelSelectedX = 4;
        levelSelectedY --;
      } else {
        levelSelectedX --;
      }
    } else if (keyboardKey == 'd') {
      if (levelSelectedX >= maxX -1) {
        //println("test");
        levelSelectedX = 0;
        levelSelectedY ++;
      } else {
        levelSelectedX++;
      }
    }
    if (keyboardKey == 'e') {
      screen = 0;
    } else if (keyboardKey == 'q') {

      if (screen == 5) {

        screen = 2;
        soundtrack.rewind();
        soundtrack.play();
        timer.stop();
        penaltyMiliSeconds = 0;
        timer.start();
        println("excuse me wtf");
      }

      if (screen == 6) {
        highScreen = true;
        screen = 1;
      }

      keys[key] = false;
    }
  }
}

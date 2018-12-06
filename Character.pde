class Characters {
  int xCord, yCord;
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;
  float amountOfLevels = 6; //amount of levels to play.
  char r, g, b;


  Characters() {
    posX = 0;
    posY = 0;
    sizeX = 24;
    sizeY = 24;
    dx = 120;
    dy = 120;
    r = 255;
    g = 0;
    b = 0;
  }

  void draw() {
    fill(r, g, b);
    //stroke(173, 146, 37);
    ellipse(posX, posY, sizeX, sizeY);
  }

  void update1(double dt) {
    //Collision for character 1
    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);

    if (keys['a'] == true) {
      //checks if the blocks to the left are not things you can go on. If so, the result is that you cant move.
      boolean wallLeft = false;

      if (currentGrid[yCord][xCord - 1] != PATH && currentGrid[yCord][xCord - 1] != DOOR && currentGrid[yCord][xCord - 1] != FINISH &&
      posX - (sizeX / 2) < xCord * 35 + 2) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord - 1] != PATH && currentGrid[yCord - 1][xCord - 1] != DOOR && currentGrid[yCord - 1][xCord - 1] != FINISH &&
      posX - (sizeX / 2) < xCord * 35 + 2 && posY < walls[yCord - 1][xCord - 1].y + 35 + sizeY / 2) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord - 1] != PATH && currentGrid[yCord + 1][xCord - 1] != DOOR && currentGrid[yCord + 1][xCord - 1] != FINISH &&
      posX - (sizeX / 2) < xCord * 35 + 2 && posY > walls[yCord + 1][xCord - 1].y - sizeY / 2 + 1) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      }

      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }

    if (keys['d'] == true) {
      //checks if the blocks to the right are not things you can go on. If so, the result is that you cant move.
      boolean wallRight = false;

      if (currentGrid[yCord][xCord + 1] != PATH && currentGrid[yCord][xCord + 1] != DOOR && currentGrid[yCord][xCord + 1] != FINISH &&
      posX + (sizeX / 2) > xCord * 35 + 34) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord + 1] != PATH && currentGrid[yCord - 1][xCord + 1] != DOOR && currentGrid[yCord - 1][xCord + 1] != FINISH &&
      posX + (sizeX / 2) > xCord * 35 + 34 && posY < walls[yCord - 1][xCord + 1].y + 35 + sizeY / 2) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord + 1] != PATH && currentGrid[yCord + 1][xCord + 1] != DOOR && currentGrid[yCord + 1][xCord + 1] != FINISH &&
      posX + (sizeX / 2) > xCord * 35 + 34 && posY > walls[yCord + 1][xCord + 1].y - sizeY / 2 + 1) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      }

      if (wallRight == false) {
        posX += dx * dt;
      }
    } 

    if (keys['w'] == true) {
      //checks if the blocks on the top are not things you can go on. If so, the result is that you cant move.
      boolean wallUp = false;

      if (currentGrid[yCord - 1][xCord] != PATH && currentGrid[yCord - 1][xCord] != DOOR && currentGrid[yCord - 1][xCord] != FINISH &&
      posY - (sizeY / 2) < yCord * 35 + 2) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord - 1] != PATH && currentGrid[yCord - 1][xCord - 1] != DOOR && currentGrid[yCord - 1][xCord - 1] != FINISH &&
      posY - (sizeY / 2) < yCord * 35 + 2 && posX < walls[yCord - 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord + 1] != PATH && currentGrid[yCord - 1][xCord + 1] != DOOR && currentGrid[yCord - 1][xCord + 1] != FINISH &&
      posY - (sizeY / 2) < yCord * 35 + 2 && posX > walls[yCord - 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      }

      if (wallUp == false) {
        posY -= dy * dt;
      }
    } 

    if (keys['s'] == true) {
      //checks if the blocks on the bottom are not things you can go on. If so, the result is that you cant move.
      boolean wallDown = false;

      if (currentGrid[yCord + 1][xCord] != PATH && currentGrid[yCord + 1][xCord] != DOOR && currentGrid[yCord + 1][xCord] != FINISH && posY + (sizeY / 2) > yCord * 35 + 34) {
        wallDown = true; posY = yCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord - 1] != PATH && currentGrid[yCord + 1][xCord - 1] != DOOR && currentGrid[yCord + 1][xCord - 1] != FINISH &&
      posY + (sizeY / 2) > yCord * 35 + 34 && posX < walls[yCord + 1][xCord - 1].x + 35 + sizeX / 2) {
        wallDown = true; posY = yCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord + 1] != PATH && currentGrid[yCord + 1][xCord + 1] != DOOR && currentGrid[yCord + 1][xCord + 1] != FINISH &&
      posY + (sizeY / 2) > yCord * 35 + 34 && posX > walls[yCord + 1][xCord + 1].x - sizeX / 2 + 1) {
        wallDown = true; posY = yCord * 35 + 35 - sizeX / 2;
      }

      if (wallDown == false) {
        posY += dy * dt;
      }
    }
    
    checkFinish();
    
  }

  void update2(double dt) {
    //Collision for character 2

    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);

    if (keys['a'] == true) {
      //checks if the blocks to the left are not things you can go on. If so, the result is that you cant move.
      boolean wallLeft = false;

      if (currentGrid[yCord][xCord - 1] != PATH && currentGrid[yCord][xCord - 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord][xCord - 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord][xCord - 1] != FINISH && currentGrid[yCord][xCord - 1] != DOOR && posX - (sizeX / 2) < xCord * 35 + 2) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord - 1] != PATH && currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord - 1][xCord - 1] != FINISH && currentGrid[yCord - 1][xCord - 1] != DOOR && posX - (sizeX / 2) < xCord * 35 + 2 && posY < walls[yCord - 1][xCord - 1].y + 35 + sizeY / 2) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord - 1] != PATH && currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord + 1][xCord - 1] != FINISH && currentGrid[yCord + 1][xCord - 1] != DOOR && posX - (sizeX / 2) < xCord * 35 + 2 && posY > walls[yCord + 1][xCord - 1].y - sizeY / 2 + 1) {
        wallLeft = true; posX = xCord * 35 + sizeX / 2;
      }
      
      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }


    if (keys['d'] == true) {
      //checks if the blocks to the right are not things you can go on. If so, the result is that you cant move.
      boolean wallRight = false;

      if (currentGrid[yCord][xCord + 1] != PATH && currentGrid[yCord][xCord + 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord][xCord + 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord][xCord + 1] != FINISH && currentGrid[yCord][xCord + 1] != DOOR && posX + (sizeX / 2) > xCord * 35 + 34) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord + 1] != PATH && currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord - 1][xCord + 1] != FINISH && currentGrid[yCord - 1][xCord + 1] != DOOR && posX + (sizeX / 2) > xCord * 35 + 34 &&posY < walls[yCord - 1][xCord + 1].y + 35 + sizeY / 2) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord + 1] != PATH && currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord + 1][xCord + 1] != FINISH && currentGrid[yCord + 1][xCord + 1] != DOOR && posX + (sizeX / 2) > xCord * 35 + 34 && posY > walls[yCord + 1][xCord + 1].y - sizeY / 2 + 1) {
        wallRight = true; posX = xCord * 35 + 35 - sizeX / 2;
      }

      if (wallRight == false) {
        posX += dx * dt;
      }
    } 


    if (keys['w'] == true) {
      //checks if the blocks on the top are not things you can go on. If so, the result is that you cant move.
      boolean wallUp = false;

      if (currentGrid[yCord - 1][xCord] != PATH && currentGrid[yCord - 1][xCord] != SMALL_HALLWAY_HORIZ && currentGrid[yCord - 1][xCord] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord - 1][xCord] != FINISH &&  currentGrid[yCord - 1][xCord] != DOOR && posY - (sizeY / 2) < yCord * 35 + 2) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord - 1] != PATH && currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_VERT && 
      currentGrid[yCord - 1][xCord - 1] != FINISH && currentGrid[yCord - 1][xCord - 1] != DOOR && posY - (sizeY / 2) < yCord * 35 + 2 && posX < walls[yCord - 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      } else if (currentGrid[yCord - 1][xCord + 1] != PATH && currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord - 1][xCord + 1] != FINISH && currentGrid[yCord - 1][xCord + 1] != DOOR && posY - (sizeY / 2) < yCord * 35 + 2 && posX > walls[yCord - 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true; posY = yCord * 35 + sizeX / 2;
      }
      
      
      if (wallUp == false) {
        posY -= dy * dt;
      }
    } 


    if (keys['s'] == true) {
      //checks if the blocks on the bottom are not things you can go on. If so, the result is that you cant move.
      boolean wallDown = false;

      if (currentGrid[yCord + 1][xCord] != PATH && currentGrid[yCord + 1][xCord] != SMALL_HALLWAY_HORIZ && currentGrid[yCord + 1][xCord] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord + 1][xCord] != FINISH &&currentGrid[yCord + 1][xCord] != DOOR && posY + (sizeY / 2) > yCord * 35 + 34) {
        wallDown = true; posY = yCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord - 1] != PATH && currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord + 1][xCord - 1] != FINISH && currentGrid[yCord + 1][xCord - 1] != DOOR && posY + (sizeY / 2) > yCord * 35 + 34 && posX < walls[yCord + 1][xCord - 1].x + 35 + sizeX / 2) {
        wallDown = true; posY = yCord * 35 + 35 - sizeX / 2;
      } else if (currentGrid[yCord + 1][xCord + 1] != PATH && currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_HORIZ && currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_VERT &&
      currentGrid[yCord + 1][xCord + 1] != FINISH && currentGrid[yCord + 1][xCord + 1] != DOOR && posY + (sizeY / 2) > yCord * 35 + 34 && posX > walls[yCord + 1][xCord + 1].x - sizeX / 2 + 1) {
        wallDown = true; posY = yCord * 35 +  35 - sizeX / 2;
      }

      if (wallDown == false) {
        posY += dy * dt;
      }
    }
    
    checkFinish();
    
  }
  
  void checkFinish(){
    //checks if both characters are on the finish.
    if (char1.posX > finX && char1.posX < (finX + 35) && char1.posY > finY && char1.posY < (finY + 35)) {
      char1fin = true;
    } else {
      char1fin = false;
    }

    if (char2.posX > finX && char2.posX < (finX + 35) && char2.posY > finY && char2.posY < (finY + 35)) {
      char2fin = true;
    } else {
      char2fin = false;
    }

    if (char2fin && char1fin || keys['f']) {
      if (mazecount < amountOfLevels - 1) {
        mazecount++; 
        char1fin = false;
        char2fin = false;
        changeGrid();
      } else {
        Screen = 3;
        timer.stop();
      }
      keys['f'] = false;
    }
  }
}

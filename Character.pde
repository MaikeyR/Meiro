class Characters {
  int xCord, yCord;
  float posX;
  float posY;
  float size;
  float dx;
  float dy;
  char r, g, b;
  boolean charChanged;
  float growth = 4;
  int charChange = 0;
  float extraSize;

  Characters() {
    posX = 0;
    posY = 0;
    size = 24;
    extraSize = 0;
    dx = 120;
    dy = 120;
    r = 255;
    g = 0;
    b = 0;
  }

  void draw() {
    if(char12){
      fill(textColour);
      ellipse(char1.posX+screenShakeX, char1.posY+screenShakeY, char1.size + extraSize + 6, char1.size + extraSize + 6);
      fill(char1.r, g, char1.b);
      ellipse(char1.posX+screenShakeX, char1.posY+screenShakeY, char1.size + extraSize, char1.size + extraSize);
    }else{
      fill(textColour);
      ellipse(char2.posX+screenShakeX, char2.posY+screenShakeY, char2.size + extraSize + 6, char2.size + extraSize + 6);
      fill(char2.r, g, char2.b);
      ellipse(char2.posX+screenShakeX, char2.posY+screenShakeY, char2.size + extraSize, char2.size + extraSize);
    }
    fill(r, g, b);
    ellipse(posX+screenShakeX, posY+screenShakeY, size + extraSize, size + extraSize);
    if(charChanged){
      charChangedAnimation();
    }
  }

  void update1(double dt) {
    //Collision for character 1
    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);

    if (keys['a'] == true) {
      //checks if the blocks to the left are not things you can go on. If so, the result is that you cant move.
      boolean wallLeft = false;

      if (grid.currentGrid[yCord][xCord - 1] != PATH && grid.currentGrid[yCord][xCord - 1] != HOLE && grid.currentGrid[yCord][xCord - 1] != FINISH && grid.currentGrid[yCord][xCord - 1] != DON_BUTTON &&
        posX - (size / 2) < xCord * 35 + 2) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord - 1] != PATH && grid.currentGrid[yCord - 1][xCord - 1] != HOLE && grid.currentGrid[yCord - 1][xCord - 1] != FINISH && grid.currentGrid[yCord - 1][xCord - 1] != DON_BUTTON &&
        posX - (size / 2) < xCord * 35 + 2 && posY < walls[yCord - 1][xCord - 1].y + 35 + size / 2) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord - 1] != PATH && grid.currentGrid[yCord + 1][xCord - 1] != HOLE && grid.currentGrid[yCord + 1][xCord - 1] != FINISH && grid.currentGrid[yCord + 1][xCord - 1] != DON_BUTTON &&
        posX - (size / 2) < xCord * 35 + 2 && posY > walls[yCord + 1][xCord - 1].y - size / 2 + 1) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      }

      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }

    if (keys['d'] == true) {
      //checks if the blocks to the right are not things you can go on. If so, the result is that you cant move.
      boolean wallRight = false;

      if (grid.currentGrid[yCord][xCord + 1] != PATH && grid.currentGrid[yCord][xCord + 1] != HOLE && grid.currentGrid[yCord][xCord + 1] != FINISH && grid.currentGrid[yCord][xCord + 1] != DON_BUTTON &&
        posX + (size / 2) > xCord * 35 + 34) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord + 1] != PATH && grid.currentGrid[yCord - 1][xCord + 1] != HOLE && grid.currentGrid[yCord - 1][xCord + 1] != FINISH && grid.currentGrid[yCord - 1][xCord + 1] != DON_BUTTON &&
        posX + (size / 2) > xCord * 35 + 34 && posY < walls[yCord - 1][xCord + 1].y + 35 + size / 2) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord + 1] != PATH && grid.currentGrid[yCord + 1][xCord + 1] != HOLE && grid.currentGrid[yCord + 1][xCord + 1] != FINISH && grid.currentGrid[yCord + 1][xCord + 1] != DON_BUTTON &&
        posX + (size / 2) > xCord * 35 + 34 && posY > walls[yCord + 1][xCord + 1].y - size / 2 + 1) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      }

      if (wallRight == false) {
        posX += dx * dt;
      }
    } 

    if (keys['w'] == true) {
      //checks if the blocks on the top are not things you can go on. If so, the result is that you cant move.
      boolean wallUp = false;

      if (grid.currentGrid[yCord - 1][xCord] != PATH && grid.currentGrid[yCord - 1][xCord] != HOLE && grid.currentGrid[yCord - 1][xCord] != FINISH && grid.currentGrid[yCord - 1][xCord] != DON_BUTTON &&
        posY - (size / 2) < yCord * 35 + 2) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord - 1] != PATH && grid.currentGrid[yCord - 1][xCord - 1] != HOLE && grid.currentGrid[yCord - 1][xCord - 1] != FINISH && grid.currentGrid[yCord - 1][xCord - 1] != DON_BUTTON &&
        posY - (size / 2) < yCord * 35 + 2 && posX < walls[yCord - 1][xCord - 1].x + 35 + size / 2) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord + 1] != PATH && grid.currentGrid[yCord - 1][xCord + 1] != HOLE && grid.currentGrid[yCord - 1][xCord + 1] != FINISH && grid.currentGrid[yCord - 1][xCord + 1] != DON_BUTTON &&
        posY - (size / 2) < yCord * 35 + 2 && posX > walls[yCord - 1][xCord + 1].x - size / 2 + 1) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      }

      if (wallUp == false) {
        posY -= dy * dt;
      }
    } 

    if (keys['s'] == true) {
      //checks if the blocks on the bottom are not things you can go on. If so, the result is that you cant move.
      boolean wallDown = false;

      if (grid.currentGrid[yCord + 1][xCord] != PATH && grid.currentGrid[yCord + 1][xCord] != HOLE && grid.currentGrid[yCord + 1][xCord] != FINISH && grid.currentGrid[yCord + 1][xCord] != DON_BUTTON &&
        posY + (size / 2) > yCord * 35 + 34) {
        wallDown = true; 
        posY = yCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord - 1] != PATH && grid.currentGrid[yCord + 1][xCord - 1] != HOLE && grid.currentGrid[yCord + 1][xCord - 1] != FINISH && grid.currentGrid[yCord + 1][xCord - 1] != DON_BUTTON &&
        posY + (size / 2) > yCord * 35 + 34 && posX < walls[yCord + 1][xCord - 1].x + 35 + size / 2) {
        wallDown = true; 
        posY = yCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord + 1] != PATH && grid.currentGrid[yCord + 1][xCord + 1] != HOLE && grid.currentGrid[yCord + 1][xCord + 1] != FINISH && grid.currentGrid[yCord + 1][xCord + 1] != DON_BUTTON &&
        posY + (size / 2) > yCord * 35 + 34 && posX > walls[yCord + 1][xCord + 1].x - size / 2 + 1) {
        wallDown = true; 
        posY = yCord * 35 + 35 - size / 2;
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

      if (grid.currentGrid[yCord][xCord - 1] != PATH && grid.currentGrid[yCord][xCord - 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord][xCord - 1] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord][xCord - 1] != FINISH && grid.currentGrid[yCord][xCord - 1] != HOLE && grid.currentGrid[yCord][xCord - 1] != COR_BUTTON && posX - (size / 2) < xCord * 35 + 2) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord - 1] != PATH && grid.currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_VERT && grid.currentGrid[yCord - 1][xCord - 1] != COR_BUTTON &&
        grid.currentGrid[yCord - 1][xCord - 1] != FINISH && grid.currentGrid[yCord - 1][xCord - 1] != HOLE && posX - (size / 2) < xCord * 35 + 2 && posY < walls[yCord - 1][xCord - 1].y + 35 + size / 2) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord - 1] != PATH && grid.currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_VERT && grid.currentGrid[yCord + 1][xCord - 1] != COR_BUTTON &&
        grid.currentGrid[yCord + 1][xCord - 1] != FINISH && grid.currentGrid[yCord + 1][xCord - 1] != HOLE && posX - (size / 2) < xCord * 35 + 2 && posY > walls[yCord + 1][xCord - 1].y - size / 2 + 1) {
        wallLeft = true; 
        posX = xCord * 35 + size / 2;
      }

      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }


    if (keys['d'] == true) {
      //checks if the blocks to the right are not things you can go on. If so, the result is that you cant move.
      boolean wallRight = false;

      if (grid.currentGrid[yCord][xCord + 1] != PATH && grid.currentGrid[yCord][xCord + 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord][xCord + 1] != SMALL_HALLWAY_VERT && grid.currentGrid[yCord][xCord + 1] != COR_BUTTON &&
        grid.currentGrid[yCord][xCord + 1] != FINISH && grid.currentGrid[yCord][xCord + 1] != HOLE && posX + (size / 2) > xCord * 35 + 34) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord + 1] != PATH && grid.currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_VERT && grid.currentGrid[yCord - 1][xCord + 1] != COR_BUTTON &&
        grid.currentGrid[yCord - 1][xCord + 1] != FINISH && grid.currentGrid[yCord - 1][xCord + 1] != HOLE && posX + (size / 2) > xCord * 35 + 34 &&posY < walls[yCord - 1][xCord + 1].y + 35 + size / 2) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord + 1] != PATH && grid.currentGrid[yCord + 1][xCord + 1] != COR_BUTTON && grid.currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord + 1][xCord + 1] != FINISH && grid.currentGrid[yCord + 1][xCord + 1] != HOLE && posX + (size / 2) > xCord * 35 + 34 && posY > walls[yCord + 1][xCord + 1].y - size / 2 + 1) {
        wallRight = true; 
        posX = xCord * 35 + 35 - size / 2;
      }

      if (wallRight == false) {
        posX += dx * dt;
      }
    } 


    if (keys['w'] == true) {
      //checks if the blocks on the top are not things you can go on. If so, the result is that you cant move.
      boolean wallUp = false;

      if (grid.currentGrid[yCord - 1][xCord] != PATH && grid.currentGrid[yCord - 1][xCord] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord - 1][xCord] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord - 1][xCord] != FINISH &&  grid.currentGrid[yCord - 1][xCord] != HOLE && grid.currentGrid[yCord - 1][xCord] != COR_BUTTON && posY - (size / 2) < yCord * 35 + 2) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord - 1] != PATH && grid.currentGrid[yCord - 1][xCord - 1] != COR_BUTTON && grid.currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord - 1][xCord - 1] != SMALL_HALLWAY_VERT && 
        grid.currentGrid[yCord - 1][xCord - 1] != FINISH && grid.currentGrid[yCord - 1][xCord - 1] != HOLE && posY - (size / 2) < yCord * 35 + 2 && posX < walls[yCord - 1][xCord - 1].x + 35 + size / 2) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      } else if (grid.currentGrid[yCord - 1][xCord + 1] != PATH && grid.currentGrid[yCord - 1][xCord + 1] != COR_BUTTON && grid.currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord - 1][xCord + 1] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord - 1][xCord + 1] != FINISH && grid.currentGrid[yCord - 1][xCord + 1] != HOLE && posY - (size / 2) < yCord * 35 + 2 && posX > walls[yCord - 1][xCord + 1].x - size / 2 + 1) {
        wallUp = true; 
        posY = yCord * 35 + size / 2;
      }


      if (wallUp == false) {
        posY -= dy * dt;
      }
    } 


    if (keys['s'] == true) {
      //checks if the blocks on the bottom are not things you can go on. If so, the result is that you cant move.
      boolean wallDown = false;

      if (grid.currentGrid[yCord + 1][xCord] != PATH && grid.currentGrid[yCord + 1][xCord] != COR_BUTTON && grid.currentGrid[yCord + 1][xCord] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord + 1][xCord] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord + 1][xCord] != FINISH &&grid.currentGrid[yCord + 1][xCord] != HOLE && posY + (size / 2) > yCord * 35 + 34) {
        wallDown = true; 
        posY = yCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord - 1] != PATH && grid.currentGrid[yCord + 1][xCord - 1] != COR_BUTTON && grid.currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord + 1][xCord - 1] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord + 1][xCord - 1] != FINISH && grid.currentGrid[yCord + 1][xCord - 1] != HOLE && posY + (size / 2) > yCord * 35 + 34 && posX < walls[yCord + 1][xCord - 1].x + 35 + size / 2) {
        wallDown = true; 
        posY = yCord * 35 + 35 - size / 2;
      } else if (grid.currentGrid[yCord + 1][xCord + 1] != PATH && grid.currentGrid[yCord + 1][xCord + 1] != COR_BUTTON && grid.currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_HORIZ && grid.currentGrid[yCord + 1][xCord + 1] != SMALL_HALLWAY_VERT &&
        grid.currentGrid[yCord + 1][xCord + 1] != FINISH && grid.currentGrid[yCord + 1][xCord + 1] != HOLE && posY + (size / 2) > yCord * 35 + 34 && posX > walls[yCord + 1][xCord + 1].x - size / 2 + 1) {
        wallDown = true; 
        posY = yCord * 35 +  35 - size / 2;
      }

      if (wallDown == false) {
        posY += dy * dt;
      }
    }
    checkFinish();
  }

  void checkFinish() {
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

    if (char2fin && char1fin || keys['p']) {
      char1fin = false;
      char2fin = false;
      screen = 1;
      timer.stop();
      keys['f'] = false;
      char2.posX = startX2;
      char2.posY = startY2;
      char1.posX = startX1;
      char1.posY = startY1;
      grid.currentGrid[maze.iStart1][maze.jStart1] = START1;
      grid.currentGrid[maze.iStart2][maze.jStart2] = START2;
    }
  }

  void changeCharacter() {
    
    if (char12 == true && charChange <= 0) {
      char12 = false;
      charChanged = true;
      charChange = 40;
      
    } else if (char12 == false && charChange <= 0) {
      char12 = true;
      charChanged = true;
      charChange = 40;
    }
  }
  
  void charChangedAnimation(){
    if(char12 && charChange > 20){
      char1.extraSize += growth;
      charChange--;
    }else if(char12 && charChange > 0){
      char1.extraSize -= growth;
      charChange--;
    }
    
    if(!char12 && charChange > 20){
      char2.extraSize += growth;
      charChange--;
    }else if(!char12 && charChange > 0){
      char2.extraSize -= growth;
      charChange--;
    }
  }
}

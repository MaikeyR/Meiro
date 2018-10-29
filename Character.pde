class Characters {
  int xCord, yCord;
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;



  Characters() {

    posX = 63;
    posY = 63;
    sizeX = 25;
    sizeY = 25;
    dx = 100;
    dy = 100;
  }

  void draw() {

    fill(50, 100, 205);
    ellipse(posX, posY, sizeX, sizeY);
  }

  void update(double dt) {
    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);
    println(xCord * 35);
    println(posX - (sizeX / 2));
    println(yCord);
    
    if (keys['a'] == true) {
      boolean wallLeft = false;

      if (grid[yCord][xCord - 1] != 'b' && grid[yCord][xCord - 1] != 'v' && grid[yCord][xCord - 1] != 's' && grid[yCord][xCord - 1] != 'h' && posX - (sizeX / 2) < xCord * 35 + 2) {
        wallLeft = true;
      } else if (grid[yCord - 1][xCord - 1] != 'b' && grid[yCord - 1][xCord - 1] != 'v' && grid[yCord - 1][xCord - 1] != 's' && grid[yCord - 1][xCord - 1] != 'h' && posX - (sizeX / 2) < xCord * 35 + 2 &&
        posY < walls[yCord - 1][xCord - 1].y + 35 + sizeY / 2) {
        wallLeft = true;
      } else if (grid[yCord + 1][xCord - 1] != 'b' && grid[yCord + 1][xCord - 1] != 'v' && grid[yCord + 1][xCord - 1] != 's' && grid[yCord + 1][xCord - 1] != 'h' && posX - (sizeX / 2) < xCord * 35 + 2 &&
        posY > walls[yCord + 1][xCord - 1].y - sizeY / 2 + 1) {
        wallLeft = true;
      }

      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }

    if (keys['d'] == true) {
      boolean wallRight = false;

      if (grid[yCord][xCord + 1] != 'b' && grid[yCord][xCord + 1] != 'v' && grid[yCord][xCord + 1] != 's' && grid[yCord][xCord + 1] != 'h' && posX + (sizeX / 2) > xCord * 35 + 34) {
        wallRight = true;
        println(1);
      } else if (grid[yCord - 1][xCord + 1] != 'b' && grid[yCord - 1][xCord + 1] != 'v' && grid[yCord - 1][xCord + 1] != 's' && grid[yCord - 1][xCord + 1] != 'h' && posX + (sizeX / 2) > xCord * 35 + 34 &&
        posY < walls[yCord - 1][xCord + 1].y + 35 + sizeY / 2) {
        wallRight = true;
        println(2);
      } else if (grid[yCord + 1][xCord + 1] != 'b' && grid[yCord + 1][xCord + 1] != 'v' && grid[yCord + 1][xCord + 1] != 's' && grid[yCord + 1][xCord + 1] != 'h' && posX + (sizeX / 2) > xCord * 35 + 34 &&
        posY > walls[yCord + 1][xCord + 1].y - sizeY / 2 + 1) {
        wallRight = true;
        println(3);
      }

      if (wallRight == false) {
        posX += dx * dt;
      }
    } 

    if (keys['w'] == true) {
      boolean wallUp = false;

      if (grid[yCord - 1][xCord] != 'b' && grid[yCord - 1][xCord] != 'v' &&  grid[yCord - 1][xCord] != 's' && grid[yCord - 1][xCord] != 'h' && posY - (sizeY / 2) < yCord * 35 + 2) {
        wallUp = true;
        println(1);
      } else if (grid[yCord - 1][xCord - 1] != 'b' && grid[yCord - 1][xCord - 1] != 'v' && grid[yCord - 1][xCord - 1] != 's' && grid[yCord - 1][xCord - 1] != 'h' && posY - (sizeY / 2) < yCord * 35 + 2 &&
        posX < walls[yCord - 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      } else if (grid[yCord - 1][xCord + 1] != 'b' && grid[yCord - 1][xCord + 1] != 'v' && grid[yCord - 1][xCord + 1] != 's' && grid[yCord - 1][xCord + 1] != 'h' &&  posY - (sizeY / 2) < yCord * 35 + 2 &&
        posX > walls[yCord - 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true;
        println(3);
      }

      if (wallUp == false) {
        posY -= dy * dt;
      }
    } 

    if (keys['s'] == true) {
      boolean wallUp = false;

      if (grid[yCord + 1][xCord] != 'b' && grid[yCord + 1][xCord] != 'v' && grid[yCord + 1][xCord] != 's' && grid[yCord + 1][xCord] != 'h' && posY + (sizeY / 2) > yCord * 35 + 34) {
        wallUp = true;
        println(1);
      } else if (grid[yCord + 1][xCord - 1] != 'b' && grid[yCord + 1][xCord - 1] != 'v' && grid[yCord + 1][xCord - 1] != 's' && grid[yCord + 1][xCord - 1] != 'h' && posY + (sizeY / 2) > yCord * 35 + 34 &&
        posX < walls[yCord + 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      } else if (grid[yCord + 1][xCord + 1] != 'b' && grid[yCord + 1][xCord + 1] != 'v' && grid[yCord + 1][xCord + 1] != 's' && grid[yCord + 1][xCord + 1] != 'h' && posY + (sizeY / 2) > yCord * 35 + 34 &&
        posX > walls[yCord + 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true;
        println(3);
      }

      if (wallUp == false) {
        posY += dy * dt;
      }
    }   
    //Checkt of characters op finish zijn
    if (char1.posX > finX && char1.posX < (finX + 35) && char1.posY > finY && char1.posY < (finY + 35)) {
      char1fin = true;
    }
    if (char2.posX > finX && char2.posX < (finX + 35) && char2.posY > finY && char2.posY < (finY + 35)) {
      char2fin = true;
    }
    if (char2fin && char1fin || keys['f']) {
      Screen = 3;
      timer.stop();
    }
  }
}

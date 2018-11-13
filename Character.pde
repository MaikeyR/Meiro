class Characters {
  int xCord, yCord;
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;
  
  
  
  Characters() {
    
    posX = 0;
    posY = 0;
    sizeX = 24;
    sizeY = 24;
    dx = 100;
    dy = 100;
    
  }
  
  void draw() {
    
    fill(50, 100, 205);
    ellipse(posX, posY, sizeX, sizeY);
    
  }
  
  void update2(double dt) {
    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);
    println(xCord * 35);
    println(posX - (sizeX / 2));
    println(yCord);
    
    if (keys['a'] == true) {
      boolean wallLeft = false;
      

      if (currentGrid[yCord][xCord - 1] != 'b' && currentGrid[yCord][xCord - 1] != 's' && currentGrid[yCord][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12) {
        wallLeft = true;
      }
      
      else if (currentGrid[yCord - 1][xCord - 1] != 'b' && currentGrid[yCord - 1][xCord - 1] != 's' && currentGrid[yCord - 1][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12 &&

      posY < walls[yCord - 1][xCord - 1].y + 35 + sizeY / 2) {
        wallLeft = true;
      }
      

      else if (currentGrid[yCord + 1][xCord - 1] != 'b' && currentGrid[yCord + 1][xCord - 1] != 's' && currentGrid[yCord + 1][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12 &&
      posY > walls[yCord + 1][xCord - 1].y - sizeY / 2 + 1) {
        wallLeft = true;
      }
      
      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }
    
    if (keys['d'] == true) {
      boolean wallRight = false;
      

      if (currentGrid[yCord][xCord + 1] != 'b' && currentGrid[yCord][xCord + 1] != 's' && currentGrid[yCord][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44) {
        wallRight = true;
        println(1);
      }
      
      else if (currentGrid[yCord - 1][xCord + 1] != 'b' && currentGrid[yCord - 1][xCord + 1] != 's' && currentGrid[yCord - 1][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44 &&
      posY < walls[yCord - 1][xCord + 1].y + 35 + sizeY / 2) {
        wallRight = true;
        println(2);
      }
      
      else if (currentGrid[yCord + 1][xCord + 1] != 'b' && currentGrid[yCord + 1][xCord + 1] != 's' && currentGrid[yCord + 1][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44 &&
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

      if (currentGrid[yCord - 1][xCord] != 'b' && currentGrid[yCord - 1][xCord] != 's' && currentGrid[yCord - 1][xCord] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12) {
        wallUp = true;
        println(1);
      }

      else if (currentGrid[yCord - 1][xCord - 1] != 'b' && currentGrid[yCord - 1][xCord - 1] != 's' && currentGrid[yCord - 1][xCord - 1] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12 &&
      posX < walls[yCord - 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      }
      
      else if (currentGrid[yCord - 1][xCord + 1] != 'b' && currentGrid[yCord - 1][xCord + 1] != 's' && currentGrid[yCord - 1][xCord + 1] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12 &&
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
      
      if (currentGrid[yCord + 1][xCord] != 'b' && currentGrid[yCord + 1][xCord] != 's' && currentGrid[yCord + 1][xCord] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44) {
        wallUp = true;
        println(1);
      }
      
      else if (currentGrid[yCord + 1][xCord - 1] != 'b' && currentGrid[yCord + 1][xCord - 1] != 's' && currentGrid[yCord + 1][xCord - 1] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44 &&
      posX < walls[yCord + 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      }
      
      else if (currentGrid[yCord + 1][xCord + 1] != 'b' && currentGrid[yCord + 1][xCord + 1] != 's' && currentGrid[yCord + 1][xCord + 1] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44 &&
      posX > walls[yCord + 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true;
        println(3);
      }
      
      if (wallUp == false) {
          posY += dy * dt;
      }

    }
    

    //Checkt of characters op finish zijn
    if(char1.posX > finX && char1.posX < (finX + 35) && char1.posY > finY && char1.posY < (finY + 35)){
      char1fin = true;
    }
    
    if(char2.posX > finX && char2.posX < (finX + 35) && char2.posY > finY && char2.posY < (finY + 35)){
      char2fin = true;
    }
    
    if(char2fin && char1fin || keys['f']){
      if (mazecount < 10) {
        mazecount++;
        char1fin = false;
        char2fin = false;
        changeGrid();
      }
      else {
        Screen = 3;
        timer.stop();
      }
      keys['f'] = false;
    }
  }
  
  
  
  
  
  
  void update1(double dt) {
    xCord = (int) (posX / 35);
    yCord = (int) (posY / 35);
    println(xCord * 35);
    println(posX - (sizeX / 2));
    println(yCord);
    
    if (keys['a'] == true) {
      boolean wallLeft = false;
      
      if (currentGrid[yCord][xCord - 1] != 'b' && currentGrid[yCord][xCord - 1] != 'd' && currentGrid[yCord][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12) {
        wallLeft = true;
      }
      
      else if (currentGrid[yCord - 1][xCord - 1] != 'b' && currentGrid[yCord - 1][xCord - 1] != 'd' && currentGrid[yCord - 1][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12 &&
      posY < walls[yCord - 1][xCord - 1].y + 35 + sizeY / 2) {
        wallLeft = true;
      }
      
      else if (currentGrid[yCord + 1][xCord - 1] != 'b' && currentGrid[yCord + 1][xCord - 1] != 'd' && currentGrid[yCord + 1][xCord - 1] != 'f' && posX - (sizeX / 2) < xCord * 35 + 12 &&
      posY > walls[yCord + 1][xCord - 1].y - sizeY / 2 + 1) {
        wallLeft = true;
      }
      
      if (wallLeft == false) {
        posX -= dx * dt;
      }
    }
    
    if (keys['d'] == true) {
      boolean wallRight = false;
      
      if (currentGrid[yCord][xCord + 1] != 'b' && currentGrid[yCord][xCord + 1] != 'd' && currentGrid[yCord][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44) {
        wallRight = true;
        println(1);
      }
      
      else if (currentGrid[yCord - 1][xCord + 1] != 'b' && currentGrid[yCord - 1][xCord + 1] != 'd' && currentGrid[yCord - 1][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44 &&
      posY < walls[yCord - 1][xCord + 1].y + 35 + sizeY / 2) {
        wallRight = true;
        println(2);
      }
      
      else if (currentGrid[yCord + 1][xCord + 1] != 'b' && currentGrid[yCord + 1][xCord + 1] != 'd' && currentGrid[yCord + 1][xCord + 1] != 'f' && posX + (sizeX / 2) > xCord * 35 + 44 &&
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
      
      if (currentGrid[yCord - 1][xCord] != 'b' && currentGrid[yCord - 1][xCord] != 'd' && currentGrid[yCord - 1][xCord] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12) {
        wallUp = true;
        println(1);
      }
      
      else if (currentGrid[yCord - 1][xCord - 1] != 'b' && currentGrid[yCord - 1][xCord - 1] != 'd' && currentGrid[yCord - 1][xCord - 1] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12 &&
      posX < walls[yCord - 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      }
      
      else if (currentGrid[yCord - 1][xCord + 1] != 'b' && currentGrid[yCord - 1][xCord + 1] != 'd' && currentGrid[yCord - 1][xCord + 1] != 'f' && posY - (sizeY / 2) < yCord * 35 + 12 &&
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
      
      if (currentGrid[yCord + 1][xCord] != 'b' && currentGrid[yCord + 1][xCord] != 'd' && currentGrid[yCord + 1][xCord] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44) {
        wallUp = true;
        println(1);
      }
      
      else if (currentGrid[yCord + 1][xCord - 1] != 'b' && currentGrid[yCord + 1][xCord - 1] != 'd' && currentGrid[yCord + 1][xCord - 1] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44 &&
        posX < walls[yCord + 1][xCord - 1].x + 35 + sizeX / 2) {
        wallUp = true;
        println(2);
      }
      
      else if (currentGrid[yCord + 1][xCord + 1] != 'b' && currentGrid[yCord + 1][xCord + 1] != 'd' && currentGrid[yCord + 1][xCord + 1] != 'f' && posY + (sizeY / 2) > yCord * 35 + 44 &&
        posX > walls[yCord + 1][xCord + 1].x - sizeX / 2 + 1) {
        wallUp = true;
        println(3);
      }
      
      if (wallUp == false) {
          posY += dy * dt;
      }

    }

    //Checkt of characters op finish zijn
    if (char1.posX > finX && char1.posX < (finX + 35) && char1.posY > finY && char1.posY < (finY + 35)){
      char1fin = true;
    }
    if (char2.posX > finX && char2.posX < (finX + 35) && char2.posY > finY && char2.posY < (finY + 35)){
      char2fin = true;
    }
    if(char2fin && char1fin || keys['f']){
      
      if (mazecount < 10) {
        mazecount++;
        char1fin = false;
        char2fin = false;
        changeGrid();
      }
      else {
        Screen = 3;
        timer.stop();
      }
      keys['f'] = false;
    }
  }
  
}

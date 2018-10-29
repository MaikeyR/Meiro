class Maze {
  int xCord1, yCord1, xCord2, yCord2;
  int X = 10;
  int Y = 10;
  
  
  void gridSetup() {
    
    for (int i = 0 ; i < 20 ; i++) {
      
      for (int u = 0 ; u < 30 ; u++) {
        
        walls[i][u] = new Wall();
        
      }      
    }    
  }
  
  void charCollisionCheck() {
    
    xCord1 = (int) (char1.posX / 35);
    yCord1 = (int) (char1.posY / 35);
    xCord2 = (int) (char2.posX / 35);
    yCord2 = (int) (char2.posY / 35);
    println(xCord1);
    println(yCord1);
    
    if (grid[yCord1][xCord1 + 1] == 'a' && (char1.posX + (char1.sizeX / 2)) > xCord1 * 35 + 33) {
      
      keys['d'] = false;
      
    }
    else
    keys['d'] = true;
    
    if (grid[yCord1][xCord1 - 1] == 'a' && char1.posX - (char1.sizeX / 2) < (xCord1) * 35 + 1) {
      
      char1.posX = char1.posX - (char1.posX % 35)  + (char1.sizeX/2);
      keys['a'] = false;
      
    }
    
    if (grid[yCord1 + 1][xCord1] == 'a' && (char1.posY + (char1.sizeY / 2)) > yCord1 * 35 + 34) {
      
      char1.posY = char1.posY - (char1.posY % 35) + 35 - (char1.sizeY/2);
      keys['s'] = false;
      
    }
    
    if (grid[yCord1 - 1][xCord1] == 'a' && char1.posY - (char1.sizeY / 2) < (yCord1) * 35 + 1) {
      
      char1.posY = char1.posY - (char1.posY % 35)  + (char1.sizeY/2);
      keys['w'] = false;
      
    }
  }

  void wallDraw() {
    
    for (int i = 0 ; i < 20 ; i++) {
      
      for (int j = 0 ; j < 30 ; j++) {

        if (grid[i][j]=='a') {
          fill(204, 102, 0);
          walls[i][j].y = Y;
          walls[i][j].x = X;
          walls[i][j].draw();
        } else if (grid[i][j]=='b'||grid[i][j]=='v') {
          fill(153);
          rect(X, Y, 35, 35);
        } 
        else if (grid[i][j]=='s') {
          walls[i][j].y = Y;
          walls[i][j].x = X-15;
          walls[i][j].draw();
        } 
        else if (grid[i][j]=='h') {
          walls[i][j].y = Y-20;
          walls[i][j].x = X;
          walls[i][j + 1].draw();
        }        
      } 
        X += 35;

      }
      Y += 35;
      X = 10; 
  }    
}

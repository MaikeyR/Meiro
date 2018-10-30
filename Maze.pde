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
  void wallDraw() {
    
    for (int i = 0 ; i < 20 ; i++) {
      for (int j = 0 ; j < 30 ; j++) {
        X = j * 35;
        Y = i * 35;
        
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
        else if (grid[i][j] == 'w'){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        if (grid[i][j] == 'v'){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        if(grid[i][j] == 'f'){
          finX = X;
          finY =Y;
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 255);
          walls[i][j].draw();
        }
        
        if(i > 0 && j > 0 && i <= 20 && j <= 30 && grid[i][j] == 'w' && keys['q'] && grid[i][j - 1] == 'v'){
          if((char1.posX > X - 35 && char1.posX < X + 70 && char1.posY > Y - 35 && char1.posY < Y + 70) ||
          (char2.posX > X - 35 && char2.posX < X + 70 && char2.posY > Y - 35 && char2.posY < Y + 70)){
           grid[i][j + 1] = 'v';
           grid[i][j - 1] = 'b';
           keys[key] = false;
          }
        }
        else if(i > 0 && j > 0 && i <= 20 && j <= 30 && grid[i][j] == 'w' && keys['q'] && grid[i][j + 1] == 'v'){
          if((char1.posX > X - 35 && char1.posX < X + 70 && char1.posY > Y - 35 && char1.posY < Y + 70) ||
          (char2.posX > X - 35 && char2.posX < X + 70 && char2.posY > Y - 35 && char2.posY < Y + 70)){
           grid[i][j - 1] = 'v';
           grid[i][j + 1] = 'b';
           keys[key] = false;
          }
        }
      } 
    } 
  }    
}

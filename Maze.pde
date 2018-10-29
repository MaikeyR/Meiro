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
        
        X = 35 * j;
        Y = 35 * i;
        
        if (grid[i][j] == 'a') {
          
          walls[i][j].x = X;
          walls[i][j].y = Y;
          fill(200, 50, 50);
          walls[i][j].draw();
          
        } else {          
          fill(50, 50, 200);
          rect(X, Y, 35, 35);          
        }        
      }      
    }    
  }    
}

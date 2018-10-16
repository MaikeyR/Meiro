class Maze {
  char []grid = new char[] {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'f', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'};
  char wall;
  int X = 10;
  int Y = 10;
  
  
  void gridSetup() {
    
    for (int i = 0 ; i < grid.length ; i++) {//oof
      
      walls[i] = new Wall();
      
    }
    
  }
  
  //void gridGen() {
  //  for (int i = 0; i < grid.length; i++) {
  //    int d = (int)random(2);
  //    if (d<1) {
  //      wall = 'a';
  //    } else if (d>=1) {
  //      wall = 'b';
  //    }
  //    grid[i] = wall;
  //  }
  //}

  void wallDraw() {
    grd = 0;
    Y = 10;
    
    for (int i=0; i<20; i++) {
      
      for (int j=0; j<30; j++) {
        //println(grd);
        
        if (grid[grd]=='a') {
          
          fill(204, 102, 0);
          walls[grd].y = Y;
          walls[grd].x = X;
          walls[grd].draw();
          
        } else if (grid[grd]=='b') {
          fill(153);
          rect(X, Y, 35, 35);
        }else if(grid[grd] == 'f'){
          fill(0, 0, 255);
          rect(X, Y, 35, 35);
          finX = X;
          finY = Y;
        }
        
       X += 35;
        
        if (grd<599) {
          grd ++;
        }
      }
      Y += 35;
      X = 10;
    }
    
  }
    
}

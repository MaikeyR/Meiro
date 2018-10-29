class Maze {
  char grid [][] = new char[][] {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  char wall;
  char movingwalls;
  int X = 10;
  int Y = 10;


  void gridSetup() {
    for (int i = 0; i < grid.length; i++) {//oof
      walls[i] = new Wall();
      asset1[i] = new movingWall();
      //asset2[i] = new smalleGang();
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
        else if (grid[i][j]=='w') {
          fill(250, 0, 0);
          asset1[i][j].y = Y;
          asset1[i][j].x = X;
          asset1[i][j].draw();
        }

        X += 35;

      }
      Y += 35;
      X = 10;
    }
  }
}

class Maze {
  int xCord1, yCord1, xCord2, yCord2;
  int X = 10;
  int Y = 10;


  void gridSetup() {

    for (int i = 0; i < 20; i++) {

      for (int u = 0; u < 30; u++) {

        walls[i][u] = new Wall();
      }
    }
  }
  
  void wallDraw() {

    for (int i = 0; i < 20; i++) {
      for (int j = 0; j < 30; j++) {
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
        } else if (grid[i][j]=='s') {
          fill(153);
          rect(X, Y, 35, 35);
          fill(204, 102, 0);
          walls[i][j].y = Y;
          walls[i][j].x = X-15;
          walls[i][j].draw();
        } else if (grid[i][j]=='h') {
          fill(153);
          rect(X, Y, 35, 35);
          fill(204, 102, 0);
          walls[i][j].y = Y-15;
          walls[i][j].x = X;
          walls[i][j].draw();
        }
      }
    }
  }
}

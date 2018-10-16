class Assets{
int wallPosX;
int wallPosY;
int n;
  void MovingWalls(){
    int [] WallPosX = new int[n];
    int [] WallPosY = new int[n];
    for(int i = 0; i<n; i++){
    if (keyPressed) {
        if (key == 'b'&&sqrt(sq(wallPosX[i]-char1.posX)+sq(wallPosY[i]-char2.posY))<(70+17)) {
          if (WallPosX[i] == 200) {
            WallPosX[i] += 30;
          } else if (WallPosX[i] == 230) {
            WallPosX[i] -= 30;
          }
        }
        //posY
      }
  }
  }

}

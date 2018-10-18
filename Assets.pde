class Assets {

  void movingWalls() {

    for (int i = 0; i<n; i++) {
      if (keyPressed) {
        if (char12 && keys['b'] && (sqrt(sq(wallPosX[i] +35  - char1.posX) + sq(wallPosY[i] - char1.posY)) < (70+17))) {
          if (wallPos[i] == false) {
            wallPosX[i] += 35;
            wallPos[i] = true;
          } else if (wallPos[0] == true) {
            wallPosX[i] -= 35;
            wallPos[i] = false;
          }
          keys['b'] = false;
        }
        else if (keys['b'] && (sqrt(sq(wallPosX[i] +35  - char2.posX) + sq(wallPosY[i] - char2.posY)) < (70+17))) {
          if (wallPos[i] == false) {
            wallPosX[i] += 35;
            wallPos[i] = true;
          } else if (wallPos[0] == true) {
            wallPosX[i] -= 35;
            wallPos[i] = false;
          }
          keys['b'] = false;
        }
      }
    }
    for (int i = 0; i<n; i++) {
      fill(250,0,0);
      rect(wallPosX[i], wallPosY[i], 70, 35);
    }
  }
}

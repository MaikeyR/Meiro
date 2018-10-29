class movingWall {
  float x, y, size;

  movingWall() {
    x = 10;
    y = 10;
    size = 35;
  }

  void draw() {
    rect(x, y, size, size);
  }
  void checkMove() {
    //  if (keyPressed) {
    //      //if (char12 && keys['b'] && Characters.checkCollision() == true) {
    //       println("collision");


    //        keys['b'] = false;
    //      }
    //  }
    //}

    //  posX + (sizeX / 2) > aMovingWall.x 

    //  boolean collidesWithCharacter(movingWall aMovingWall) {

    //    if ((posX + (sizeX / 2) > aMovingWall.x - dx * dt) && (posX - (sizeX / 2) < aMovingWall.x + aMovingWall.size + dx * dt) &&
    //      (posY + (sizeY / 2) > aMovingWall.y - dy * dt) && (posY - (sizeY / 2) < aMovingWall.y + aMovingWall.size + dy * dt)) {
    //      return true;
    //    }
    //    else
    //      return false;
    //}
  }
}

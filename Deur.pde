class Deur {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  int DeurPosX;
  int DeurPosY;

  Deur() {
    DeurPosX = 200;
    DeurPosY = 200;
}
  void draw() {
    rect(DeurPosX, DeurPosY, 35, 35);

    System.out.println(sqrt(sq(DeurPosX-posX)+sq(DeurPosY-posY)));
    //while (&&(sqrt(sq(WallPosX+xPos)+sq(WallPosY+yPos))<70)bb) {
      //array muur x en y
      //loop x aantal muur
      if (keyPressed) {
        if (key == 'b'&&sqrt(sq(DeurPosX-posX)+sq(DeurPosY-posY))<(70+17)) {
          if (DeurPosX == 200) {
            DeurPosX += 30;
          } else if (DeurPosX == 230) {
            DeurPosX -= 30;
          }
          delay(300);
        }
        //posY
      }
    }
  }

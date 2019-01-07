class Wall {

  float x, y, size;

  Wall() {

    x = 10;
    y = 10;
    size = 35;
  }

  void draw() {
    image(wall, x+screenShakeX, y+screenShakeY, 35, 35);
  }
}

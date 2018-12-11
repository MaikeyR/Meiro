class Wall {

  float x, y, size;

  Wall() {

    x = 10;
    y = 10;
    size = 35;
  }

  void draw() {
    image(Wall, x, y, 35, 35);
  }
}

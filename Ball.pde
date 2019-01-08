class Ball {

  float x, y, size, movePerSecond;
  PVector direction;

  Ball(float x, float y, float size, float movePerSecond, PVector direction) {

    this.x = x;
    this.y = y;
    this.size = size;
    this.movePerSecond = movePerSecond;
    this.direction = direction;
  }

  void move(PVector direction) {

    x += direction.x;
    y += direction.y;
  }
  
  void move() {
    
    x += direction.x;
    y += direction.y;
  }

  void draw() {

    splat.rewind();
    splat.play();
    ellipse(x, y, size, size);
  }
}

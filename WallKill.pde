class WallKill {

  Ball balls[];
  float x, y;
  boolean character1;
  int r, g, b;
  float stopAtSpeed = 0.1;

  WallKill(int amountOfBalls) {

    character1 = false;
    balls = new Ball[amountOfBalls];
    for (int i = 0; i < balls.length; i++) {

      PVector randomVector = new PVector(random(-100, 100), random(-100, 100));
      randomVector.normalize();
      balls[i] = new Ball(0, 0, random(10, 25), random(25, 50), randomVector);
    }
    balls[0].movePerSecond = -0.1;
  }

  void kill(float x, float y, boolean character1) {
    if (character1) {

      r = 255;
      g = 0;
      b = 0;
    } else {

      r = 0; 
      g = 0; 
      b = 255;
    }

    //calculeert waar de balletjes zijn bij de dood gaan animatie
    if (balls[0].movePerSecond <= stopAtSpeed) {

      for (Ball ball : balls) {

        PVector randomVector = new PVector(random(-100, 100), random(-100, 100));
        randomVector.normalize();
        ball.x = x;
        ball.y = y;
        ball.size = random(10, 25);
        ball.movePerSecond = random(10, 20);
        ball.direction.x = randomVector.x;
        ball.direction.y = randomVector.y;
      }
      balls[0].movePerSecond = 35;
    }
  }

  void update() {

    for (Ball ball : balls) {

      PVector moveBy = new PVector(ball.direction.x * ball.movePerSecond, ball.direction.y * ball.movePerSecond);
      ball.move(moveBy);
      ball.movePerSecond *= 0.75;
      ball.size *= 0.9;
    }
  }

  void render() {

    for (Ball ball : balls) {

      fill(r, g, b);
      ball.draw();
    }
  }

  void draw() {

    if (balls[0].movePerSecond > stopAtSpeed) {

      update();
      render();
    }
  }
}

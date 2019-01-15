class WallKill {

  Ball balls[];
  float x, y;
  boolean character1;
  int r, g, b;
  float stopAtSpeed = 0.1;

  //De animatie wordt geinitialiseerd met het aantal particles
  WallKill(int amountOfBalls) {

    character1 = false;
    balls = new Ball[amountOfBalls];

    //Iedere bal wordt een willekeurige richting, grootte en snelheid gegeven (binnen een bepaalde limiet)
    for (int i = 0; i < balls.length; i++) {

      PVector randomVector = new PVector(random(-100, 100), random(-100, 100));
      randomVector.normalize();
      balls[i] = new Ball(0, 0, random(10, 25), random(25, 50), randomVector);
    }

    //Een bal wordt een specifieke snelheid gegeven
    balls[0].movePerSecond = -0.1;
  }

  //De animatie wordt op een specifieke plek aangeroepen en er wordt ook doorgegeven wie er dood is gegaan zodat de goede kleur particles wordt weergegeven
  void kill(float x, float y, boolean character1) {

    //Het geluid van doodgaan wordt afgespeeld
    splat.rewind();
    splat.play();

    //De particles worden de juiste kleur gegeven 
    if (character1) {

      r = 255;
      g = 0;
      b = 0;
    } else {

      r = 0; 
      g = 0; 
      b = 255;
    }

    //Geeft alle ballen weer een willekeurige snelheid, richting en grootte. Ook zet dit alle ballen op de plek waar de speler is doodgegaan 
    //(dit gebeurt wanneer er een specifieke bal een lagere snelheid heeft dan een bepaalde threshold zodat er niet twee animaties tegelijk zijn)
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

  //Beweegt alle particles iedere frame en verlaagt de snelheid en grootte met een bepaald percentage
  void update() {

    for (Ball ball : balls) {

      PVector moveBy = new PVector(ball.direction.x * ball.movePerSecond, ball.direction.y * ball.movePerSecond);
      ball.move(moveBy);
      ball.movePerSecond *= 0.75;
      ball.size *= 0.9;
    }
  }


  //Tekent alle particles met de juiste kleur
  void render() {

    for (Ball ball : balls) {

      fill(r, g, b);
      ball.draw();
    }
  }

  void draw() {

    //Roept update en render op zolang er een specifieke bal sneller is dan een bepaalde snelheid
    //(Deze bal is altijd na hetzelfde aantal frames lager dan die snelheid omdat dat de enige snelheid is die niet willekeurig is)
    if (balls[0].movePerSecond > stopAtSpeed) {

      update();
      render();
    }
  }
}

//Een particle die bij WallKill wordt opgeroepen voor een animatie
class Ball {

  float x, y, size, movePerSecond;
  PVector direction;

  //Ballen worden geinitialiseerd met een locatie, grootte, snelheid en een richting
  Ball(float x, float y, float size, float movePerSecond, PVector direction) {

    this.x = x;
    this.y = y;
    this.size = size;
    this.movePerSecond = movePerSecond;
    this.direction = direction;
  }

  //Een functie die de bal in de richting van een opgegeven vector beweegt
  void move(PVector direction) {

    x += direction.x;
    y += direction.y;
  }

  //Een functie die de bal in de richting van zijn eigen vector beweegt
  void move() {

    x += direction.x;
    y += direction.y;
  }

  //tekent de bal
  void draw() {

    ellipse(x, y, size, size);
  }
}

int xPos;
int yPos;
int WallPosX;
int WallPosY;

void setup() {
  size(400, 400);
  WallPosX = 200;
  WallPosY = 200;
}
void draw() {
  clear();
  background(125, 125, 125);
  ellipse(xPos, yPos, 25, 25);
  rect(WallPosX, WallPosY, 35, 35);


  if (keyPressed == true) {

    if (keyCode == LEFT || key == 'a') {
      xPos += -5;
    } else if (keyCode == RIGHT || key == 'd') {
      xPos += 5;
    } else if (keyCode == UP || key == 'w') {
      yPos += -5;
    }

    if (keyCode == DOWN || key == 's') {
      yPos += 5;
    }
    System.out.println(sqrt(sq(WallPosX-xPos)+sq(WallPosY-yPos)));
    //while (&&(sqrt(sq(WallPosX+xPos)+sq(WallPosY+yPos))<70)bb) {
      //array muur x en y
      //loop x aantal muur
      if (keyPressed) {
        if (key == 'b'&&sqrt(sq(WallPosX[i]-xPos)+sq(WallPosY[i]-yPos))<(70+17)) {
          if (WallPosX[i] == 200) {
            WallPosX[i] += 30;
          } else if (WallPosX[i] == 230) {
            WallPosX[i] -= 30;
          }
          delay(300);
        }
        //posY
      }
    }
  }

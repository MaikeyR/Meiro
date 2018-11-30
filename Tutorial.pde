class Tutorial {

  float posX;
  float posY;
  float sizeX;
  float sizeY;
  int pattern;
  int pattern2;
  double patternTime;
  double patternStop;
  float moveSelect;

  void tStart() {
    posX = 190;
    posY = 190;
    pattern = 5;
    pattern2 = 0;
    patternTime = 0;
    patternStop = 0;
    dt = 0;
  }

  void render() {
    lastUpdateTime = currentTime;
    patternTime = millis();
    if (patternTime - patternStop > 750) {
      patternStop = patternTime;
      pattern++;
      pattern2++;
      if (pattern == 7) {
        pattern = 0;
      }
    } 

    switch (pattern) {
    case 0: 
      posX += (100 * dt); 
      break;
    case 1: 
      posX -= (100 * dt); 
      break;
    case 2: 
      posY += (100 * dt); 
      break;
    case 3: 
      posY -= (100 * dt); 
      break;
    case 4: 
      posY -= (100 * dt); 
      posX -= (100 * dt); 
      break;
    case 5: 
      posY += (100 * dt); 
      posX += (100 * dt); 
      break;
    case 6: 
      posX = 190; 
      posY = 190; 
      break;
    }

    if (pattern2 % 2 == 0) {
      moveSelect = 100;
    } else moveSelect = 0;

    if (keys['e']) {
      Screen = 0;
    }
    keys['e'] = false;
  }

  void draw() {
    textSize(53);
    fill(0);
    text("Tutorial", 515, 150);

    //WASD controls
    if (pattern == 3 || pattern == 4) {
      fill(100);
      rect(170, 60, 40, 40);
    } else fill (150); 
    rect(170, 60, 40, 40);

    if (pattern == 1 || pattern == 4) {
      fill(100);
      rect(60, 170, 40, 40);
    } else fill (150); 
    rect(60, 170, 40, 40);

    if (pattern == 2 || pattern == 5) {
      fill(100);
      rect(170, 280, 40, 40);
    } else fill (150); 
    rect(170, 280, 40, 40);

    if (pattern == 0 || pattern == 5) {
      fill(100);
      rect(280, 170, 40, 40);
    } else fill (150); 
    rect(280, 170, 40, 40);

    fill(50, 100, 205);
    ellipse(posX, posY, 24, 24);
    textSize(24);
    fill(0);
    text("W", 180, 90);
    text("A", 72, 200);
    text("D", 292, 200);
    text("S", 184, 310);


    //player switch
    fill(50, 100, 205);
    ellipse(150, 470, 24, 24);
    ellipse(250, 470, 10, 10);

    fill (100);
    rect(130 + moveSelect, 390, 40, 40);
    textSize(24);
    fill(0);
    text("E", 144 + moveSelect, 420);


    //moveable walls
    fill(50, 100, 205);
    ellipse(190, 657, 24, 24);

    fill(100);
    rect(134, 572, 40, 40);
    textSize(24);
    fill(0);
    text("Q", 144, 600);

    fill(100, 0, 100);
    rect(220, 603 - (moveSelect * 0.35), 35, 70);

    textSize(25);
    fill(0);
    timer.time = timer.hour() +" : "+ timer.minute() +" : "+ timer.second() +"      + 2 sec";
    text(timer.time, 280, 610);


    //players go to finish
    fill(50, 100, 205);
    ellipse(530, 310, 24, 24);
    ellipse(630, 240, 10, 10);

    fill(0);
    line(530, 330, 530, 380);
    line(530, 380, 620, 380);
    triangle(650, 380, 644, 376, 644, 384);

    line(615, 240, 590, 240);
    line(590, 240, 590, 310);
    line(590, 310, 678, 310);
    line(678, 310, 678, 352);
    triangle(678, 352, 674, 346, 682, 346);

    fill(100, 0, 255);
    rect(660, 372, 35, 35);


    //small hallway and door
    fill(204, 102, 0);
    rect(930, 230, 35, 350);

    fill(255, 0, 155);
    image(Door, 930, 300, 35, 35);

    fill(100);
    image(smallHallwayHoriz, 930, 470, 35, 35);

    fill(50, 100, 205);
    ellipse(757 + posX, 318, 24, 24);
    ellipse(757 + posX, 488, 10, 10);
  }
}

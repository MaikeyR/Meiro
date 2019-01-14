class Home {    
  int selectedX = 0;
  int selectedY = 0;
  float backgroundImages[] = {0, 1748};
  int roundedImages[] = {0, 0};
  int imageY = 0;
  float imagedx = 50;
  float farImage = 1748*2;
  float moveDistance = 0;

  String currentNameArray[];
  String currentName;

  //Draws homescreen and defines when you go to the next screen.
  void draw() {
    currentNameArray = loadStrings("Name.txt");
    currentName = currentNameArray[0] + currentNameArray[1] + currentNameArray[2];
    char currentNameChar[] = {currentName.charAt(0), currentName.charAt(1), currentName.charAt(2)};

    if (currentNameChar[0] == '?' && currentNameChar[1] == '?' && currentNameChar[2] == '?') {

      screen = 3;
    }

    if (currentNameChar[0] == '_') {
      screen = 3;
    }

    if (keys['a'] && selectedX != 0) {
      selectedX--;
    }
    if (keys['s'] && selectedY != 1) {
      selectedY++;
    }
    if (keys['w'] && selectedY != 0) {
      selectedY--;
    }
    if (keys['d'] && selectedX != 1) {
      selectedX++;
    }

    moveDistance = imagedx * (float)(dt);
    backgroundImages[0] -= moveDistance;
    backgroundImages[1] -= moveDistance;
    farImage -= moveDistance;

    for (int i = 0; i < 2; i++) {

      if (backgroundImages[i] <= -1748) {
        backgroundImages[i] = farImage;
        farImage += 1748;
      }
    }

    roundedImages[0] = round(backgroundImages[0]);
    roundedImages[1] = round(backgroundImages[1]);


    image(homeBackground, roundedImages[0], 0);
    image(homeBackground, roundedImages[1], 0);


    fill(buttonColour);

    rect(270, 300, 300, 200);
    rect(710, 300, 300, 200);
    rect(320, 50, 640, 200);
    rect(710, 550, 150, 150);
    rect(420, 550, 150, 150);




    fill(buttonSelectedColour);
    if (selectedX == 0 && selectedY == 0) { 
      rect(270, 300, 300, 200);
      fill(buttonColour);
      rect(200, 380, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 210, 408);
    } else if (selectedX == 1 && selectedY == 1) {
      rect(710, 550, 150, 150);
      fill(buttonColour);
      rect(640, 610, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 650, 638);
    } else if (selectedX == 1 && selectedY == 0) {
      rect(710, 300, 300, 200);
      fill(buttonColour);
      rect(640, 380, 40, 40);
      fill(textColour);
      text("Q", 650, 408);
    } else if (selectedX == 0 && selectedY == 1) {
      rect(420, 550, 150, 150);
      fill(buttonColour);
      rect(350, 610, 40, 40);
      fill(textColour);
      text("Q", 360, 638);
    }
    
    image(trophy, 232, 210, 400, 400);
    image(playButton, 672, 190, 400, 400);
    image(titel, 320, 50, 640, 200);
    image(settingsImage, 705, 550, 180, 180);
    textSize(24);
    textAlign(CENTER, CENTER);
    fill(textColour);
    text(currentName, 495, 625);
    textAlign(LEFT, BASELINE);

    //test if the player wants to go to the next screen.
    if (selectedX == 1 && selectedY == 0 && keys['q']) {
      screen = 5;
      mazeCount = 0;
      levelSelectedX = 0;
      levelSelectedY = 0;

      keys['q'] = false;
    } else if (selectedX == 0 && selectedY == 0 && keys['q']) {
      screen = 6;
      mazeCount = 0;
      levelSelectedX = 0;
      levelSelectedY = 0;
      keys['q'] = false;
    } else if (selectedX == 0 && selectedY == 1 && keys['q']) {
      screen = 3;
      keys['q'] = false;
    } else if (selectedX == 1 && selectedY == 1 && keys['q']) {
      screen = 4;
      keys['q'] = false;
    }
    
    fill (buttonColour); 
    rect(125, 70, 40, 40);
    rect(75, 120, 40, 40);
    rect(175, 120, 40, 40);
    rect(125, 170, 40, 40);

    textSize(24);
    fill(textColour);
    text("W", 135, 100);
    text("A", 87, 150);
    text("S", 138, 200);
    text("D", 187, 150);

    triangle(35, 140, 60, 150, 60, 130);
    triangle(250, 140, 225, 150, 225, 130);
    triangle(145, 245, 135, 220, 155, 220);
    triangle(145, 35, 135, 60, 155, 60);
  }
}

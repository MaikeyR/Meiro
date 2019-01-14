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
    image(trophy, 232, 210, 400, 400);

    rect(770, 300, 300, 200);
    image(playButton, 732, 190, 400, 400);

    rect(340, 80, 640, 200);
    image(titel, 340, 80, 640, 200); 

    rect(750, 550, 150, 150);
    image(settingsImage, 745, 550, 180, 180);

    rect(450, 550, 150, 150);
    textAlign(CENTER, CENTER);
    fill(textColour);
    text(currentName, 525, 625);
    textAlign(LEFT, BASELINE);




    fill(buttonSelectedColour);
    if (selectedX == 0 && selectedY == 0) { 
      rect(270, 300, 300, 200);
      image(trophy, 232, 210, 400, 400);
      fill(buttonColour);
      rect(210, 380, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 218, 408);
    } else if (selectedX == 1 && selectedY == 1) {
      rect(750, 550, 150, 150);
      image(settingsImage, 745, 550, 180, 180);
      fill(buttonColour);
      rect(680, 610, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 690, 638);
    } else if (selectedX == 1 && selectedY == 0) {
      rect(770, 300, 300, 200);
      image(playButton, 732, 190, 400, 400);
      fill(buttonColour);
      rect(700, 380, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 710, 408);
    } else if (selectedX == 0 && selectedY == 1) {
      rect(450, 550, 150, 150);
      fill(buttonColour);
      rect(380, 610, 40, 40);
      textSize(24);
      fill(textColour);
      textAlign(CENTER, CENTER);
      text(currentName, 525, 625);
      textAlign(LEFT, BASELINE);
      text("Q", 390, 638);
    }

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
    rect(100, 70, 40, 40);
    rect(50, 120, 40, 40);
    rect(150, 120, 40, 40);
    rect(100, 170, 40, 40);

    textSize(24);
    fill(textColour);
    text("W", 110, 100);
    text("A", 62, 150);
    text("S", 113, 200);
    text("D", 162, 150);

    triangle(10, 140, 35, 150, 35, 130);
    triangle(225, 140, 200, 150, 200, 130);
    triangle(120, 245, 110, 220, 130, 220);
    triangle(120, 35, 110, 60, 130, 60);
  }
}

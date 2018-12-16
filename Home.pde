class Home {    
  int selectedX = 0;
  int selectedY = 0;
  int imageX = 0;
  int imageY = 0;
  int imagedx = 50;
  //Draws homescreen and defines when you go to the next screen.
  void draw() {
    if (keys['a'] && selectedX != 0) {
      selectedX--;
      keys[key] = false;
    }
    if (keys['s'] && selectedY != 1) {
      selectedY++;
      keys[key] = false;
    }
    if (keys['w'] && selectedY != 0) {
      selectedY--;
      keys[key] = false;
    }
    if (keys['d'] && selectedX != 1) {
      selectedX++;
      keys[key] = false;
    }

    
    if (imageX >= -1050) {
      image(HomeBackground, imageX, imageY);
      image(HomeBackground, imageX + 1050, imageY);
      image(HomeBackground, imageX + 2100, imageY);
      imageX -= imagedx*dt;
      //println(frameRate);
    } else {
      imageX = 0;
      image(HomeBackground, imageX, imageY);
      image(HomeBackground, imageX + 1050, imageY);
      image(HomeBackground, imageX + 2100, imageY);
    }


    fill(buttonColour);

    rect(270, 300, 300, 200);
    image(Trophy, 232, 210, 400, 400);

    rect(770, 300, 300, 200);
    image(PlayButton, 732, 190, 400, 400);

    rect(340, 80, 640, 200);
    image(Titel, 340, 80, 640, 200); 

    rect(450, 550, 150, 150);
    image(Tutorial, 450, 550, 150, 150);

    rect(750, 550, 150, 150);
    image(Settings, 745, 550, 180, 180);


    fill(buttonSelectedColour);
    if (selectedX == 0 && selectedY == 0) { 
      rect(270, 300, 300, 200);
      image(Trophy, 232, 210, 400, 400);
      fill(buttonColour);
      rect(200, 380, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 210, 408);
    } else if (selectedX == 1 && selectedY == 1) {
      rect(750, 550, 150, 150);
      image(Settings, 745, 550, 180, 180);
      fill(buttonColour);
      rect(680, 610, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 690, 638);
    } else if (selectedX == 1 && selectedY == 0) {
      rect(770, 300, 300, 200);
      image(PlayButton, 732, 190, 400, 400);
      fill(buttonColour);
      rect(700, 380, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 710, 408);
    } else if (selectedX == 0 && selectedY == 1) {
      rect(450, 550, 150, 150);
      image(Tutorial, 450, 550, 150, 150);
      fill(buttonColour);
      rect(380, 610, 40, 40);
      textSize(24);
      fill(textColour);
      text("Q", 390, 638);
    }

    //test if the player wants to go to the next screen.
    if (selectedX == 1 && selectedY == 0 && keys['q']) {
      screen = 5;
      mazeCount = 0;
      changeGrid();

      keys['q'] = false;
    } else if (selectedX == 0 && selectedY == 0 && keys['q']) {
      screen = 5;
      keys['q'] = false;

      //saveStrings("highscore.txt", loadStrings("ClearScore.txt"));      //comment dit uit en ga naar de highscores in-game om alle highscores te resetten.
      //saveStrings("highscoreName.txt", loadStrings("ClearName.txt"));
    } else if (selectedX == 0 && selectedY == 1 && keys['q']) {
      screen = 5;
      keys['q'] = false;
    } else if (selectedX == 1 && selectedY == 1 && keys['q']) {
      screen = 4;
      keys['q'] = false;
    }
  }
}

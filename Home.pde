class home {    
  int selectedX = 0;
  int selectedY = 0;
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

    clear();
    background(255, 255, 255);
    fill(150);
    
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


    if (selectedX == 0 && selectedY == 0) {
      fill(200);
      rect(270, 300, 300, 200);
      image(Trophy, 232, 210, 400, 400);
    } else if (selectedX == 1 && selectedY == 1) {
      fill(200);
      rect(750, 550, 150, 150);
      image(Settings, 745, 550, 180, 180);
    } else if (selectedX == 1 && selectedY == 0) {
      fill(200);
      rect(770, 300, 300, 200);
      image(PlayButton, 732, 190, 400, 400);
    } else if (selectedX == 0 && selectedY == 1) {
      fill(200);
      rect(450, 550, 150, 150);
      image(Tutorial, 450, 550, 150, 150);
    }

    //test if the player wants to go to the next screen.
    if (selectedX == 1 && selectedY == 0 && key == 'q') {
      Screen = 2;
      mazecount = 0;
      changeGrid();
      timer.stop();
      penaltyMiliSeconds = 0;
      timer.start();

      keys['q'] = false;
    } else if (selectedX == 0 && selectedY == 0 && key == 'q') {
      Screen = 1;
      keys['q'] = false;
    } else if (selectedX == 0 && selectedY == 1 && key == 'q') {
      Screen = 5;
      keys['q'] = false;
      tutorial.tStart();
    } else if (selectedX == 1 && selectedY == 1 && key == 'q') {
      Screen = 4;
      keys['q'] = false;
    }
  }
}

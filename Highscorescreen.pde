class Highscorescreen {
  int[] highscore = new int[10];
  String[] highscoreName = new String[10];
  String[] scoreStr = loadStrings("highscore.txt");
  String[] nameStr = loadStrings("highscoreName.txt");
  boolean gameEnd = true;

  Highscorescreen() {
    //The highscore time gets saved in a text document just like the three initials.
    //println(scoreStr[i+mazeCount*10]);
    //println(highscore[i]);
    println(mazeCount);
    whatHighscore();
  }

  void update() {

    if (screen == 1 && gameEnd == false) {      
      whatHighscore();
      addNewScore(timer.getElapsedTime(), home.currentName);
      gameEnd = true;
      penaltyMiliSeconds = 0;
    }
  }

  void draw() {
    showHighscore();
    buttons();

    if (keys[']'] == true) {
      println(".");
      saveStrings("highscore.txt", loadStrings("ClearScore.txt"));
      saveStrings("highscoreName.txt", loadStrings("ClearName.txt"));
    } else if (keys['e']) {
      if (highScreen == false) {
        screen = 5;
    
      } else if (highScreen == true) {
        screen = 6;

      }
    }
    keys[key] = false;
  }

  void testForQ(char button) {
    if (button == 'q') {
      println("blup");
      mazeCount++;
      grid.loadGrid(mazeCount);
      screen = 2;
      timer.stop();
      penaltyMiliSeconds = 0;
      timer.start();
      gameEnd = false;
    }
  }


  void addNewScore(int score, String currentName) {
    println(mazeCount);
    for (int i = 0; i < highscore.length; i++) {

      if (score <= highscore[i]) {

        for (int j = highscore.length-1; j >= max(i, 1); j--) {
          highscore[j] = highscore[j-1];
          highscoreName[j] = highscoreName[j-1];
        }
        highscore[i] = score;
        highscoreName[i] = currentName;
        break;
      }
    }
  }

  void showHighscore() {
    background(backgroundColour);
    textSize(53);
    fill(textColour);
    text("Highscores", 515, 150);


    for (int i = 0; i < highscore.length; i++) {
      textSize(28);
      text((highscore[i] / (1000*60*60)) % 24 +" : "+ (highscore[i] / (1000*60)) % 60 +" : "+ (highscore[i] / 1000) % 60, 860, 210 + 40 * i);
      text(highscoreName[i], 400, 210 + 40 * i);
    }

    //String[] scoreStr = new String[highscore.length];
    //String[] nameStr = highscoreName;

    for (int i = 0; i < highscore.length; i++) {
      scoreStr[i+mazeCount*10] = str(highscore[i]);
      nameStr[i+mazeCount*10] = highscoreName[i];
    }

    saveStrings("highscore.txt", scoreStr);
    saveStrings("highscoreName.txt", nameStr);
  }

  void buttons() {
    triangle(70, 640, 105, 630, 105, 650);
    text("E", 130, 650);
    triangle(1210, 640, 1175, 630, 1175, 650);
    text("Q", 1125, 650);
  }

  void whatHighscore() {

    switch(mazeCount) {

    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6: 
      for (int i = 0; i < highscore.length; i++) {
        highscore[i] = int(scoreStr[i+mazeCount*10]);
        highscoreName[i] = nameStr[i+mazeCount*10];
      }
      break;
    }
  }
}

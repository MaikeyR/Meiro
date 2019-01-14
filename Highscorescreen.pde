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
    //println(mazeCount);
    whatHighscore();
  }

  void update() {

    if (screen == 1 && gameEnd == false) {      
      whatHighscore();
      addNewScore(timer.getElapsedTime(), home.currentName);
      gameEnd = true;
      penaltyMiliSeconds = 0;
    } else if (screen == 1) {
      whatHighscore();
      showHighscore();
    }
    
    draw();
  }

  void draw() {
    
    showHighscore();
    buttons();

    if (keys['y']) {
      saveStrings("highscore.txt", clearScore);
      saveStrings("highscoreName.txt", clearName);
    } else if (keys['e'] && fromGame == false) {
      screen = 6;
    } else if (keys['e'] && fromGame == true) {
      soundtrack.pause();
      soundtrack.rewind();
      screen = 5;
    }

    //keys[key] = false;
  }

  void testForQ(char button) {
    
    if (button == 'q') {
      if ( mazeCount == aantalLevels - 1) {
        screen = 0;
      } else {
        //println("blup");
        if (fromGame) {
          
          mazeCount++;
        }
        grid.loadGrid(mazeCount);
        screen = 2;
        timer.stop();
        penaltyMiliSeconds = 0;
        timer.start();
        gameEnd = false;
      }
    }
  }


  void addNewScore(int score, String currentName) {
    ///println(mazeCount);
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
      if(highscore[i] < 60000) {
        text((highscore[i] / (1000*60*60)) % 24 +" : "+ (highscore[i] / (1000*60)) % 60 +" : "+ (highscore[i] / 1000) % 60, 860, 210 + 40 * i);
        text(highscoreName[i], 400, 210 + 40 * i);
      } else {
       text("__:__:__", 860, 210 + 40 * i);
       text("???", 400, 210 + 40 * i);
      }
    }

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
    for (int i = 0; i < highscore.length; i++) {
      println(mazeCount);
      highscore[i] = int(scoreStr[i+mazeCount*10]);
      highscoreName[i] = nameStr[i+mazeCount*10];
    }
  }
}

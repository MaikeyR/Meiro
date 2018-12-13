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
    
    if (Screen == 1 && gameEnd == false) {      
      whatHighscore();
      addNewScore(timer.getElapsedTime(), Board.name);
      gameEnd = true;
      penaltyMiliSeconds = 0;
    }
    else if (Screen == 2 && gameEnd == true) {
      gameEnd = false;
      println(".");
    }
  }

  void draw() {
    showHighscore();
    backToMenu();
    
    if (keys[']'] == true) {
        println(".");
        saveStrings("highscore.txt", loadStrings("ClearScore.txt"));
        saveStrings("highscoreName.txt", loadStrings("ClearName.txt"));
        keys[key] = false;
      }
  }


  void addNewScore(int score, String name) {
  println(mazeCount);
    for (int i = 0; i < highscore.length; i++) {
   
      if (score <= highscore[i]) {
        
          for (int j = highscore.length-1; j >= max(i, 1); j--) {
            highscore[j] = highscore[j-1];
            highscoreName[j] = highscoreName[j-1];
          }
          highscore[i] = score;
          highscoreName[i] = name;
          break;
        }
     }
  }

  void showHighscore() {
    background(180);
    fill(255);
    rect(10, 10, 1260, 700);
    textSize(53);
    fill(0);
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
  
  void backToMenu() {
    triangle(70, 640, 105, 630, 105, 650);
    text("E", 130, 650);
  }
  
  void whatHighscore() {
    
    switch(mazeCount) {
      
      case 0: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i]);
                highscoreName[i] = nameStr[i];
              }
              break;
              
      case 1: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i+mazeCount*10]);
                highscoreName[i] = nameStr[i+mazeCount*10];
              }
              break;
              
      case 2: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i+mazeCount*10]);
                highscoreName[i] = nameStr[i+mazeCount*10];
              }
              break;
      
      case 3: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i+mazeCount*10]);
                highscoreName[i] = nameStr[i+mazeCount*10];
              }
              break;
      
      case 4: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i+mazeCount*10]);
                highscoreName[i] = nameStr[i+mazeCount*10];
              }
              break;
      
      case 5: for (int i = 0; i < highscore.length; i++) {
                highscore[i] = int(scoreStr[i+mazeCount*10]);
                highscoreName[i] = nameStr[i+mazeCount*10];
                println(scoreStr[i+mazeCount*10]);
                println(highscore[i]);
              }
              break;
    }
  }
}

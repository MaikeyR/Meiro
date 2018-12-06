class Highscorescreen {
  int[] highscore = new int[10];
  String[] highscoreName = new String[10];
  String[] scoreStr;
  String[] nameStr;
  String highscoretxt = "highscore.txt";
  String highscoreNametxt = "highscoreName.txt";
  boolean gameEnd = true;

  Highscorescreen() {
    //The highscore time gets saved in a text document just like the three initials.
    String[] scoreStr = null;
    String[] nameStr = null;
    scoreStr = loadStrings(highscoretxt);
    nameStr = loadStrings(highscoreNametxt);
    
    for (int i = 0; i < highscore.length; i++) {
      highscore[i] = int(scoreStr[i]);
      highscoreName[i] = nameStr[i];
      
    }
  }
  
  void update() {
    if (Screen == 1 && gameEnd == false) {
      addNewScore(timer.getElapsedTime(), Board.name);
      gameEnd = true;
      penaltyMiliSeconds = 0;
    }
    if (Screen == 2 && gameEnd == true) {
      gameEnd = false;
    }
  }

  void draw() {
    showHighscore();
    backToMenu();
  }


  void addNewScore(int score, String name) {
  
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
    background(#121836);
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
    
    String[] scoreStr = new String[highscore.length];
    String[] nameStr = highscoreName;
    
    for (int i = 0; i < highscore.length; i++) {
      scoreStr[i] = str(highscore[i]);
      nameStr[i] = highscoreName[i];
    }
    
    saveStrings(highscoretxt, scoreStr);
    saveStrings(highscoreNametxt, nameStr);
  }
  
  void keyPressed() {
  
    if(keys['e'] == true) {
      Screen = 0; 
      keys['e'] = false;
    }
  }
  
  void backToMenu() {
    triangle(70, 640, 105, 630, 105, 650);
    text("Escape", 130, 650);
  }
}

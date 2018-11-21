class Tutorial{
  
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  int pattern;
  int pattern2;
  double patternTime;
  double patternStop;
  float moveSelect;
  
  
  
  
  void tStart(){
    posX = 190;
    posY = 190;
    pattern = 5;
    pattern2 = 0;
    patternTime = 0;
    patternStop = 0;
    dt = 0;
    
  }
 
  void render(){
    patternTime = millis();
    if (patternTime - patternStop > 500){
      patternStop = patternTime;
      pattern++;
      pattern2++;
      if (pattern == 7){
        pattern = 0;
      }
    } 
    
    switch (pattern) {
      case 0: posX += (100 * dt); break;
      case 1: posX -= (100 * dt); break;
      case 2: posY += (100 * dt); break;
      case 3: posY -= (100 * dt); break;
      case 4: posY -= (100 * dt); posX -= (100 * dt); break;
      case 5: posY += (100 * dt); posX += (100 * dt); break;
      case 6: posX = 190; posY = 190; break;
    }
    
    if (pattern2 % 2 == 0) {
      moveSelect = 100;
    }
    else moveSelect = 0;
    
    println(pattern);
  }
  
  void draw(){
    if (pattern == 3 || pattern == 4){
      fill(100);
      rect(170, 80, 40, 40);
    }
    else fill (150); rect(170, 80, 40, 40);
    
    if (pattern == 1 || pattern == 4){
      fill(100);
      rect(80, 170, 40, 40);
    }
    else fill (150); rect(80, 170, 40, 40);
    
    if (pattern == 2 || pattern == 5){
      fill(100);
      rect(170, 260, 40, 40);
    }
    else fill (150); rect(170, 260, 40, 40);
    
    if (pattern == 0 || pattern == 5){
      fill(100);
      rect(260, 170, 40, 40);
    }
    else fill (150); rect(260, 170, 40, 40);
    
    fill(50, 100, 205);
    ellipse(posX, posY, 24, 24);
    textSize(24);
    fill(0);
    text("W", 180, 110);
    text("A", 92, 200);
    text("D", 272, 200);
    text("S", 184, 290);
    
    
    
    fill(50, 100, 205);
    ellipse(150, 470, 24, 24);
    ellipse(250, 470, 10, 10);
    
    fill (100);
    rect(130 + moveSelect, 390, 40, 40);
    textSize(24);
    fill(0);
    text("E", 144 + moveSelect, 420);
    
   
    
    fill(50, 100, 205);
    ellipse(170, 650, 24, 24);
    
    fill(100);
    rect(134, 572, 40, 40);
    fill(100, 0, 100);
    rect(220, 603 - (moveSelect * 0.35), 35, 70);
    textSize(24);
    fill(0);
    text("Q", 144, 600);
    
    
  }
}

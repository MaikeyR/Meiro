class Characters {
  
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;
  
  
  
  Characters() {
    
    posX = 135;
    posY = 135;
    sizeX = 25;
    sizeY = 25;
    dx = 150;
    dy = 150;
    
  }
  
  void draw() {
    
    fill(50, 100, 205);
    ellipse(posX, posY, sizeX, sizeY);
    
  }
  
  void update(double dt) {
      
    if (keys['a'] == true) {
      boolean wallLeft = true;
      
      for (int i = 0; i < walls.length; i++) {
        
        if (collidesWithCharacter(walls[i])) {
            
          if ((posX + (sizeX / 2) > walls[i].x) &&
            (posY + (sizeY / 2) > walls[i].y) && (posY - (sizeY / 2) < walls[i].y + walls[i].size)) {
            wallLeft = false;
          }
        }
      }
      
      if (wallLeft == true) {
          posX -= dx * dt;
      }
    } 
    
    if (keys['d'] == true) {
      boolean wallRight = true;
      
      for (int i = 0; i < walls.length; i++) {
        
        if (collidesWithCharacter(walls[i])) {
            
          if ((posX - (sizeX / 2) < walls[i].x + walls[i].size) &&
            (posY + (sizeY / 2) > walls[i].y) && (posY - (sizeY / 2) < walls[i].y + walls[i].size)) {
            wallRight = false;
          }
        }
      }
      
      if (wallRight == true) {
          posX += dx * dt;
      }
    } 
    
    if (keys['w'] == true) {
      boolean wallUp = true;
      
      for (int i = 0; i < walls.length; i++) {
        
        if (collidesWithCharacter(walls[i])) {
            
          if ((posY + (sizeY / 2) > walls[i].y) &&
            (posX - (sizeX / 2) < walls[i].x + walls[i].size) &&  (posX + (sizeX / 2) > walls[i].x)) {
            wallUp = false;
          }
        }
      }
      
      if (wallUp == true) {
          posY -= dy * dt;
      }
    } 
    
    if (keys['s'] == true) {
      boolean wallDown = true;
      
      for (int i = 0; i < walls.length; i++) {
        
        if (collidesWithCharacter(walls[i])) {
            
          if ((posY - (sizeY / 2) < walls[i].y + walls[i].size) &&
            (posX - (sizeX / 2) < walls[i].x + walls[i].size) &&  (posX + (sizeX / 2) > walls[i].x)){
            wallDown = false;
          }
        }
      }
      
      if (wallDown == true) {
          posY += dy * dt;
      }
    }
    //Checkt of characters op finish zijn
    if(char1.posX > finX && char1.posX < (finX + 35) && char1.posY > finY && char1.posY < (finY + 35)){
      char1fin = true;
    }
    if(char2.posX > finX && char2.posX < (finX + 35) && char2.posY > finY && char2.posY < (finY + 35)){
      char2fin = true;
    }
    if(char2fin && char1fin || keys['f']){
      Screen = 3;
    }
  }
    
  
  boolean collidesWithCharacter(Wall aWall) {
    
    if ((posX + (sizeX / 2) > aWall.x - dx * dt) && (posX - (sizeX / 2) < aWall.x + aWall.size + dx * dt) &&
      (posY + (sizeY / 2) > aWall.y - dy * dt) && (posY - (sizeY / 2) < aWall.y + aWall.size + dy * dt)) {
      return true;
    }
    else{
      return false;
    }
  }
}

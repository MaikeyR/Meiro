class Characters {
  
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;
  
  
  
  Characters() {
    
    posX = 61;
    posY = 61;
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
  //  if (keys['a'] == true) {
  //    boolean wallLeft = true;
      
  //    for (int i = 0; i < asset1.length; i++) {
        
  //      if (checkCollision(asset1[i])) {
            
  //        if ((posX + (sizeX / 2) > asset1[i].x) &&
  //          (posY + (sizeY / 2) > asset1[i].y) && (posY - (sizeY / 2) < asset1[i].y + asset1[i].size)) {
  //          wallLeft = false;
  //        }
  //      }
  //    }
      
  //    if (wallLeft == true) {
  //        posX -= dx * dt;
  //    }
  //  } 
    
  //  if (keys['d'] == true) {
  //    boolean wallRight = true;
      
  //    for (int i = 0; i < asset1.length; i++) {
        
  //      if (checkCollision(asset1[i])) {
            
  //        if ((posX - (sizeX / 2) < asset1[i].x + asset1[i].size) &&
  //          (posY + (sizeY / 2) > asset1[i].y) && (posY - (sizeY / 2) < asset1[i].y + asset1[i].size)) {
  //          wallRight = false;
  //        }
  //      }
  //    }
      
  //    if (wallRight == true) {
  //        posX += dx * dt;
  //    }
  //  } 
    
  //  if (keys['w'] == true) {
  //    boolean wallUp = true;
      
  //    for (int i = 0; i < walls.length; i++) {
        
  //      if (checkCollision(asset1[i])) {
            
  //        if ((posY + (sizeY / 2) > asset1[i].y) &&
  //          (posX - (sizeX / 2) < asset1[i].x + asset1[i].size) &&  (posX + (sizeX / 2) > asset1[i].x)) {
  //          wallUp = false;
  //        }
  //      }
  //    }
      
  //    if (wallUp == true) {
  //        posY -= dy * dt;
  //    }
  //  } 
    
  //  if (keys['s'] == true) {
  //    boolean wallDown = true;
      
  //    for (int i = 0; i < asset1.length; i++) {
        
  //      if (checkCollision(asset1[i])) {
            
  //        if ((posY - (sizeY / 2) < asset1[i].y + asset1[i].size) &&
  //          (posX - (sizeX / 2) < asset1[i].x + asset1[i].size) &&  (posX + (sizeX / 2) > asset1[i].x)){
  //          wallDown = false;
  //        }
  //      }
  //    }
      
  //    if (wallDown == true) {
  //        posY += dy * dt;
  //    }
  //  }
  }
    
  
  boolean collidesWithCharacter(Wall aWall) {
    
      if ((posX + (sizeX / 2) > aWall.x - dx * dt) && (posX - (sizeX / 2) < aWall.x + aWall.size + dx * dt)
      &&
        (posY + (sizeY / 2) > aWall.y - dy * dt) && (posY - (sizeY / 2) < aWall.y + aWall.size + dy * dt)
        ) {
        return true;
      }
      else
        return false;
  }
  
//   boolean checkCollision(movingWall aMovingWall) {
    
//      if ((posX + (sizeX / 2) > aMovingWall.x - dx * dt) && (posX - (sizeX / 2) < aMovingWall.x + aMovingWall.size + dx * dt) &&
//        (posY + (sizeY / 2) > aMovingWall.y - dy * dt) && (posY - (sizeY / 2) < aMovingWall.y + aMovingWall.size + dy * dt)) {
//          return true;
//      }
//      else
//        return false;
//  }
}

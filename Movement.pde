public class Movement {
  
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  float dx;
  float dy;
  
  
  
  Movement() {
    
    dx = 200;
    dy = 200;
    
  }
  
  void draw() {
    
    fill(50, 100, 205);
    ellipse(posX, posY, sizeX, sizeY);
    
  }
  
  void update(double dt) {
    
    if (keys['a'] == true) {
      
      posX -= dx * dt;
      
    } 
    
    if (keys['d'] == true) {
      
      posX += dx * dt;
      
    } 
    
    if (keys['w'] == true) {
      
      posY -= dy * dt;
      
    } 
    
    if (keys['s'] == true) {
      
      posY += dy * dt;
      
    }
    
  }
  
}

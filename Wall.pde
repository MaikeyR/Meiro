class Wall{
  
  float x, y, size;
  
  Wall() {
    
    x = 0;
    y = 0;
    size = 35;
    
  }
  
  void draw() {
    rect(x, y, size, size);
    
  }
  
}

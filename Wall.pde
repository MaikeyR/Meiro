class Wall{
  
  float x, y, size;
  
  Wall() {
    
    x = 10;
    y = 10;
    size = 35;
    //wijdte = 35;
    //size = 35;
    
  }
  
  void draw() {
    
    rect(x, y, size, size);
    
  }
  
}

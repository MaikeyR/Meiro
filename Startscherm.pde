class home{    
  public int lastPressed(int lastKeyCode){
    return lastKeyCode;
  }
  
  
  /**
    TO DO:
    Titel art*
    Selector key aanstellen
  */
  int lastKeyCode;
 
  void draw(){
    clear();
    background(255, 255, 255);
    
    fill(150);
    rect(270, 400, 300, 200);
    image(Trophy, 232, 310, 400, 400);
    
    rect(770, 400, 300, 200);
    image(PlayButton, 732, 290, 400, 400);
    
    rect(340, 80, 640, 200);
    image(Titel, 340, 80, 640, 200); 

    if(keys['a'] == true){
      fill(200, 200, 200);
      rect(270, 400, 300, 200);
      image(Trophy, 232, 310, 400, 400);
    }
    
    if(keys['d'] == true){
      fill(200, 200, 200);
      rect(770, 400, 300, 200);
      image(PlayButton, 732, 290, 400, 400);
    }
    
    //test of de speler naar de volgende pagina wil
    if(keys['d'] == true && keyCode == 32){
      Screen = 2;
      keys[' '] = false;
      keys['d'] = false;
    }
    else if(keys['a'] == true && keyCode == 32){
      Screen = 1;
      keys[' '] = false;
      keys['a'] = false;
    }
  }
}

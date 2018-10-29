class home{    
  public int lastPressed(int lastKeyCode){
    return lastKeyCode;
  }

  int lastKeyCode;
 
  void draw(){
    clear();
    background(255, 255, 255);
    
    fill(150);
    rect(270, 300, 300, 200);
    image(Trophy, 232, 210, 400, 400);
    
    rect(770, 300, 300, 200);
    image(PlayButton, 732, 190, 400, 400);
    
    rect(340, 80, 640, 200);
    image(Titel, 340, 80, 640, 200); 
    
    rect(600, 550, 150, 150);
    image(Settings, 595, 550, 180, 180);

    if(keys['a'] == true){
      fill(200);
      rect(270, 300, 300, 200);
      image(Trophy, 232, 210, 400, 400);
    }
    
    if(keys['d'] == true){
      fill(200);
      rect(770, 300, 300, 200);
      image(PlayButton, 732, 190, 400, 400);
    }
    
    if(keys['s'] == true){
      fill(200);
      rect(600, 550, 150, 150);
      image(Settings, 595, 550, 180, 180);
    }
    
    //test of de speler naar de volgende pagina wil
    if(keys['d'] == true && keyCode == 32){
      Screen = 2;
      timer.start();
      keys[' '] = false;
      keys['d'] = false;
    }
    else if(keys['a'] == true && keyCode == 32){
      Screen = 1;
      keys[' '] = false;
      keys['a'] = false;
    }
    else if(keys['s'] == true && keyCode == 32){
      Screen = 4;
      keys[' '] = false;
      keys['s'] = false;
    }
  }
}

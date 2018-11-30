class settings{
  float selectedY = 1;
  float mainVolume = 50;

  void render(){
    //The settings menu is not complete yet, more options to come.
    if(keys['s'] == true && selectedY < 2){
     selectedY++;
     keys['s'] = false;
    }
    if(keys['w'] == true && selectedY > 0){
     selectedY--; 
     keys['w'] = false;
    }

    
    if(selectedY == 1 && keys['d'] && mainVolume < 100){
      //volume up
      mainVolume++;
    }else if(selectedY == 1 && keys['a'] && mainVolume > 0){
      //volume down
      mainVolume--;
    }
      
    if(selectedY == 2 && keys['e']){
      Screen = 0;
    }
  }
  
  void draw(){
    //volume
    textSize(30);
    fill(0);
    text("Volume", 300, 210);
    
    line(440, 200, 840, 200);
    if(selectedY == 1){
      fill(0);
      ellipse((mainVolume * 4) + 440, 200, 60, 60);
    }
    fill(200, 0, 0);
    ellipse((mainVolume * 4) + 440, 200, 40, 40);
    //sound.volume(mainVolume);
    
    fill(150);
    rect(600, 550, 150, 150);
    if(selectedY == 2){
      fill(200);
      rect(600, 550, 150, 150);
    }
  }
}

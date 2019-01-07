class Sidebar {
  int MWPos;
  boolean Q;
  void draw() {

    //WASD controls
    if (keys['w'] == true) {
      fill(100);
      rect(1150, 70, 40, 40);
    } else {
      fill (150); 
      rect(1150, 70, 40, 40);
    }

    if (keys['a'] == true) {
      fill(100);
      rect(1100, 120, 40, 40);
    } else fill (150); 
    rect(1100, 120, 40, 40);

    if (keys['s'] == true) {
      fill(100);
      rect(1150, 120, 40, 40);
    } else fill (150); 
    rect(1150, 120, 40, 40);

    if (keys['d'] == true) {
      fill(100);
      rect(1200, 120, 40, 40);
    } else fill (150); 
    rect(1200, 120, 40, 40);

    fill(50, 100, 205);
    textSize(24);
    fill(textColour);
    text("W", 1160, 100);
    text("A", 1112, 150);
    text("S", 1164, 150);
    text("D", 1212, 150);

    //player switch
    fill(50, 100, 205);
    ellipse(1120, 270, 24, 24);
    ellipse(1220, 270, 14, 14);
    fill (150);
    
    if (keys['e'] == true) {
      fill (100);
    }
    
    if (char12) {
      rect(1100, 200, 40, 40);
      textSize(24);
      fill(textColour);
      text("E", 1114, 230);
    } else {
      rect(1200, 200, 40, 40);
      textSize(24);
      fill(textColour);
      text("E", 1214, 230);
    }


    //moveable walls
    fill(50, 100, 205);
    ellipse(1140, 410, 24, 24);
    fill(150);
    
    if (keys['q']) {
      fill(100);
    }
    rect(1120, 320, 40, 40);
    textSize(24);
    fill(textColour);
    text("Q", 1131, 349);
    
    if (Q) {
      MWPos = 320;
    } else {
      MWPos = 390;
    }
    
    image(moveableWall, 1180, MWPos, 35, 35);
    image(moveableWall, 1180, 355, 35, 35);
  }
}

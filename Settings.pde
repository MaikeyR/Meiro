class Settings {
  float selectedY = 1;
  float mainVolume = 50;
  float sfxVolume = 50;
  float volume = -13;
  float sfxvolume = -13;

  void update() {
    //checkt welke slider geselecteerd is en welke waarde hij aangeeft, dit bepaald het volume
    soundtrack.play();
    if (keys['s'] == true && selectedY < 2) {
      selectedY++;
      keys['s'] = false;
    }
    if (keys['w'] == true && selectedY > 1) {
      selectedY--; 
      keys['w'] = false;
    }
    if (selectedY == 1 && keys['d'] && mainVolume < 100) {
      volume++;
      soundtrack.setGain(volume); //used to increase volume
      //volume up
      mainVolume++;
    } else if (selectedY == 1 && keys['a'] && mainVolume > 0) {
      volume--;
      soundtrack.setGain(volume);  //used to decrease volume
      //volume down
      mainVolume--;
    }
    if (selectedY == 2 && keys['d'] && sfxVolume < 100) {
      sfxvolume++;
      doorAudio.setGain(sfxvolume); //used to increase volume
      doorAudio.rewind();
      doorAudio.play();
      //volume up
      sfxVolume++;
    } else if (selectedY == 2 && keys['a'] && sfxVolume > 0) {
      sfxvolume--;
      doorAudio.setGain(sfxvolume); //used to decrease volume
      doorAudio.rewind();
      doorAudio.play();
      //volume down
      sfxVolume--;
    }

    if (keys['e']) {
      soundtrack.pause();
      soundtrack.rewind();
      screen = 0;
    }
  }

  void draw() {
    textSize(30);
    fill(textColour);
    text("Music", 300, 270);
    text("Sounds", 250, 370);

    line(440, height/2-90, 840, height/2-90);
    line(440, height/2+10, 840, height/2+10);

    if (selectedY == 1) {
      fill(textColour);
      ellipse((mainVolume * 4) + 440, height/2-90, 60, 60);
    }
    fill(buttonColour);
    ellipse((mainVolume * 4) + 440, height/2-90, 40, 40);

    if (selectedY == 2) {
      fill(textColour);
      ellipse((sfxVolume * 4) + 440, height/2+10, 60, 60);
    }
    fill(buttonColour);
    ellipse((sfxVolume * 4) + 440, height/2+10, 40, 40);

    fill(buttonColour);
    textSize(24);
    rect(115, 622, 40, 40);
    fill(textColour);    
    text("Back :   E", 37, 650);

    textSize(53);
    fill(textColour);
    text("Settings", 515, 150);
  }
}

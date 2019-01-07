class Settings {
  float selectedY = 1;
  float mainVolume = 50;
  float sfxVolume = 50;
  float volume = -13;
  float sfxvolume = -13;

  void update() {
    //The settings menu is not complete yet, more options to come.
    soundtrack.play();
    if (keys['s'] == true && selectedY < 3) {
      selectedY++;
      keys['s'] = false;
    }
    if (keys['w'] == true && selectedY > 0) {
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
      fall.setGain(sfxvolume); //used to increase volume
      doorAudio.setGain(sfxvolume);
      //grunt.setGain(sfxvolume);
      //grunt.rewind();
      //grunt.play();
      //volume up
      sfxVolume++;
    } else if (selectedY == 2 && keys['a'] && sfxVolume > 0) {
      sfxvolume--;
      fall.setGain(sfxvolume);
      doorAudio.setGain(sfxvolume);
      //grunt.setGain(sfxvolume); //used to decrease volume
      //grunt.rewind();
      //grunt.play();
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
    //volume
    textSize(30);
    fill(textColour);
    text("Music", 300, 210);
    text("Sounds", 250, 310);

    line(440, height/2+50, 840, height/2+50);
    line(440, height/2-50, 840, height/2-50);

    noStroke();
    if (selectedY == 1) {
      fill(textColour);
      ellipse((mainVolume * 4) + 440, height/2-50, 60, 60);
    }
    fill(buttonColour);
    ellipse((mainVolume * 4) + 440, height/2-50, 40, 40);
    stroke(0);

    if (selectedY == 2) {
      fill(textColour);
      ellipse((sfxVolume * 4) + 440, height/2+50, 60, 60);
    }
    fill(buttonColour);
    ellipse((sfxVolume * 4) + 440, height/2+50, 40, 40);
  }
}

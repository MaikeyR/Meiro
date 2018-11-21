// Graphics
PImage Trophy, PlayButton, Titel, Settings, horizontaledoorgang, verticaledoorgang, deur;

// Sounds
Minim minim;
AudioPlayer background0, background1, background2, background3, background4;

public void loadAssets() {

  //graphics
  Trophy = loadImage("Trophy.png");
  PlayButton = loadImage("Playbutton.png");
  Titel = loadImage("Titel.png");
  Settings = loadImage("Settings.png");
  horizontaledoorgang = loadImage("horizontaldoorgang.png");
  verticaledoorgang = loadImage("verticaldoorgang.png");
  deur = loadImage("deur.png");

  //Load sounds
  minim = new Minim(this);
  //name = minim.loadFile("name.mp3", 2048);
  background0 = minim.loadFile("background0.mp3", 2048);
  background1 = minim.loadFile("background1.mp3", 2048);
  background2 = minim.loadFile("background2.mp3", 2048);
  background3 = minim.loadFile("background3.mp3", 2048);
  background4 = minim.loadFile("background4.mp3", 2048);
}

// Graphics
PImage Trophy, PlayButton, Titel, Settings, smallHallwayHoriz, smallHallwayVert, Door, Path, Tutorial, Wall, MoveableWall, Finish;

// Sounds
Minim minim;
AudioPlayer background0, background1, background2, background3, background4;

// Colours


public void loadAssets() {

  //graphics
  Trophy = loadImage("Trophy.png");
  PlayButton = loadImage("Playbutton.png");
  Titel = loadImage("Titel.png");
  Settings = loadImage("Settings.png");
  smallHallwayHoriz = loadImage("horizontaldoorgang.png");
  smallHallwayVert = loadImage("verticaldoorgang.png");
  Door = loadImage("deur.png");
  Path = loadImage("pad.png");
  Tutorial = loadImage("tutorial.png");
  Wall = loadImage("allclosed.png");
  MoveableWall = loadImage("moveablewall.png");
  Finish = loadImage("finish.png");
  

  //Load sounds
  minim = new Minim(this);
  //example: name = minim.loadFile("name.mp3", 2048);
  background0 = minim.loadFile("background0.mp3", 2048);
  background1 = minim.loadFile("background1.mp3", 2048);
  background2 = minim.loadFile("background2.mp3", 2048);
  background3 = minim.loadFile("background3.mp3", 2048);
  background4 = minim.loadFile("background4.mp3", 2048);
}

// Graphics
PImage trophy, playButton, titel, settingsImage, smallHallwayHoriz, smallHallwayVert, door, path, tutorial, wall, moveableWall, char1wall, char2wall, char1Button, char2Button, finish, homeBackground;

// Sounds
AudioPlayer fall, grunt, soundtrack, doorAudio, splat, brick;
  
public void loadAssets() {
  
  //graphics
  trophy = loadImage("assets/textures/Trophy.png");
  playButton = loadImage("assets/textures/Playbutton.png");
  titel = loadImage("assets/textures/Titel.png");
  settingsImage = loadImage("assets/textures/Settings.png");
  smallHallwayHoriz = loadImage("assets/textures/horizontaldoorgang.png");
  smallHallwayVert = loadImage("assets/textures/verticaldoorgang.png");
  door = loadImage("assets/textures/deur.png");
  path = loadImage("assets/textures/pad.png");
  tutorial = loadImage("assets/textures/tutorial.png");
  wall = loadImage("assets/textures/allclosed.png");
  moveableWall = loadImage("assets/textures/moveablewall.png");
  char1wall = loadImage("assets/textures/char1wall.png");
  char2wall = loadImage("assets/textures/char2wall.png");
  char1Button = loadImage("assets/textures/char1Button.png");
  char2Button = loadImage("assets/textures/char2Button.png");
  finish = loadImage("assets/textures/finish.png");
  homeBackground = loadImage("assets/textures/homeBackground.png");
  
  
  //Load sounds
  minim = new Minim(this);
  //example: name = minim.loadFile("name.mp3", 2048);
  soundtrack = minim.loadFile("assets/sounds/soundtrack.mp3", 2048);
  fall = minim.loadFile("assets/sounds/fall.mp3", 2048);
  //grunt = minim.loadFile("assets/sounds/grunt.mp3", 2048);
  doorAudio = minim.loadFile("assets/sounds/door.mp3", 2048);
  splat = minim.loadFile("assets/sounds/splat.mp3", 2048);
  brick = minim.loadFile("assets/sounds/brickmove.mp3", 2048);
}

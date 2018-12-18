// Graphics
PImage trophy, playButton, titel, settingsImage, smallHallwayHoriz, smallHallwayVert, door, path, tutorial, wall, moveableWall, finish, homeBackground;
  
// Sounds
AudioPlayer fall, grunt, soundtrack;
  
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
  finish = loadImage("assets/textures/finish.png");
  homeBackground = loadImage("assets/textures/homeBackground.png");
    
  
  //Load sounds
  minim = new Minim(this);
  //example: name = minim.loadFile("name.mp3", 2048);
  soundtrack = minim.loadFile("assets/sounds/soundtrack.mp3", 2048);
  fall = minim.loadFile("assets/sounds/fall.mp3", 2048);
  grunt = minim.loadFile("assets/sounds/grunt.mp3", 2048);
}

// Graphics
PImage Trophy, PlayButton, Titel, Settings, smallHallwayHoriz, smallHallwayVert, Door, Path, Tutorial, Wall, MoveableWall, Finish, HomeBackground;

// Sounds
Minim minim;
AudioPlayer fall, grunt, soundtrack;

// Colours
int backgroundColour, buttonColour, buttonSelectedColour, textColour;

class AssetLoader {



  // Colours

  AssetLoader() {

    backgroundColour = #121836;
    buttonColour = #080C24;
    buttonSelectedColour = #2F3553;
    textColour = #fcfcfc;
    
  }

  void loadAssets() {

    //graphics
    Trophy = loadImage("assets/textures/Trophy.png");
    PlayButton = loadImage("assets/textures/Playbutton.png");
    Titel = loadImage("assets/textures/Titel.png");
    Settings = loadImage("assets/textures/Settings.png");
    smallHallwayHoriz = loadImage("assets/textures/horizontaldoorgang.png");
    smallHallwayVert = loadImage("assets/textures/verticaldoorgang.png");
    Door = loadImage("assets/textures/deur.png");
    Path = loadImage("assets/textures/pad.png");
    Tutorial = loadImage("assets/textures/tutorial.png");
    Wall = loadImage("assets/textures/allclosed.png");
    MoveableWall = loadImage("assets/textures/moveablewall.png");
    Finish = loadImage("assets/textures/finish.png");
    HomeBackground = loadImage("assets/textures/homeBackground.png");


    //Load sounds
    minim = new Minim(this);
    //example: name = minim.loadFile("name.mp3", 2048);
    soundtrack = minim.loadFile("assets/sounds/soundtrack.mp3", 2048);
    fall = minim.loadFile("assets/sounds/fall.mp3", 2048);
    grunt = minim.loadFile("assets/sounds/grunt.mp3", 2048);
    
  }
  
}

// Graphics
PImage Trophy, PlayButton, Titel, Settings, smallHallwayHoriz, smallHallwayVert, Door, Path, Tutorial, allCorners, bottomAndLeftCorners, bottomAndRightCorners, bottomClosed, bottomClosed_TopCorners, bottomClosed_TopLeftCorner, bottomClosed_TopRightCorner, bottomCorners, bottomExt, bottomLeft, bottomLeft_TopRightCorner, bottomLeftCorner, bottomRight, bottomRight_TopLeftCorner, bottomRightCorner, default1, leftAndRightClosed, leftClosed, leftClosed_BottomRightCorner, leftClosed_RightCorners, leftClosed_TopRightCorner, leftCorners, leftExt, rightClosed, rightClosed_BottomLeftCorner, rightClosed_LeftCorners, rightClosed_TopLeftCorner, rightCorners, rightExt, topAndLeftCorners, topAndRightCorners, topClosed, topClosed_BottomCorners, topClosed_BottomLeftCorner, topClosed_BottomRightCorner, topCorners, topExt, topLeft, topLeft_BottomRightCorner, topLeftandBottomLeftCorners, topLeftCorner, topRight, topRight_BottomLeftCorner, topRightAndBottomLeftCorners, topRightCorner;

// Sounds
Minim minim;
AudioPlayer background0, background1, background2, background3, background4;

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
  
  allCorners = loadImage("Assets/Walls/allcorners.png");
  bottomAndLeftCorners = loadImage("Assets/Walls/bottomandleftcorners.png");
  bottomAndRightCorners = loadImage("Assets/Walls/bottomandrightcorners.png");
  bottomClosed = loadImage("Assets/Walls/bottomclosed.png");
  bottomClosed_TopCorners = loadImage("Assets/Walls/bottomclosed_topcorners.png");
  bottomClosed_TopLeftCorner = loadImage("Assets/Walls/bottomclosed_topleftcorner.png");
  bottomClosed_TopRightCorner = loadImage("Assets/Walls/bottomclosed_toprightcorner.png");
  bottomCorners = loadImage("Assets/Walls/bottomcorners.png");
  bottomExt = loadImage("Assets/Walls/bottomext.png");
  bottomLeft = loadImage("Assets/Walls/bottomleft.png");
  bottomLeft_TopRightCorner = loadImage("Assets/Walls/bottomleft_toprightcorner.png");
  bottomLeftCorner = loadImage("Assets/Walls/bottomleftcorner.png");
  bottomRight = loadImage("Assets/Walls/bottomright.png");
  bottomRight_TopLeftCorner = loadImage("Assets/Walls/bottomright_topleftcorner.png");
  bottomRightCorner = loadImage("Assets/Walls/bottomrightcorner.png");
  default1 = loadImage("Assets/Walls/default.png");
  leftAndRightClosed = loadImage("Assets/Walls/leftandrightclosed.png");
  leftClosed = loadImage("Assets/Walls/leftclosed.png");
  leftClosed_BottomRightCorner = loadImage("Assets/Walls/leftclosed_bottomrightcorner.png");
  leftClosed_RightCorners = loadImage("Assets/Walls/leftclosed_rightcorners.png");
  leftClosed_TopRightCorner = loadImage("Assets/Walls/leftclosed_toprightcorner.png");
  leftCorners = loadImage("Assets/Walls/leftcorners.png");
  leftExt = loadImage("Assets/Walls/leftext.png");
  rightClosed = loadImage("Assets/Walls/rightclosed.png");
  rightClosed_BottomLeftCorner = loadImage("Assets/Walls/rightclosed_bottomleftcorner.png");
  rightClosed_LeftCorners = loadImage("Assets/Walls/rightclosed_leftcorners.png");
  rightClosed_TopLeftCorner = loadImage("Assets/Walls/rightclosed_topleftcorner.png");
  rightCorners = loadImage("Assets/Walls/rightcorners.png");
  rightExt = loadImage("Assets/Walls/rightext.png");
  topAndLeftCorners = loadImage("Assets/Walls/topandleftcorners.png");
  topAndRightCorners = loadImage("Assets/Walls/topandrightcorners.png");
  topClosed = loadImage("Assets/Walls/topclosed.png");
  topClosed_BottomCorners = loadImage("Assets/Walls/topclosed_bottomcorners.png");
  topClosed_BottomLeftCorner = loadImage("Assets/Walls/topclosed_bottomleftcorner.png");
  topClosed_BottomRightCorner = loadImage("Assets/Walls/topclosed_bottomrightcorner.png");
  topCorners = loadImage("Assets/Walls/topcorners.png");
  topExt = loadImage("Assets/Walls/topext.png");
  topLeft = loadImage("Assets/Walls/topleft.png");
  topLeft_BottomRightCorner = loadImage("Assets/Walls/topleft_bottomrightcorner.png");
  topLeftandBottomLeftCorners = loadImage("Assets/Walls/topleftandbottomleftcorners.png");
  topLeftCorner = loadImage("Assets/Walls/topleftcorner.png");
  topRight = loadImage("Assets/Walls/topright.png");
  topRight_BottomLeftCorner = loadImage("Assets/Walls/topright_bottomleftcorner.png");
  topRightAndBottomLeftCorners = loadImage("Assets/Walls/toprightandbottomleftcorners.png");
  topRightCorner = loadImage("Assets/Walls/toprightcorner.png");
  

  //Load sounds
  minim = new Minim(this);
  //example: name = minim.loadFile("name.mp3", 2048);
  background0 = minim.loadFile("background0.mp3", 2048);
  background1 = minim.loadFile("background1.mp3", 2048);
  background2 = minim.loadFile("background2.mp3", 2048);
  background3 = minim.loadFile("background3.mp3", 2048);
  background4 = minim.loadFile("background4.mp3", 2048);
}

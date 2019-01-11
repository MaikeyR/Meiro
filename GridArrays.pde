/**
 Here are the array's for the diffrent mazes
 a = WALL
 b = PATH
 f = FINISH
 d = DOOR
 w = MOVEABLE WALL MID
 v = MOVEABLE WALL SIDE
 s & t = SMALL HALLWAY
 1 = START CHAR1
 2 = START CHAR2
 p = COR KNOP
 o = DON KNOP
 k = COR DEUR GEACTIVEERD DOOR KNOP
 l = DON DEUR GEACTIVEERD DOOR KNOP
 
 
 */


static char WALL='a', PATH='b';
static char FINISH='f', START1='1', START2='2';

static char HOLE='d', MOVEABLE_WALL_MID='w', MOVEABLE_WALL_SIDE='v';
static char SMALL_HALLWAY_VERT='t', SMALL_HALLWAY_HORIZ='s';
static char COR_BUTTON='p', DON_BUTTON='o', COR_BUTTON_DOOR='k', DON_BUTTON_DOOR='l';

class GridArrays {

  char currentGrid [][]; 

  int round = 0;

  void loadGrid(int grid) {
    
    currentGrid = grids[grid];
  }


  //grids:
  //doolhof 1  
  char grid1 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'f', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '2', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 2
  char grid2 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '1', 'a', 'a', 'a', 'a', 'a', 'a', '2', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 't', 'a', 'd', 'a', 'a', 'a', 'a', 't', 'a', 'd', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'f', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 3
  char grid3 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'v', 'b', 'b', '2', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'w', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'f', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'w', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', '1', 'b', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 4
  char grid4 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', '1', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 's', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'w', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'w', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 't', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'd', 'b', 'b', 'b', 'a', 'f', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', '2', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 5
  char grid5 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', '1', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'd', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'w', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 't', 'a', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'd', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'w', 'a', 'a', 'a', 'b', 'a', 'b', 'f', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 't', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'w', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', '2', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 6
  char grid6 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', '2', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'd', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'v', 'w', 'b', 'b', 'b', 'f', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'w', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 't', 'a', 'a', 'a', 'a', 'a', 't', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'v', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'd', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'd', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', '1', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 7
  char grid7 [][] =  {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'f', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', '2', 'a', 'a'}, {'a', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 't', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'w', 'v', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'd', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'l', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'w', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'p', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', 'b', 'k', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'o', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'a', '1', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 's', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 8
  char grid8 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', '1', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'l', 'b', 'b', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'd', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'f', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'p', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'o', 'a', 'a', 't', 'a', 'a', 'a', 'b', 's', 'b', 'a', 'a', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'k', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'v', 'w', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'd', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'w', 'v', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '2', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 9
  char grid9 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 's', 'b', 'b', 'b', 'a', 'b', 'b', 'b', '2', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'l', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'd', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'p', 'a', 'b', 'b', 'b', 'a'}, {'a', 'o', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 't', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'f', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'w', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'k', 'b', 'a', 'b', 'v', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'd', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'a'}, {'a', '1', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 10
  char grid10 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', '1', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'w', 'v', 'b', 'a'}, {'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'd', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'w', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'v', 'b', 'b', 'a', 'o', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'f', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'k', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'l', 'b', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a'}, {'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', '2', 'a'}, {'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 's', 'b', 'a', 'a', 'a', 'p', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};
  //doolhof 11
  char grid11 [][] = {{'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', '1', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'p', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'k', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'v', 'w', 'b', 'a', 'a', 'b', 'w', 'v', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'd', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 't', 'a', 'a', 'b', 'b', 'b', 'b', 'b', 'l', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 't', 'a', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'f', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'b', 'd', 'b', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'a'}, {'a', 'b', 'a', 'o', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a'}, {'a', 'b', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'b', 'a', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a'}, {'a', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'a', 'a', 'b', 'a', 'b', 'b', 'a', 'b', 'b', 'a', 'a', 'w', 'a', 't', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'b', 'a', 'v', 'w', 'b', 'a', 'a', 'b', 'a', 'a', 'a', 'v', 'b', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'b', 'a'}, {'a', 'b', 'a', 'b', 'b', 'b', 'a', 'a', 'b', 's', 'b', 'a', 'b', 'a', 'a', 'b', 'b', 'b', 'a', 'b', 'a', 'a', 'a', 'b', 'a', 'b', 'b', 'b', 'b', 'a'}, {'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'b', 'a', 'b', 'a', 'd', 'a', 'a', 'a', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'b', 'a', 'a', 'a', 'a', 'b', 'a'}, {'a', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', 's', 's', 'b', 'b', 'b', 'b', 'b', 'a', 'b', 'b', 'b', 'b', 'b', '2', 'a'}, {'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'}};

  //array met alle grids
  char grids[][][] = {grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8, grid9, grid10, grid11}; 
}

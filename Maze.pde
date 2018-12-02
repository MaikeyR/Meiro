class Maze {
  int xCord1, yCord1, xCord2, yCord2;
  int X = 10;
  int Y = 10;
  
  
  void gridSetup() {
    
    for (int i = 0 ; i < 20 ; i++) {
      
      for (int u = 0 ; u < 30 ; u++) {
        
        walls[i][u] = new Wall();
        
      }      
    }    
  }
  void wallDraw() {
    //Draws maze, reads out which block to draw.
    for (int i = 0 ; i < 20 ; i++) {
      for (int j = 0 ; j < 30 ; j++) {
        X = j * 35;
        Y = i * 35;
        
        if (currentGrid[i][j]==WALL) {
          fill(204, 102, 0);
          walls[i][j].y = Y;
          walls[i][j].x = X;
          walls[i][j].draw();

        }
        
        if (currentGrid[i][j] == "1") { 
          
          image(allCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "2") { 
          
          image(bottomAndLeftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "3") { 
          
          image(bottomAndRightCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "4") { 
          
          image(bottomClosed, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "5") { 
          
          image(bottomClosed_TopCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "6") { 
          
          image(bottomClosed_TopLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "7") { 
          
          image(bottomClosed_TopRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "8") { 
          
          image(bottomCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "9") { 
          
          image(bottomExt, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "10") { 
          
          image(bottomLeft, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "11") { 
          
          image(bottomLeft_TopRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "12") { 
          
          image(bottomLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "13") { 
          
          image(bottomRight, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "14") { 
          
          image(bottomRight_TopLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "15") { 
          
          image(bottomRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "16") { 
          
          image(default1, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "17") { 
          
          image(leftAndRightClosed, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "18") { 
          
          image(leftClosed, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "19") { 
          
          image(leftClosed_BottomRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "20") { 
          
          image(leftClosed_RightCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "21") { 
          
          image(leftClosed_TopRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "22") { 
          
          image(leftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "23") { 
          
          image(leftExt, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "24") { 
          
          image(rightClosed, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "25") { 
          
          image(rightClosed_BottomLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "26") { 
          
          image(rightClosed_LeftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "27") { 
          
          image(rightClosed_TopLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "28") { 
          
          image(rightCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "29") { 
          
          image(rightExt, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "30") { 
          
          image(topAndLeftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "31") { 
          
          image(topAndRightCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "32") { 
          
          image(topClosed, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "33") { 
          
          image(topClosed_BottomCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "34") { 
          
          image(topClosed_BottomLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "35") { 
          
          image(topClosed_BottomRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "36") { 
          
          image(topCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "37") { 
          
          image(topExt, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "38") { 
          
          image(topLeft, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "39") { 
          
          image(topLeft_BottomRightCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "40") { 
          
          image(topLeftandBottomLeftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "41") { 
          
          image(topLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "42") { 
          
          image(topRight, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "43") { 
          
          image(topRight_BottomLeftCorner, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "44") { 
          
          image(topRightAndBottomLeftCorners, X, Y, 35, 35);
          
        }
        
        if (currentGrid[i][j] == "45") { 
          
          image(topRightCorner, X, Y, 35, 35);
          
        }
        
        else if (currentGrid[i][j] == PATH) {
          image(Path, X, Y, 35, 35);
        }  
        else if (currentGrid[i][j] == SMALL_HALLWAY_HORIZ) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100);
          image(smallHallwayHoriz, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == SMALL_HALLWAY_VERT) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(smallHallwayVert, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == MOVEABLE_WALL_MID){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j] == DOOR) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(Door, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == MOVEABLE_WALL_SIDE){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j] == FINISH){
          finX = X;
          finY =Y;
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 255);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j]==START1) {
          fill(153);
          rect(X, Y, 35, 35);
          startX1 = X + 17;
          startY1 = Y + 17;
          char1.posX = startX1;
          char1.posY = startY1;
          currentGrid[i][j]=PATH;
        }
        else if (currentGrid[i][j]==START2){
          fill(153);
          rect(X, Y, 35, 35);
          startX2 = X + 17;
          startY2 = Y + 17;
          char2.posX = startX2;
          char2.posY = startY2;
          currentGrid[i][j]=PATH;          
        }
        
        //code for moveable walls
        if (char12) {
          if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j - 1] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i][j + 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j - 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j + 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          } 
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i - 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i + 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
        } else {
          if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j - 1] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j + 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j - 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j + 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          } 
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i - 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i + 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
        }
      } 
    }    
  }
}

class Maze {
  int xCord1, yCord1, xCord2, yCord2;
  int X;
  int Y;
  boolean wallMoved = false;
  int textCooldown = 100;
  float textY, textX, textYStart;
  boolean animating = false;
  
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
        else if (currentGrid[i][j] == PATH) {
          image(Path, X, Y, 35, 35);
        }  
        else if (currentGrid[i][j] == SMALL_HALLWAY_HORIZ) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
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
          image(MoveableWall, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == DOOR) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(Door, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == MOVEABLE_WALL_SIDE){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(MoveableWall, X, Y, 35, 35);
        }
        else if (currentGrid[i][j] == FINISH){
          finX = X;
          finY = Y;
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 255);
          image(Finish, X, Y, 35, 35);
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
               wallMoved = true;
               if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
               }
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j + 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          } 
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i - 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i + 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          }
        } else {
          if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j - 1] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j + 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j - 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
             currentGrid[i][j + 1] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          } 
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i - 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          }
          else if(currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
             currentGrid[i + 1][j] = PATH;
             keys[key] = false;
             penaltyMiliSeconds += 2000;
             wallMoved = true;
             if(!animating){
                textYStart = Y + 70;
                textX = X;
                textY = Y;
              }
            }
          }
        }
        if(currentGrid[i][j] == MOVEABLE_WALL_SIDE && char1.posX > X && char1.posX < X + 35 && char1.posY > Y && char1.posY < Y + 35){
          char1.posX = startX1;
          char1.posY = startY1;
        }
        if(currentGrid[i][j] == MOVEABLE_WALL_SIDE && char2.posX > X && char2.posX < X + 35 && char2.posY > Y && char2.posY < Y + 35){
          char2.posX = startX2;
          char2.posY = startY2;
        }
      }
      if(wallMoved && textCooldown != 0){
        fill(255, 0, 255);
        textY += (textYStart - textY) * 0.02;
        text("+2 sec.", textX, textY);
        textCooldown--;
        animating = true;
      }else{
        wallMoved = false;
        textCooldown = 500;
        animating = false;
      }
    }
  }
}

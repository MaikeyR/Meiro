class Maze {
  int xCord1, yCord1, xCord2, yCord2;
  int X = 10;
  int Y = 10;

  boolean wallMoved = false;
  boolean wallMovedLastFrame = false;
  int textCooldown = 100;
  float textY, textX, textYStart;
  boolean animating, falling = false;
  int fallingCount = 100;
  float fallingX, fallingY;
  String wallDirection;
  float wallX, wallY, wallYStart, wallXStart;
  float wallMovement = 0.04;
  boolean mayMoveWall = true;

  boolean corButton, donButton = false;


  void gridSetup() {

    for (int i = 0; i < 20; i++) {

      for (int u = 0; u < 30; u++) {

        walls[i][u] = new Wall();
      }
    }
  }

  void wallDraw() {
    //Draws maze, reads out which block to draw.
    for (int i = 0; i < 20; i++) {
      for (int j = 0; j < 30; j++) {
        X = j * 35;
        Y = i * 35;

        if (grid.currentGrid[i][j]==WALL) {
          fill(204, 102, 0);
          walls[i][j].y = Y;
          walls[i][j].x = X;
          walls[i][j].draw();
        } else if (grid.currentGrid[i][j] == PATH) {
          image(path, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == SMALL_HALLWAY_HORIZ) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(smallHallwayHoriz, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == SMALL_HALLWAY_VERT) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(smallHallwayVert, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(moveableWall, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == HOLE) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(door, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_SIDE) {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          image(path, X+screenShakeX, Y+screenShakeY, 35, 35);
          image(moveableWall, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j] == FINISH) {
          finX = X;
          finY = Y;
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 255);
          image(finish, X+screenShakeX, Y+screenShakeY, 35, 35);
        } else if (grid.currentGrid[i][j]==START1) {
          fill(153);
          rect(X, Y, 35, 35);
          startX1 = X + 17;
          startY1 = Y + 17;
          char1.posX = startX1;
          char1.posY = startY1;
          grid.currentGrid[i][j]=PATH;
        } else if (grid.currentGrid[i][j]==START2) {
          fill(153);
          rect(X, Y, 35, 35);
          startX2 = X + 17;
          startY2 = Y + 17;
          char2.posX = startX2;
          char2.posY = startY2;
          grid.currentGrid[i][j]=PATH;
        } else if (grid.currentGrid[i][j]==COR_BUTTON) {
          if (!corButton) {
            fill(200, 0, 0);
            rect(X+screenShakeX, Y+screenShakeY, 35, 35);
          } else {
            grid.currentGrid[i][j] = PATH;
          }
        } else if (grid.currentGrid[i][j]==DON_BUTTON) {
          if (!donButton) {
            fill(0, 200, 0);
            rect(X+screenShakeX, Y+screenShakeY, 35, 35);
          } else {
            grid.currentGrid[i][j] = PATH;
          }
        } else if (grid.currentGrid[i][j]==COR_BUTTON_DOOR) {
          if (!corButton) {
            fill(100, 0, 0);
            rect(X+screenShakeX, Y+screenShakeY, 35, 35);
          } else {
            grid.currentGrid[i][j] = PATH;
          }
        } else if (grid.currentGrid[i][j]==DON_BUTTON_DOOR) {
          if (!donButton) {
            fill(0, 100, 0);
            rect(X+screenShakeX, Y+screenShakeY, 35, 35);
          } else {
            grid.currentGrid[i][j] = PATH;
          }
        }

        //code for the button and door mechanic
        if (grid.currentGrid[i][j] == COR_BUTTON && char2.posX > X && char2.posX < X + 35 && char2.posY > Y && char2.posY < Y + 35) {
          corButton = true;
        } else if (grid.currentGrid[i][j] == DON_BUTTON && char1.posX > X && char1.posX < X + 35 && char1.posY > Y && char1.posY < Y + 35) {
          donButton = true;
        }




        //code for moveable walls
        if (char12) {
          if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i][j - 1] == MOVEABLE_WALL_SIDE) {
            if ((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i][j + 1] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i][j - 1] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;

              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;

                wallDirection = "RIGHT";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE) {
            if ((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i][j + 1] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;

              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "LEFT";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE) {
            if ((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i - 1][j] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;
              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "DOWN";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE) {
            if ((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i + 1][j] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;
              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "UP";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          }
        } else {
          if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i][j - 1] == MOVEABLE_WALL_SIDE) {
            if ((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i][j + 1] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i][j - 1] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;

              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "RIGHT";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i][j + 1] == MOVEABLE_WALL_SIDE) {
            if ((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i][j - 1] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i][j + 1] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;
              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "LEFT";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i - 1][j] == MOVEABLE_WALL_SIDE) {
            if ((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i + 1][j] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i - 1][j] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;
              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "DOWN";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          } else if (grid.currentGrid[i][j] == MOVEABLE_WALL_MID && keys['q'] && grid.currentGrid[i + 1][j] == MOVEABLE_WALL_SIDE) {
            if ((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70 && mayMoveWall)) {
              grid.currentGrid[i - 1][j] = MOVEABLE_WALL_SIDE;
              grid.currentGrid[i + 1][j] = PATH;
              keys[key] = false;
              penaltyMiliSeconds += 2000;
              wallMoved = true;
              screenShake.wallMovedscreenShake = true;
              if (!animating) {
                textYStart = Y + 70;
                textX = X;
                textY = Y;
                wallDirection = "UP";
                wallX = X;
                wallY = Y;
                wallYStart = Y;
                wallXStart = X;
              }
            }
          }
        }
        if ((grid.currentGrid[i][j] == HOLE && char2.posX > X + 5 && char2.posX < X + 30 && char2.posY > Y + 5 && char2.posY < Y + 30 && !falling)) {
          fall.rewind();
          fall.play();
          falling = true;
          fallingX = char2.posX;
          fallingY = char2.posY;
        }
        if (falling && char2.size > 0) {
          char2.posX = fallingX;
          char2.posY = fallingY;
          char2.size -= 0.00038;
          if (char2.size <= 0) {
            char2.posX = startX2;
            char2.posY = startY2;
            char2.size = 14;
            falling = false;
            screenShake.screenShakeKlein();
          }
        }

        if (grid.currentGrid[i][j] == MOVEABLE_WALL_SIDE && char1.posX > X && char1.posX < X + 35 && char1.posY > Y && char1.posY < Y + 35) {
          char1.posX = startX1;
          char1.posY = startY1;
        }
        if (grid.currentGrid[i][j] == MOVEABLE_WALL_SIDE && char2.posX > X && char2.posX < X + 35 && char2.posY > Y && char2.posY < Y + 35) {
          char2.posX = startX2;
          char2.posY = startY2;
        }
      }

      if (wallMoved && wallMovedLastFrame == false) {

        grunt.rewind();
        grunt.play();
      }
      if (wallMoved) {
        mayMoveWall = false;
        wallMovedLastFrame = true;
      } else {

        wallMovedLastFrame = false;
      }
      if (wallDirection == "UP") {
        println("UP");
        image(path, wallXStart+screenShakeX, wallYStart - 35+screenShakeY, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY + 35, 35, 35);
        wallY -= wallMovement;
        if (wallY <= wallYStart - 35) {
          wallDirection = "NULL";
          mayMoveWall = true;
        }
      } else if (wallDirection == "DOWN") {
        println("DOWN");
        image(path, wallXStart+screenShakeX, wallYStart+screenShakeY + 35, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY - 35, 35, 35);
        wallY += wallMovement;
        if (wallY >= wallYStart + 35) {
          wallDirection = "NULL";
          mayMoveWall = true;
        }
      } else if (wallDirection == "LEFT") {
        println("LEFT");
        image(path, wallXStart - 35 +screenShakeX, wallYStart+screenShakeY, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY, 35, 35);
        image(moveableWall, wallX + 35 +screenShakeX, wallY+screenShakeY, 35, 35);
        wallX -= wallMovement;
        if (wallX <= wallXStart - 35) {
          wallDirection = "NULL";
          mayMoveWall = true;
        }
      } else if (wallDirection == "RIGHT") {
        println("RIGHT");
        image(path, wallXStart + 35+screenShakeX, wallYStart+screenShakeY, 35, 35);
        image(moveableWall, wallX+screenShakeX, wallY+screenShakeY, 35, 35);
        image(moveableWall, wallX - 35+screenShakeX, wallY+screenShakeY, 35, 35);
        wallX += wallMovement;
        if (wallX >= wallXStart + 35) {
          wallDirection = "NULL";
          mayMoveWall = true;
        }
      }
      if (wallMoved && textCooldown != 0) {
        fill(255, 0, 255);
        textY += (textYStart - textY) * 0.02;
        text("+2 sec.", textX, textY);
        textCooldown--;
        animating = true;
      } else {
        wallMoved = false;
        textCooldown = 500;
        animating = false;
      }
    }
  }
}

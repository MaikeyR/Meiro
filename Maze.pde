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
    //tekent het doolhof en bepaald waar welk blokje komt
    for (int i = 0 ; i < 20 ; i++) {
      for (int j = 0 ; j < 30 ; j++) {
        X = j * 35;
        Y = i * 35;
        
        if (currentGrid[i][j]=='a') {
          fill(204, 102, 0);
          walls[i][j].y = Y;
          walls[i][j].x = X;
          walls[i][j].draw();

        }
        else if (currentGrid[i][j]=='b') {
          fill(153);
          rect(X, Y, 35, 35);
        } 
        else if (currentGrid[i][j]=='s') {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j] == 'w'){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j]=='d') {
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(255, 0, 155);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j] == 'v'){
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 100);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j] == 'f'){
          finX = X;
          finY =Y;
          walls[i][j].y = Y;
          walls[i][j].x = X;
          fill(100, 0, 255);
          walls[i][j].draw();
        }
        else if (currentGrid[i][j]=='1') {
          fill(153);
          rect(X, Y, 35, 35);
          startX1 = X + 17;
          startY1 = Y + 17;
          char1.posX = startX1;
          char1.posY = startY1;
          currentGrid[i][j]='b';
        }
        else if (currentGrid[i][j]=='2') {
          fill(153);
          rect(X, Y, 35, 35);
          startX2 = X + 17;
          startY2 = Y + 17;
          char2.posX = startX2;
          char2.posY = startY2;
          currentGrid[i][j]='b';          
        }
        
        //code voor de beweegbare muur
        if (char12) {
          
          if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i][j - 1] == 'v'){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i][j + 1] = 'v';
             currentGrid[i][j - 1] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i][j + 1] == 'v'){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i][j - 1] = 'v';
             currentGrid[i][j + 1] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          } 
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i - 1][j] == 'v'){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i + 1][j] = 'v';
             currentGrid[i - 1][j] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i + 1][j] == 'v'){
            if((char1.posX > X - 70 && char1.posX < X + 105 && char1.posY > Y - 35 && char1.posY < Y + 70)){
             currentGrid[i - 1][j] = 'v';
             currentGrid[i + 1][j] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
        }
        
        else {
          
          if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i][j - 1] == 'v'){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j + 1] = 'v';
             currentGrid[i][j - 1] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          }
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i][j + 1] == 'v'){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i][j - 1] = 'v';
             currentGrid[i][j + 1] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2000;
            }
          } 
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i - 1][j] == 'v'){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i + 1][j] = 'v';
             currentGrid[i - 1][j] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2;
            }
          }
          else if(currentGrid[i][j] == 'w' && keys['q'] && currentGrid[i + 1][j] == 'v'){
            if((char2.posX > X - 70 && char2.posX < X + 105 && char2.posY > Y - 35 && char2.posY < Y + 70)){
             currentGrid[i - 1][j] = 'v';
             currentGrid[i + 1][j] = 'b';
             keys[key] = false;
             penaltyMiliSeconds += 2;
            }
          }
        }
      } 
    }    
  }
}
class Keyboard{
  float size = 1.00;
  char[] qwerty = new char[]{
    'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P',
    'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ' ',
    'Z', 'X', 'C', 'V', 'B', 'N', 'M', ' ', ' ', ' '};
  boolean spacePressed = false;  

  String l1;
  String l2;
  String l3;
  String name;
  String nameArray[] = new String[3];
  String theLetter;
    
  
  //Keyboard for the 3 initials for the highscore
  void draw(){
    clear();
    background(backgroundColour);
    if(selectedX != 9 && keys['d']){
       selectedX += 1; 
    }
    if(selectedX != 0 && keys['a']){
      selectedX -= 1;
    }
    if(selectedY != 0 && keys['w']){
      selectedY -= 1;
    }
    if(selectedY != 2 && keys['s']){
      selectedY += 1; 
    }
    if(keys['q'] == true){
      spacePressed = true;
    }
      

        
    int i = 0;
    int j = 0;
    //int teller = 0;
    while(i < 3){
      while(j <= 10){
        fill(buttonColour);
        rect(j * (width / 10), (i * 100) + 420, width / 10, 100);
        j++;
      }
      i++;
      j = 0;
    }
    fill(buttonSelectedColour);
    rect(selectedX * width / 10 ,selectedY * 100 + 420, width / 10, 100);
    
    for(int I = 0; I < 3; I++){
      for(int J = 0; J < 10; J++){
        fill(textColour);
        textSize(70);
        int letter = I * 10 + J;
        text(qwerty[letter], J * (width / 10) + 40, I * 100 + 500);
        if((I * 10 + J) == qwerty.length - 1){
          break;
        }
      }
    }
    textSize(45);
    text("Done", 1160, 600);
    
    int selectedLetter = selectedX + (selectedY * 10);
    
    
    if(keys['q'] && charNumber < 3 && selectedLetter != 19 && selectedLetter <= 26){
      charNumber++;    
      switch(charNumber){
        case 1: 
          letter1 = qwerty[selectedLetter];
          break;
        case 2: 
          letter2 = qwerty[selectedLetter];
          break;
        case 3: 
          letter3 = qwerty[selectedLetter];
          break;
      }
  }
  
  
  //To go to highscore screen
  else if(selectedLetter == 19 && keys['q'] && letter1 != '_' && letter2 != '_' && letter3 != '_'){
    
    nameArray[0] = str(letter1);
    nameArray[1] = str(letter2);
    nameArray[2] = str(letter3);
    saveStrings("Name.txt", nameArray);
    screen = 0;
  }
  

  if(keys['e']){
    charNumber--;
    switch(charNumber + 1){
     case 3:
       letter3 = '_';
       break;
     case 2:
       letter2 = '_';
       break;
     case 1:
       letter1 = '_';
       break;
    }
  }
  
  textSize(70);
  text(letter1, 100, 100);
  text(letter2, 200, 100);
  text(letter3, 300, 100);
   
  
    
    if(key != CODED){
      keys[key] = false;
    }
  }
}  

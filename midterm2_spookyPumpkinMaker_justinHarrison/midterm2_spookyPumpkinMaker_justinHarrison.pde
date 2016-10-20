//Justin Harrison
//Spooky Pumpkin Maker


//images obtained from Pixabay.com 
void setup(){
  size(900, 800);
  background(0);
  
  
}

//pumpkin 
int pumpkin = 0;
int eyes = 0;
int nose  = 0;
int mouth = 0;

//shifters
int state = 1;
int val = 0;
int arrayPos = 0;
int ran = 0;


void draw(){
  
  //fonts
  PFont font1;
  PFont font2;
  font1 = createFont("DoubleFeature", 36);
  font2 = createFont("AmericanTypewriter", 16);
  textFont(font2);
  
  //image arrays
  PImage[] pumpkinImages = new PImage[4];
  pumpkinImages[0] = loadImage("pumpkin1.png");
  pumpkinImages[1] = loadImage("pumpkin2.png");
  pumpkinImages[2] = loadImage("pumpkin3.png");
  pumpkinImages[3] = loadImage("pumpkin4.png");
  
  PImage[] eyeList = new PImage[8];
  eyeList[0] = loadImage("eyes1.png");
  eyeList[1] = loadImage("eyes2.png");
  eyeList[2] = loadImage("eyes3.png");
  eyeList[3] = loadImage("eyes4.png");
  eyeList[4] = loadImage("eyes5.png");
  eyeList[5] = loadImage("eyes6.png");
  eyeList[6] = loadImage("eyes7.png");
  eyeList[7] = loadImage("eyes8.png");
  
  PImage[] noseList = new PImage[5];
  noseList[0] = loadImage("nose1.png");
  noseList[1] = loadImage("nose2.png");
  noseList[2] = loadImage("nose3.png");
  noseList[3] = loadImage("nose4.png");
  noseList[4] = loadImage("nose5.png");
  
  PImage[] mouthList = new PImage[4];
  mouthList[0] = loadImage("mouth1.png");
  mouthList[1] = loadImage("mouth2.png");
  mouthList[2] = loadImage("mouth3.png");
  mouthList[3] = loadImage("mouth4.png");
  
//beginning of states
  if(state == 1){
    background(loadImage("background.png"));
    textFont(font2);
    textSize(36);
    textMode(CENTER);
    text("We're going to build a Jack-O-Lantern", 125, 200);
    textSize(20);
    textMode(CENTER);
    text("Use the enter key to navigate forward throughout the game", 165, 400);
   
  }
  else if(state == 2){
    background(loadImage("background.png"));
    textFont(font2);
    textSize(30);
    textMode(CENTER);
    text("Click 1 to visit the pumpkin patch", 200, 250);
    text("Click 2 to randomly generate a finished jack-o-lantern", 75, 500);
  } 
   else if(state == 3){
    background(loadImage("patch.jpg"));
    textSize(24);
    text("Use the arrow keys to choose a pumpkin for your base", 150, 600);
    imageMode(CENTER);
    image(pumpkinImages[arrayPos], width/2, 300);
  } 
  
    else if (state == 4){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
      text("Carve eyes in to your pumpkin using the arrow keys", 100, 650);
      image(eyeList[arrayPos], width/2, 400, 200, 75);
       
    }else if(state == 5){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
      text("Carve a nose in to your pumpkin using the arrow keys", 100, 650);
      image(eyeList[eyes], width/2, 400, 200, 75);
      image(noseList[arrayPos], width/2, 435, 50, 50);
      
    }else if(state == 6){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
      text("Carve a mouth in to your pumpkin using the arrow keys", 100, 650);
      image(eyeList[eyes], width/2, 400, 200, 75);
      image(noseList[nose], width/2, 435, 50, 50);
      image(mouthList[arrayPos], width/2, 475, 250, 100);
    }else if(state == 7){
      background(loadImage("background.png"));
      buildPumpkin(pumpkin, eyes, nose, mouth);
      textSize(28);
      text("Press enter to restart", width/2-175, 700);
      textFont(font1);
      text("so spooky!!", 100, 100);
      text(" wow, creepy!!!", 560, 300);
      text("that's scary!", 60, 600);
    }else if (state == 8){
      background(loadImage("background.png"));
      randomPumpkin();
      ran = 1;
      textSize(28);
      text("Press enter to restart", width/2-175, 700);
      textFont(font1);
      text("so spooky!!", 100, 100);
      text(" wow, creepy!!!", 560, 300);
      text("that's scary!", 60, 600);
    }
    
}     



void keyPressed(){
  
  if (key == '1'){
    if (state == 2){
      state = 3;
    }
  }
  if (key == '2'){
    if (state == 2){
      state = 8;
    }
  }
  if (key == ENTER ){
    if( state < 9){
     if(state == 1){
       state = state + 1;
     }
     else if (state == 3){
       pumpkin = arrayPos;
       arrayPos = 0;
       state = state + 1;
       }
     else if (state == 4){
       eyes = arrayPos;
       arrayPos = 0;
       state = state + 1;
       }
     else if (state == 5){
       nose = arrayPos;
       arrayPos = 0;
       state = state + 1;
     }else if(state == 6){
       mouth = arrayPos;
       arrayPos = 0;
       state = state + 1;
      }else if(state == 7){
        state = 1;
      }else if (state == 8){
        state = 1;
        ran = 0;
      }
    }
  }
  
  if (key == CODED){
    if (keyCode == RIGHT){
      
      if(state == 3){
      if(arrayPos < 3){
        arrayPos = arrayPos + 1;
      }else if (arrayPos == 3){
        arrayPos = 0;
      }
      }
      if(state == 4){
      if(arrayPos < 7){
        arrayPos = arrayPos + 1;
      }else if (arrayPos == 7){
        arrayPos = 0;
      }
      }
      if(state == 5){
      if(arrayPos < 4){
        arrayPos = arrayPos + 1;
      }else if (arrayPos == 4){
        arrayPos = 0;
      }
      }
      if(state == 6){
      if(arrayPos < 3){
        arrayPos = arrayPos + 1;
      }else if (arrayPos == 3){
        arrayPos = 0;
      }
      }
    }
      
     else if (keyCode == LEFT){
      if(state == 3){
      if(arrayPos > 0){
        arrayPos = arrayPos - 1;
      }else if (arrayPos == 0){
        arrayPos = 3;
      }
      }
      if(state == 4){
      if(arrayPos > 0){
        arrayPos = arrayPos - 1;
      }else if (arrayPos == 0){
        arrayPos = 7;
      }
      }
      if(state == 5){
      if(arrayPos > 0){
        arrayPos = arrayPos - 1;
      }else if (arrayPos == 0){
        arrayPos = 4;
      }
      }
      if(state == 6){
      if(arrayPos > 0){
        arrayPos = arrayPos - 1;
      }else if (arrayPos == 0){
        arrayPos = 3;
      }
      }  
      }
    }
  }


void buildPumpkin(int base, int eyes, int nose, int mouth){
  PImage[] pumpkinImages = new PImage[4];
  pumpkinImages[0] = loadImage("pumpkin1.png");
  pumpkinImages[1] = loadImage("pumpkin2.png");
  pumpkinImages[2] = loadImage("pumpkin3.png");
  pumpkinImages[3] = loadImage("pumpkin4.png");
  
  PImage[] eyeList = new PImage[8];
  eyeList[0] = loadImage("eyes1.png");
  eyeList[1] = loadImage("eyes2.png");
  eyeList[2] = loadImage("eyes3.png");
  eyeList[3] = loadImage("eyes4.png");
  eyeList[4] = loadImage("eyes5.png");
  eyeList[5] = loadImage("eyes6.png");
  eyeList[6] = loadImage("eyes7.png");
  eyeList[7] = loadImage("eyes8.png");
  
  PImage[] noseList = new PImage[5];
  noseList[0] = loadImage("nose1.png");
  noseList[1] = loadImage("nose2.png");
  noseList[2] = loadImage("nose3.png");
  noseList[3] = loadImage("nose4.png");
  noseList[4] = loadImage("nose5.png");
  
  PImage[] mouthList = new PImage[4];
  mouthList[0] = loadImage("mouth1.png");
  mouthList[1] = loadImage("mouth2.png");
  mouthList[2] = loadImage("mouth3.png");
  mouthList[3] = loadImage("mouth4.png");
  
  image(pumpkinImages[pumpkin], width/2, 400);
  image(eyeList[eyes], width/2, 400, 200, 75);
  image(noseList[nose], width/2, 435, 50, 50);
  image(mouthList[mouth], width/2, 475, 250, 100);
}


void randomPumpkin(){
  PImage[] pumpkinImages = new PImage[4];
  pumpkinImages[0] = loadImage("pumpkin1.png");
  pumpkinImages[1] = loadImage("pumpkin2.png");
  pumpkinImages[2] = loadImage("pumpkin3.png");
  pumpkinImages[3] = loadImage("pumpkin4.png");
  
  PImage[] eyeList = new PImage[8];
  eyeList[0] = loadImage("eyes1.png");
  eyeList[1] = loadImage("eyes2.png");
  eyeList[2] = loadImage("eyes3.png");
  eyeList[3] = loadImage("eyes4.png");
  eyeList[4] = loadImage("eyes5.png");
  eyeList[5] = loadImage("eyes6.png");
  eyeList[6] = loadImage("eyes7.png");
  eyeList[7] = loadImage("eyes8.png");
  
  PImage[] noseList = new PImage[5];
  noseList[0] = loadImage("nose1.png");
  noseList[1] = loadImage("nose2.png");
  noseList[2] = loadImage("nose3.png");
  noseList[3] = loadImage("nose4.png");
  noseList[4] = loadImage("nose5.png");
  
  PImage[] mouthList = new PImage[4];
  mouthList[0] = loadImage("mouth1.png");
  mouthList[1] = loadImage("mouth2.png");
  mouthList[2] = loadImage("mouth3.png");
  mouthList[3] = loadImage("mouth4.png");
  
  while ( ran == 0){
  pumpkin = int( random(0, 3) );
  eyes = int( random(0, 7) );
  nose = int( random(0, 4) );
  mouth = int( random(0, 3) );
  ran = 1;
  }
  
  imageMode(CENTER);
  image(pumpkinImages[pumpkin], width/2, height/2);
  image(eyeList[eyes], width/2, height/2-10, 200, 75);
  image(noseList[nose], width/2, height/2+30, 50, 50);
  image(mouthList[mouth], width/2, height/2+70, 250, 100);
  
}
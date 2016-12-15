//Justin Harrison
//Spooky Pumpkin Maker


//images obtained from Pixabay.com 
void setup(){
  size(1000, 700);
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

//colors
int rb1 = 255;
int gb1 = 150;
int bb1 = 0;

int rb2 = 255;
int gb2 = 150;
int bb2 = 0;

float transparency = 0;


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
  
  PImage[] eyeListB = new PImage[8];
  eyeListB[0] = loadImage("eyes1b.png");
  eyeListB[1] = loadImage("eyes2b.png");
  eyeListB[2] = loadImage("eyes3b.png");
  eyeListB[3] = loadImage("eyes4b.png");
  eyeListB[4] = loadImage("eyes5b.png");
  eyeListB[5] = loadImage("eyes6b.png");
  eyeListB[6] = loadImage("eyes7b.png");
  eyeListB[7] = loadImage("eyes8b.png");
  
  PImage[] noseListB = new PImage[5];
  noseListB[0] = loadImage("nose1b.png");
  noseListB[1] = loadImage("nose2b.png");
  noseListB[2] = loadImage("nose3b.png");
  noseListB[3] = loadImage("nose4b.png");
  noseListB[4] = loadImage("nose5b.png");
  
  PImage[] mouthListB = new PImage[4];
  mouthListB[0] = loadImage("mouth1b.png");
  mouthListB[1] = loadImage("mouth2b.png");
  mouthListB[2] = loadImage("mouth3b.png");
  mouthListB[3] = loadImage("mouth4b.png");
  

  
   
//beginning of states
  if(state == 1){
    
    background(loadImage("background.png"));
    textFont(font1);
    textSize(60);
    textAlign(CENTER);
    fill(255, 150, 0);
    text("Spooky Pumpkin Maker", width/2 , 200);
    
    //button
    fill(rb1, gb1, bb1);
    rect(375, 525, 250, 100);
    fill(255);
    textFont(font2);
    textSize(40);
    textAlign(CENTER);
    text("Start", width/2, 580);
    
    if (mouseX > 375 && mouseX < 625){
      if (mouseY > 525 && mouseY < 625){
        rb1 = 255;
        gb1 = 200;
        bb1 = 0;  
      }
    }else{
      rb1 = 255;
      gb1 = 150;
      bb1 = 0;
    }
   
  }
  else if(state == 2){
    background(loadImage("background.png"));
    //button1
    fill(rb1, gb1, bb1);
    rect(300, 200, 400, 100);
    fill(255);
    textFont(font2);
    textSize(30);
    textAlign(CENTER);
    text("Visit the Pumpkin Patch", width/2 , 260);
    
    text("or", width/2 , 350);
    
    fill(rb2, gb2, bb2);
    rect(300, 400, 400, 100);
    fill(255);
    textFont(font2);
    textSize(30);
    textAlign(CENTER);
    text("Do everything for me", width/2 , 450);
    
    
    if (mouseX > 300 && mouseX < 700){
      if (mouseY > 200 && mouseY < 300){
        rb1 = 255;
        gb1 = 200;
        bb1 = 0;  
      }
    }else{
      rb1 = 255;
      gb1 = 150;
      bb1 = 0;
    }
    
    if (mouseX > 300 && mouseX < 700){
      if (mouseY > 400 && mouseY < 500){
        rb2 = 255;
        gb2 = 200;
        bb2 = 0;  
      }
    }else{
      rb2 = 255;
      gb2 = 150;
      bb2 = 0;
    }
  } 
   else if(state == 3){
     
    background(loadImage("patch.jpg"));
    textSize(24);
   textAlign(CENTER);
    text("Use the arrow keys to choose a pumpkin and press enter to select", width/2, 600);
    imageMode(CENTER);
    image(pumpkinImages[arrayPos], width/2, 300);
  } 
  
    else if (state == 4){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
       textAlign(CENTER);
      text("Use the arrow keys to choose eyes and press enter to select", width/2, 650);
      image(eyeList[arrayPos], width/2, 400, 200, 75);
       
    }else if(state == 5){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
       textAlign(CENTER);
      text("Use the arrow keys to choose a nose and press enter to select", width/2, 650);
      image(eyeList[eyes], width/2, 400, 200, 75);
      image(noseList[arrayPos], width/2, 435, 50, 50);
      
    }else if(state == 6){
      background(loadImage("counter.jpg"));
      image(pumpkinImages[pumpkin], width/2, 400);
      textSize(28);
      textAlign(CENTER);
      text("Use the arrow keys to choose a mouth and press enter to select", width/2, 650);
      image(eyeList[eyes], width/2, 400, 200, 75);
      image(noseList[nose], width/2, 435, 50, 50);
      image(mouthList[arrayPos], width/2, 475, 250, 100);
    }else if(state == 7){
      background(loadImage("background.png"));
      tint(255, 255);
      buildPumpkin(pumpkin, eyes, nose, mouth);
      lightPumpkin();
      image(eyeListB[eyes], width/2, height/2+50, 200, 75);
      image(noseListB[nose], width/2, height/2+85, 50, 50);
      image(mouthListB[mouth], width/2, height/2+125, 250, 100);
      textFont(font1);
      text("so spooky!!", 250, 100);
      text("so spooky!!", 800, 500);
      text(" wow, creepy!!!", 200, 300);
      text(" wow, creepy!!!", 750, 100);
      text("that's scary!", 200, 500);
      text("that's scary!", 800, 300);
      fill(rb1, gb1, bb1);
    rect(375, 575, 250, 100);
    fill(255);
    textFont(font2);
    textSize(40);
    textAlign(CENTER);
    text("Restart", width/2, 640);
    
    if (mouseX > 375 && mouseX < 625){
      if (mouseY > 525 && mouseY < 625){
        rb1 = 255;
        gb1 = 200;
        bb1 = 0;  
      }
    }else{
      rb1 = 255;
      gb1 = 150;
      bb1 = 0;
    }

    }else if (state == 8){
      background(loadImage("background.png"));
      tint(255, 255);
      randomPumpkin();
      lightPumpkin();
      image(eyeListB[eyes], width/2, height/2-10, 200, 75);
      image(noseListB[nose], width/2, height/2+30, 50, 50);
      image(mouthListB[mouth], width/2, height/2+70, 250, 100);
      ran = 1;
      textSize(28);
      textFont(font1);
      text("so spooky!!", 250, 100);
      text("so spooky!!", 800, 500);
      text(" wow, creepy!!!", 200, 300);
      text(" wow, creepy!!!", 750, 100);
      text("that's scary!", 200, 500);
      text("that's scary!", 800, 300);
      fill(rb1, gb1, bb1);
      rect(375, 575, 250, 100);
      fill(255);
    textFont(font2);
    textSize(40);
    textAlign(CENTER);
    text("Restart", width/2, 640);
    
    if (mouseX > 375 && mouseX < 625){
      if (mouseY > 525 && mouseY < 625){
        rb1 = 255;
        gb1 = 200;
        bb1 = 0;  
      }
    }else{
      rb1 = 255;
      gb1 = 150;
      bb1 = 0;
    }

    }
    
}     



void keyPressed(){
  
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
  
  
void mousePressed(){
  if (state == 1){
   if (mouseX > 375 && mouseX < 625){
      if (mouseY > 525 && mouseY < 625){
        state = state + 1; 
      }
    }
  }
  if (state == 2){
     if (mouseX > 300 && mouseX < 700){
      if (mouseY > 400 && mouseY < 500){
        state = 8;
      }else if(mouseX > 300 && mouseX < 700){
      if (mouseY > 200 && mouseY < 300){
        state = state + 1;
    }
  }
  }

  }
  
  if (state == 7){
    if (mouseX > 375 && mouseX < 625){
      if (mouseY > 575 && mouseY < 675){
        state = 1; 
      }
    }
  }
  if (state == 8){
    if (mouseX > 375 && mouseX < 625){
      if (mouseY > 575 && mouseY < 675){
        state = 1; 
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

void lightPumpkin(){
 if(transparency < 255){
         transparency += 15;
       }
  tint(255, transparency);
      
}
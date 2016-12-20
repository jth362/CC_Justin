//The Gallery 
//Justin Harrison

//import statements
import gab.opencv.*;
import processing.video.*;
import java.awt.*;

//painting variables
Capture video;
OpenCV opencv;
int counter;
int paintStyle, width1, width2, x, y, colLoc, rowLoc, colorSwitch;
color c;
int videoScale = 10;
int cols, rows, yesOrNo;

//environment variables
PImage marble, easel, frame, arrow1, arrow2;
int state = 1;
Table filenames;
PFont font;
int count;

//image variables
PImage portrait1, portrait2, portrait3, portrait4, portrait5, portrait6, portrait7, portrait8, portrait9, portrait10;
int arrayPos = 0;
PImage[] portraits;



void setup(){
  
  //loads images and files
  filenames = loadTable("fileNames.csv");
  font = loadFont("AGaramondPro-Bold-48.vlw");
  easel = loadImage("paintingEnvironment.png");
  marble = loadImage("marbleEnvironment.png");
  frame = loadImage("frame.png");
  arrow1 = loadImage("arrow.png");
  arrow2 = loadImage("arrow2.png");
  
  //create canvas and implement webcam and face recognition
  size(1080, 700);
  background(255);
  video = new Capture(this, 320, 480);
  opencv = new OpenCV(this, 320, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  video.start();
 
   //create grid 
   noStroke();
  smooth();
  cols = video.width/videoScale;
  rows = video.height/videoScale;
  
  //choose paintstyle
  paintStyle = int(random(1, 5));
  yesOrNo = int(random(0,1));
  if(yesOrNo == 1){
    colorSwitch = int(random(0,100));
  }else if(yesOrNo == 0){
    colorSwitch = 1;
  }
  portraitCount = filenames.getInt(0,0);
  portraits = new PImage[10];
  
  portraits[1] = loadImage("portrait" + (portraitCount - 1) + ".jpg");
  portraits[2] = loadImage("portrait" + (portraitCount - 2) + ".jpg");
  portraits[3] = loadImage("portrait" + (portraitCount - 3) + ".jpg");
  portraits[4] = loadImage("portrait" + (portraitCount - 4) + ".jpg");
  portraits[5] = loadImage("portrait" + (portraitCount - 5) + ".jpg");
  portraits[6] = loadImage("portrait" + (portraitCount - 6) + ".jpg");
  portraits[7] = loadImage("portrait" + (portraitCount - 7) + ".jpg");
  portraits[8] = loadImage("portrait" + (portraitCount - 8) + ".jpg");
  portraits[9] = loadImage("portrait" + (portraitCount - 9) + ".jpg");
  
  }

void captureEvent(Capture video){
  video.read();
}


void draw(){
  //loads font
  textFont(font);
  
  //loads pixel
  video.loadPixels();

  //state 1 provides an introduction to the experience
   if(state == 1){
    arrayPos = 0;
    portraits[1] = loadImage("portrait" + (portraitCount - 1) + ".jpg");
    portraits[2] = loadImage("portrait" + (portraitCount - 2) + ".jpg");
    portraits[3] = loadImage("portrait" + (portraitCount - 3) + ".jpg");
    portraits[4] = loadImage("portrait" + (portraitCount - 4) + ".jpg");
    portraits[5] = loadImage("portrait" + (portraitCount - 5) + ".jpg");
    portraits[6] = loadImage("portrait" + (portraitCount - 6) + ".jpg");
    portraits[7] = loadImage("portrait" + (portraitCount - 7) + ".jpg");
    portraits[8] = loadImage("portrait" + (portraitCount - 8) + ".jpg");
    portraits[9] = loadImage("portrait" + (portraitCount - 9) + ".jpg");
    counter = 1000;
    count = 0;
    image(marble, 0, 0);
    textAlign(CENTER);
    textSize(40);
    fill(255,255, 255, 175);
    rect(100, 100, 900, 450);
    fill(0);
    text("Welcome to the Gallery.", 540, 220);
    text("A collection of digitally generated portraits.", 540, 290);
    text("Press the arrow to move forward,", 540, 360);
    text("If you would like to be added to our collection.", 540, 430);
    image(arrow1, 470, 440, 150, 100);
    
    //state 2 informs participants about the face recognition technology
    }else if(state == 2){
    image(marble, 0, 0);
    textSize(40);
    fill(255, 255, 255, 175);
    rect(100, 100, 900, 450);
    fill(0);
    text("Our painter uses face recognition technology", 540, 240);
    text("to create our unique digital portraits.", 540, 300);
    text("The software will begin painting", 540, 360);
    text("as soon as your face is identified.", 540, 420);
    image(arrow1, 470, 440, 150, 100);
    
   //state 3 detects face
  }else if(state == 3){
    scale(2);
    opencv.loadImage(video);
    Rectangle[] faces = opencv.detect();
    if(faces.length > 1){
    state = state + 1;
     background(255);
    }
  image(easel, 0, 0, 540, 350);
  image(video, 180, 50, 180, 260);
  textSize(18);
  
  //state 4 paints the portrait
  }else if(state == 4){
   

    if(paintStyle == 1){
      noStroke();
   
      x = int(random(video.width));

      y = int(random(video.height));

      c = video.get(x, y);
    
      x = x + 380;
      y = y + 120;

      fill(c * colorSwitch);
    
      if(counter > 750){
        width1 = 50;
        width2 = 50;
        ellipse(x, y, width1, width2);
      }else if( counter > 500){
        width1 = 25;
        width2 = 25;
        ellipse(x, y, width1, width2);
      }else if(counter > 250){
        width1 = 15;
        width2 = 15;
        ellipse(x, y, width1, width2);
      }else if(counter > 0){
        width1 = 5;
        width2 = 5;
        ellipse(x, y, width1, width2);
      }
      counter = counter - 1;
      if(counter == 1){
        state = state + 1;
      }
    }else if(paintStyle == 2){
      noStroke();
   
      x = int(random(video.width));

      y = int(random(video.height));

      c = video.get(x, y);
    
      x = x + 360;
      y = y + 100;

      fill(c * colorSwitch);
    
      if(counter > 750){
        width1 = 50;
        width2 = 50;
       rect(x, y, width1, width2);
      }else if( counter > 500){
        width1 = 25;
        width2 = 25;
        rect(x, y, width1, width2);
      }else if(counter > 250){
        width1 = 15;
        width2 = 15;
        rect(x, y, width1, width2);
      }else if(counter > 0){
        width1 = 25;
        width2 = 5;
        rect(x, y, width1, width2);
      }
        counter = counter - 1;
      if(counter == 1){
        state = state + 1;
      }
    }else if(paintStyle == 3){
      noStroke();
   
      x = int(random(video.width));

      y = int(random(video.height));

      c = video.get(x, y);
    
      x = x + 360;
      y = y + 100;

      fill(c * colorSwitch);
    
      if(counter > 750){
        width1 = 50;
        width2 = 50;
       rect(x, y, width1, width2);
      }else if( counter > 500){
        width1 = 50;
        width2 = 5;
        rect(x, y, width1, width2);
      }else if(counter > 250){
        width1 = 15;
        width2 = 5;
        rect(x, y, width1, width2);
      }else if(counter > 0){
        width1 = 10;
        width2 = 5;
        rect(x, y, width1, width2);
      }
        counter = counter - 1;
        println(counter);
      if(counter == 1){
        state = state + 1;
      }
    }else if(paintStyle ==4){
      if(counter > 750){
         colLoc = int(random(0, cols));
        rowLoc = int(random(0, rows));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y, videoScale+30, videoScale+30);
          counter--;
      }else if(counter > 500){
          colLoc = int(random(0, cols/2));
        rowLoc = int(random(rows/5, (rows/5)*3));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y, videoScale, videoScale);
          counter--;
        }else if(counter > 100){
         colLoc = int(random(cols/2, cols));
        rowLoc = int(random(rows/2, rows));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y-20, videoScale+5, videoScale);
          counter--;
      }else if(counter > 2){
          colLoc = int(random(cols, cols));
        rowLoc = int(random(rows, rows));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y+100, videoScale+10, videoScale+10);
          counter--;
      }else{
        state = state + 1;
      }
    }
    
    //state 5 saves the portrait
    }else if(state == 5){
     savePortrait();
     portraits[0] = loadImage("portrait" + (portraitCount - 1) + ".jpg");
     state = state + 1;
     
     //state 6 notifies participant of finished portrait
    }else if(state == 6){
     textSize(40);
    fill(255, 255, 255, 10);
    rect(100, 100, 900, 450);
    fill(0);
    text("Your portrait is finished!", 540, 240);
    text("Press the arrow to see it displayed", 540, 280);
    text(" alongside other recent portraits.", 540, 320);
    image(arrow1, 480, 360, 150, 100);
     
  
    //state 7 displays portraits
    }else if(state == 7){
     image(marble, 0,0);
     fill(0);
     rect(400, 640, 300, 50);
     fill(255);
     textSize(40);
     text("Restart", 540, 675);
     image(portraits[arrayPos].get(360, 120, 350, 500), 330, 40, 435, 575);
     image(frame, 275, -10, 550, 650);
     image(arrow1, 900, 300, 150, 100);
     image(arrow2, 50, 300, 150, 100);
     paintStyle = int(random(1, 5));
    }
     
    } 

void mousePressed(){
  
  if (state == 1){
    if( mouseX > 470 && mouseX <  620){
    if(mouseY > 440 && mouseY < 540){
        state = state + 1;
    }
    }
  }
  
  if (state == 2){
    if( mouseX > 470 && mouseX <  620){
    if(mouseY > 440 && mouseY < 540){
       state = state;
        count = count + 1;
        if (count == 2){
          state = state + 1;
        }
    }
    }
  }
  
  if (state == 6){
    if( mouseX > 480 && mouseX < 630){
    if(mouseY > 360 && mouseY < 460){
      state = state + 1;
      }
    }
    }
  
  
  if (state == 7){
    if( mouseX > 50 && mouseX <  200){
    if(mouseY > 300 && mouseY < 400){
      if(arrayPos > 0){
        arrayPos = arrayPos - 1;
        println(arrayPos);
      }else if (arrayPos == 0){
        arrayPos = 9;
      }
    }
    }
    
    if( mouseX > 900 && mouseX <  1050){
    if(mouseY > 300 && mouseY < 400){
       if(arrayPos < 9){
        arrayPos = arrayPos + 1;
      }else if (arrayPos == 9){
        arrayPos = 0;
      }
    }
    }
    
    if( mouseX > 400 && mouseX <  700){
    if(mouseY > 640 && mouseY < 690){
       state = 1;
       
    }
    }
    
  }
}
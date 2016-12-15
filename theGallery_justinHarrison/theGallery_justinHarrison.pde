import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
int counter = 1000;
int counter2 = 10;
Table filenames;

PFont font;

//painting variables
int paintStyle, width1, width2, x, y, colLoc, rowLoc, colorSwitch;
color c;

int videoScale = 10;
int cols, rows, yesOrNo;

//environment variables
PImage marble, easel;
int state = 1;

//output variables
PImage portrait1, portrait2, portrait3, portrait4, portrait5, portrait6, portrait7, portrait8, portrait9, portrait10;

void setup(){
  filenames = loadTable("fileNames.csv");
  font = loadFont("AGaramondPro-Bold-48.vlw");
  size(1080, 700);
  easel = loadImage("paintingEnvironment.png");
  marble = loadImage("marbleEnvironment.png");
  video = new Capture(this, 320, 480);
  opencv = new OpenCV(this, 320, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  video.start();
  background(255);
  noStroke();
  smooth();
 
  cols = video.width/videoScale;
  rows = video.height/videoScale;
  paintStyle = int(random(1, 5));
  yesOrNo = int(random(0,1));
}

void captureEvent(Capture video){
  video.read();
}


void draw(){
  textFont(font);
 
  if(yesOrNo == 1){
    colorSwitch = int(random(0,100));
  }else if(yesOrNo == 0){
    colorSwitch = 1;
  }
  video.loadPixels();
  if(state == 1){
    image(marble, 0, 0);
    fill(0);
    textAlign(CENTER);
    textSize(40);
    text("Welcome to the Gallery.", 540, 230);
    text("We are a collection of digital portraits.", 540, 280);
    text("If you would like to have your portrait painted,", 540, 330);
    text("and added to our collection, please continue", 540, 380);
    textSize(16);
    text("Navigate forward by pressing the mouse", 540, 450);
    }else if(state == 2){
    image(marble, 0, 0);
    textSize(32);
    text("On the next screen, our painter will attempt to detect your face.", 540, 280);
    text("However, this may take some time", 540, 330);
    text("Simply press your mouse to progress without face detection", 540, 380);
  }else if(state == 3){
    scale(2);
    opencv.loadImage(video);
    Rectangle[] faces = opencv.detect();
    if(faces.length > 1){
    state = state + 1;
     background(255);
    }
  image(easel, 0, 0, 540, 350);
  textSize(18);
  
  }else if(state == 4){
   
  //create video on easel
  
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
      println(counter);
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
        println(counter);
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
    
      if(counter > 1500){
        width1 = 50;
        width2 = 50;
       rect(x, y, width1, width2);
      }else if( counter > 1000){
        width1 = 50;
        width2 = 5;
        rect(x, y, width1, width2);
      }else if(counter > 500){
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
      if(counter > 1500){
         colLoc = int(random(0, cols));
        rowLoc = int(random(0, rows));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y, videoScale+30, videoScale+30);
          counter--;
      }else if(counter > 1000){
          colLoc = int(random(0, cols/2));
        rowLoc = int(random(rows/5, (rows/5)*3));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y, videoScale, videoScale);
          counter--;
        }else if(counter > 500){
         colLoc = int(random(0, cols/4));
        rowLoc = int(random(rows/5, rows/5*3));
          x = colLoc * videoScale + 375;
          y = rowLoc * videoScale + 125;
          c = video.pixels[(colLoc + rowLoc*video.width) * 10];
          fill(c * colorSwitch);
          noStroke();
          ellipse(x, y-20, videoScale+5, videoScale);
          counter--;
      }else if(counter > 2){
          colLoc = int(random(cols/2, cols));
        rowLoc = int(random(rows/5, rows/5*3));
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
    }else if(state == 5){
      savePortrait();
      state = state + 1;
    }else if(state == 6){
     image(marble, 0,0);
     textSize(20);
     fill(0);
     text("Your portrait is finished!", 540, 400);
     text("Move to the next page to see it on display", 540, 450);
    }else if(state == 7){
     assignPortraits();
     image(marble, 0,0);
     image(portrait1, 50, 25, 175, 300);
     image(portrait2, 250, 25, 175, 300);
     image(portrait3, 450, 25, 175, 300);
     image(portrait4, 650, 25, 175, 300);
     image(portrait5, 850, 25, 175, 300);
     image(portrait6, 50, 375, 175, 300);
     image(portrait7, 250, 375, 175, 300);
     image(portrait8, 450, 375, 175, 300);
     image(portrait9, 650, 375, 175, 300);
     image(portrait10, 850, 375, 175, 300);
    }else if(state == 8){
       image(marble, 0,0);
       textSize(50);
       fill(0);
       text("Thank you for visitng the Gallery", 425, 300);
       text("Press the mouse to restart", 425, 400);
     }
    }  

void mousePressed(){
  if (state < 8){
  state = state + 1;
  }else{
   state = 1;
  }
}
  
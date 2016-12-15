import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
int counter = 2000;

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
PImage portrait;
String imageName;

void setup(){
  font = loadFont("AGaramondPro-Bold-48.vlw");
  //fills array with 10 most recent portraits
  for (int i=0; i<10; i++){
    imageName = "portrait" + str(i) + ".png";
    paintings[i] = loadImage(imageName);
    }
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
  paintStyle = int(random(0, 5));
  yesOrNo = int(random(0,1));
}

void captureEvent(Capture video){
  video.read();
}


void draw(){
  textFont(font);
  
  println("paintStyle" + paintStyle);
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
    textSize(50);
    text("Welcome to the Gallery.", 540, 230);
    textSize(32);
    text("If you would like to have your portrait painted,", 540, 400);
    text("and added to our collection, please remain in your seat.", 540, 450);
  }else if(state == 2){
    scale(2);
    opencv.loadImage(video);
    Rectangle[] faces = opencv.detect();
    println(faces.length);
    if(faces.length > 1){
    state = state + 1;
     background(255);
    }
  image(easel, 0, 0, 540, 350);
  }else if(state == 3){
  //create video on easel
  
    if(paintStyle == 1){
      noStroke();
   
      x = int(random(video.width));

      y = int(random(video.height));

      c = video.get(x, y);
    
      x = x + 380;
      y = y + 120;

      fill(c * colorSwitch);
    
      if(counter > 1500){
        width1 = 50;
        width2 = 50;
        ellipse(x, y, width1, width2);
      }else if( counter > 1000){
        width1 = 25;
        width2 = 25;
        ellipse(x, y, width1, width2);
      }else if(counter > 500){
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
    
      if(counter > 1500){
        width1 = 50;
        width2 = 50;
       rect(x, y, width1, width2);
      }else if( counter > 1000){
        width1 = 25;
        width2 = 25;
        rect(x, y, width1, width2);
      }else if(counter > 500){
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
      }else if(counter == 1){
        state = state + 1;
      }
    }
    }else if(state == 4){
      savePortrait();
      state = state + 1;
    }else if(state == 5){
      background(255);
      portrait = loadImage("portrait.png");
      image(portrait, 50, 50, 900, 500);
      text("Your finished portrait", 540, 50);   
    }   
  }
   
void savePortrait(){
  saveFrame("/Users/justinharrison/Desktop/finalProject_demo3/data/portrait-#####.png");
}

void mousePressed(){
  state = state + 1;
}
  
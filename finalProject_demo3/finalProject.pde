import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
int counter = 2000;

int w1;
int w2;

int photoFile = 2065;
int var = 0;
int state = 1;
PImage easel1;
PImage easel2;
PImage portrait;
PImage background;

void setup(){
 size(1080, 700);
  easel2 = loadImage("easel2.png");
  background = loadImage("galleryBG.jpg");
  video = new Capture(this, 320, 240);
  opencv = new OpenCV(this, 640, 480);
   image(background, 0, 0);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  video.start();
  background(255);
  noStroke();
  smooth();
}

void captureEvent(Capture video){
  video.read();
}


void draw(){
  if(state == 1){
    textSize(32);
    fill(0);
    textAlign(CENTER);
    text("Welcome to the Gallery.", 540, 350);
    text("If you would like to have your portrait painted,", 540, 400);
    text("and added to our collection, please remain in your seat.", 540, 450);
  }else if(state == 2){
    scale(2);
    opencv.loadImage(video);
    image(video, 0, 0 );
    Rectangle[] faces = opencv.detect();
    println(faces.length);
    if(faces.length > 1){
    state = state + 1;
     background(255);
    }
 
  }else if(state == 3){
  //create video on easel
    noStroke();
   
    int x = int(random(video.width));

    int y = int(random(video.height));

    color pix = video.get(x, y);
    
    int x1 = x + 375;
    int y1 = y + 250;

    fill(pix - 100, 126);
    
    if(counter > 1500){
      w1 = 50;
      w2 = 50;
    ellipse(x1, y1, w1, w2);
    }else if( counter > 1000){
      w1 = 25;
      w2 = 25;
    ellipse(x1, y1, w1, w2);
    }else if(counter > 500){
      w1 = 15;
      w2 = 15;
    ellipse(x1, y1, w1, w2);
    }else if(counter > 0){
      w1 = 5;
      w2 = 5;
    ellipse(x1, y1, w1, w2);
    
    }
    image(easel2, 200,75, 700,600);
    counter = counter - 1;
    println(counter);
    if(counter == 1){
      state = state + 1;
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
  saveFrame("/Users/justinharrison/Documents/Processing/finalProject/data/portrait.png");
}

void mousePressed(){
  state = state + 1;
}
  
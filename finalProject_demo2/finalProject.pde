import gab.opencv.*;
import processing.video.*;
import java.awt.*;

//face-tracking kyle macdonald

Capture video;
OpenCV opencv;
int counter = 2000;

PImage background;

int w1;
int w2;

int photoFile = 2065;
int var = 0;
int state = 3;
PImage easel1;
PImage easel2;
PImage portrait;

void setup(){
 size(1080, 700);
  easel2 = loadImage("easel1.png");
  background = loadImage("galleryBG.jpg");
  video = new Capture(this, 320, 240);
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  video.start();
  background(255);
  noStroke();
  smooth();
  
  for (int i=0; i<4; i++)
  {
    point[i] = new Point((int)random(width/4), (int)random(height/4));
  }
}

void captureEvent(Capture video){
  video.read();
}


void draw(){
  image(background, 0, 0);
 
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
   paintStyle3();
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

  
//use of a video or sound library (or both, if you are feeling super ambitious).
//user input, to create a reactive or interactive sketch.
//as //comments: at the top of your sketch: title, your name, brief description of the work, any instructions or control details.
//as //comments: annotations, explaining what each part does.

//sets up video intake
import processing.video.*;
Capture video;

void setup(){
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video){
  video.read();
}

//establishes variables for rgb and transparency
int i = 0;
int j = 0;
int switc = 0;

int r1 = 255;
int r2 = 0;
int r3 = 0;

int g1 = 0;
int g2 = 0;
int g3 = 255;

int b1 = 255;
int b2 = 0;
int b3 = 0;

int a1 = 20;
int a2 = 20;
int a3 = 20;

void draw(){
textSize(120);
textAlign(CENTER);
text("CLICK ME", width/2, height/2);

//creates three different images of webcam intake with different tints
tint(r1, g1, b1, a1);
image(video, 0,0, width, height);
tint(r2, g2, b2,a2);
image(video, 50-i,50, width-i, height);
tint(r3, g3, b3, a3);
image(video, 100+j,100+j, width-j, height-j);
  
//moves 2 of the images in and out of frame
  if (switc == 0){
    if ( i < 400){
  i = i + 1;
  j = j + 1;
    }else if(i == 400){
    switc = 1;
  }
  }else if (switc == 1){
    if (i > 0){
    i = i - 1;
    j = j - 1;
  }else if(i ==0){
    switc = 0;
  }
  }

//randomly generates rgb and transparency variables each time mouse is pressed
if (mousePressed == true){
  r1 = int(random(0,255));
  r2 = int(random(0,255));
  r3 = int(random(0,255));
 
  g1 = int(random(0,255));
  g2 = int(random(0,255));
  g3 = int(random(0,255));
  
  b1 = int(random(0,255));
  b2 = int(random(0,255));
  b3 = int(random(0,255));
  
  a1 = int(random(0,100));
  a2 = int(random(0,100));
  a3 = int(random(0,100));
  

}
}
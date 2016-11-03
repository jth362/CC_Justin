//Glitch 
//Justin Harrison
//Every time the user clicks the image, a new 'glitch' is created.

//variables
//external images (using the preload() function)
//user input
//an original function
//include //comments at the top of your sketch: title, your name, brief description, any instructions or control details.
//include //comments as annotations.

var capture;

var x1 = 0; 
var x2 = 640;

var y1 = 0;
var y2 = 480;

var r1 = 200;
var r2 = 100;

var g1 = 120;
var g2 = 230;

var b1 = 30;
var b2 = 240;

var t1 = 100;
var t2 = 100;

var r = 5;

var value = 0;

function preload(){
  smile = loadImage('assets/simple-smile.png');
  glitch = loadImage('assets/tv_glitch.jpeg');
}


function setup() {
  createCanvas(640, 480);
  capture = createCapture(VIDEO);
  capture.size(640, 480);
  capture.hide();
}

var state = 1;

function draw() {
   if (mouseIsPressed){
   image(glitch, 0, 0, 640, 480);
  }else{
  createView();
  image(smile, mouseX, mouseY, 50, 50);
  }
}
  
function createView(){
  image(capture, 0, 0, 640, 480);
  
  tint(r1, g1, b1, t1);
  image(capture, x1 + r2, 0, x2 + r2, 480);
  
  tint(r2, g2, b2, t2);
  image(capture, 0, y1 - r1, 640, y2 - r1);
  
 }
 
 
function mouseClicked(){
if (value == 0){
r1 = random(255);
r2 = random(255);

g1 = random(255);
g2 = random(255);

b1 = random(255);
b2 = random(255);

t1 = random(100);
t2 = random(100);

r1 = random(500);
r2 = random(500)
createView();
}
}

  
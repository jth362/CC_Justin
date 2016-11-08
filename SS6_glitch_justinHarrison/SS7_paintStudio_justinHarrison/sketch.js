
//Create a short study in p5.js of a simple user interface for controlling image, text, sound, or video. The sketch must include:
//user input elements from the DOM library (such as slider, button, radio, etc.)
//at least one original function
//include //comments at the top of your sketch: title, your name, brief description, any instructions or control details.
//include //comments as annotations.

var rSlider, gSlider, bSlider;

var radiusSlider;

var transparencySlider;

var tool;

function setup() {
  createCanvas(1080, 600);
  
  // toolbar
  button1 = createButton('Square Brush');
  button1.position(60, 40);
  button1.mousePressed(selectBrush1);
  
  button2 = createButton('Oval Brush');
  button2.position(64, 70);
  button2.mousePressed(selectBrush2);
  
  button3 = createButton('Round Brush');
  button3.position(60, 100);
  button3.mousePressed(selectBrush3);
  
   button3 = createButton('Clear Canvas');
  button3.position(60, 550);
  button3.mousePressed(clearCanvas);
  
  
  //color selection
  rSlider = createSlider(0, 255, 100);
  rSlider.position(20, 210);
  gSlider = createSlider(0, 255, 0);
  gSlider.position(20, 260);
  bSlider = createSlider(0, 255, 255);
  bSlider.position(20, 310);
  
  //brush size
  radiusSlider = createSlider(0, 1000, 50);
  radiusSlider.position(20, 450);
  
  //transparency 
  transparencySlider = createSlider(0, 100, 50);
  transparencySlider.position(20, 500);
  
}

//functions to assign brush variable
function selectBrush1(){
  tool = 1;
}

function selectBrush2(){
  tool = 2;
}

function selectBrush3(){
  tool = 3;
}



function draw() {
  
  //creates toolbar on canvas
  background 
  fill(204);
  rect (0, 0, 200, 600);
  
  //creates text on toolbar
  fill(0);
  textSize(20);
  text('Tools', 70, 25);
  
  text('RGB Settings', 45, 165);
  
  text('Color: Red', 20, 200);
  text('Color: Green', 20,250 );
  text('Color: Blue', 20, 300);
  
  text('Brush Settings', 45, 400);
  
  text('Transparency', 20, 490);
  text('Brush Size', 20, 440);
  
  //creates sliders
  var r = rSlider.value();
  var g = gSlider.value();
  var b = bSlider.value();
  
  var radius = radiusSlider.value();
  
  var a = transparencySlider.value();
  
  //creates brush assigned with function and prevents user from drawing on toolbar
 if(mouseIsPressed){
  console.log(tool);
  if(mouseX > 200){
  if (tool == 1){
  noStroke();
  fill('rgba('+ r + ',' + g + ',' + b + ',' + a/100 +')');
  rect(touchX, touchY, radius, 10);
  }else if(tool == 2){
   noStroke();
   fill('rgba('+ r + ',' + g + ',' + b + ',' + a/100 + ')');
   ellipse(touchX, touchY, radius, 10);
  }else if(tool ==3){
   noStroke();
   fill('rgba('+ r + ',' + g + ',' + b + ',' + a/100 + ')');
   ellipse(touchX, touchY, radius, radius);
  }
     
  }
  }
  }
  
  //clears canvas and recreates toolbar
  function clearCanvas(){
  background(255);
     fill(204);
      rect (0, 0, 200, 600);
  
      fill(0);
      textSize(20);
      text('Tools', 70, 25);
  
      text('RGB Settings', 45, 165);
  
      text('Color: Red', 20, 200);
      text('Color: Green', 20,250 );
      text('Color: Blue', 20, 300);
  
      text('Brush Settings', 45, 400);
  
      text('Transparency', 20, 490);
      text('Brush Size', 20, 440);
  
       var r = rSlider.value();
       var g = gSlider.value();
       var b = bSlider.value();
  
       var radius = radiusSlider.value();
  
      var a = transparencySlider.value();
}

  
  
//Justin Harrison Short Study #2
//Title: Paint
//Key Press: 
//  R(increases red in color)
//  r(decreases red in color)
//  G(increases green in color)
//  g(decreses green in color) 
//  B (increases blue in color)
//  b(decreases blue in color)
//Mouse Press:
//  Increases size of rectangle

void setup(){
  size(800, 800);
  background(255, 255, 255);
}

float r = 255;
float g = 255;
float b = 255;
float w = 10;


void draw(){
  
    fill(r, g, b, w);
    rect(mouseX, mouseY, w, w);
    
  if (keyPressed) {
    if (key == 'd' || key == 'D'){
      background(255);
    }
    if (key == 'r'){
      r = r - 1;
    }
    if (key == 'R'){
      r = r + 1;
    }
    if (key == 'g'){
      g = g - 1;
    }
    if (key == 'G'){
      g = g + 1;
    }
    if (key == 'b'){
      b = b - 1;
    }
    if (key == 'B'){
      b = b + 1;
    }
  }
  
  if(mousePressed) {
    w = w + 1;
  }
  
  if ( w==200){
    w = 10;
}
}
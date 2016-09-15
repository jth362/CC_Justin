void setup(){
  size(1080, 800);
  background(204, 255, 255);
}

float r = 255;
float g = 204;
float b = 255;


void draw(){
  
    fill(r, g, b);
    rect(mouseX, mouseY, 40, 40);
    
  if (keyPressed) {
    if (key == 'd' || key == 'D'){
      background(255);
    }
  }
  
  if(mousePressed) {
    g = g - 1;
    b = b - 1;
  }
  
  if ( g==0){
    r  = 255;
    g = 204;
    b = 255;
}
}
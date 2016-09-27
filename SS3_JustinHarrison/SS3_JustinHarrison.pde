//Justin Harrison, Dotted, Makes use of mouse pressed and mouse dragged

//At least one conditional statement using if, else if, and else
//At least one for loop that creates a pattern of some kind
//Use of the random function
//At least one rollover response (hint: see pages 75-83 in Learning Processing)
//Use of at least two of these event functions: keyPressed(), mousePressed(), mouseMoved(), mouseDragged() *
//Attention to aesthetics and visual detail
//Include as a comment at the top of your sketch: your name, title, any instructions for the user

void setup(){
  size(800,800);
  fill(0);
  
  
}

float r = 0;
float g = 0;
float b = 0;

void draw(){
  
  if(mouseX > width/2){
  background(255);
  }else{
    background(0);
  }
  
  //circles
  for (int i = mouseY; i < 2300; i = i + 50){
    for (int j = mouseX; j < 2300; j = j + 50){
      fill(r,g,b);
      stroke(r,g,b);
      ellipse(j, i, 30, 30);
    }
  }
  
  for (int i = mouseY; i > -2300; i = i - 50){
    for (int j = mouseX; j > -2300; j = j - 50){
      fill(r,g,b);
      stroke(r,g,b);
      ellipse(j, i, 30, 30);
    }
  }
  
  for (int i = mouseY; i > -2300; i = i - 50){
    for (int j = mouseX; j < 2300; j = j + 50){
      fill(r,g,b);
      ellipse(j, i, 30, 30);
    }
  }
  
  for (int i = mouseY; i < 2300; i = i + 50){
    for (int j = mouseX; j > -2300; j = j - 50){
      fill(r,g,b);
      ellipse(j, i, 30, 30);
    }
  }
  
  //background change
  
  
}

void mousePressed(){
  r = random(0,255);
  g = random(0,204);
  b = random(0,204);
}

void mouseDragged(){
    for (int i = mouseY; i < 2300; i = i + 50){
    for (int j = mouseX; j < 2300; j = j + 50){
      fill(random(0,255),random(0,255),random(0,255));
      rect(j-10, i-10, 60, 60);
    }
  }
  
  for (int i = mouseY; i > -2300; i = i - 50){
    for (int j = mouseX; j > -2300; j = j - 50){
      fill(random(0,255),random(0,255),random(0,255));
      rect(j-10, i-10, 60, 60);
    }
  }
  
  for (int i = mouseY; i > -2300; i = i - 50){
    for (int j = mouseX; j < 2300; j = j + 50){
      fill(random(0,255),random(0,255),random(0,255));
      rect(j-10, i-10, 60, 60);
    }
  }
  
  for (int i = mouseY; i < 2300; i = i + 50){
    for (int j = mouseX; j > -2300; j = j - 50){
      fill(random(0,255),random(0,255),random(0,255));
      rect(j-10, i-10, 60, 60);
    }
  }
}
//Classics by Justin & Monjur

//establishes 2 arrays that record x and y coordinates, respectively

//hold down mouse to use

class Rings{
  //instance variables
  int x;
  int y;
  int diameter;
  
  //constructor
  Rings(int tempX, int tempY, int tempDiameter){
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }
  
  //creates randomly generated colorful rings
  void randomCircle(){
    //randomly generates coordinates and diameter
     x = int(random(0,500));
      y = int(random(0,1000));
     diameter = int(random(0,500));
     //creates rings in a nearly completely random pattern with random colors in blue & green tint
    for (int i = 0; i <100; i = i +1){
      if (diameter > 0){
         stroke(0,0,0);
         fill(int(random(0,10)),int(random(0,100)),int(random(0,255)));
         diameter = diameter - 20;
         ellipse(x, y, diameter, diameter);
    }
    }
  }
  
    void randomRect(){
    //randomly generates coordinates and diameter
     x = int(random(500,1000));
     y = int(random(0,1000));
     diameter = int(random(0,1500));
     //creates rings in a nearly completely random pattern with random colors in blue & green tint
    for (int i = 0; i <10; i = i +1){
      while (diameter > 0){
         stroke(0,0,0);
         fill(int(random(0,255)),int(random(0,10)),int(random(0,100)));
         diameter = diameter - 20;
         rect(x, y, diameter, diameter);
    }
    }
  }


  void switchSides(){
    //randomly generates coordinates and diameter
     x = int(random(500,1000));
      y = int(random(0,1000));
     diameter = int(random(0,500));
     //creates rings in a nearly completely random pattern with random colors in blue & green tint
    for (int i = 0; i <100; i = i +1){
      if (diameter > 0){
         stroke(0,0,0);
         fill(int(random(0,10)),int(random(0,100)),int(random(0,255)));
         diameter = diameter - 20;
         ellipse(x, y, diameter, diameter);

    }
    }
  
    //randomly generates coordinates and diameter
     x = int(random(0,500));
      y = int(random(0,1000));
     diameter = int(random(0,1500));
     //creates rings in a nearly completely random pattern with random colors in blue & green tint
    for (int i = 0; i <10; i = i +1){
      while (diameter > 0){
         stroke(0,0,0);
         fill(int(random(0,255)),int(random(0,10)),int(random(0,100)));
         diameter = diameter - 20;
         rect(x, y, diameter, diameter);
    
    }
  }
    
  }
  
  void start(){
      rings6.randomCircle();
      rings6.randomRect();
  }
}


//creates each Ring variable
Rings rings6;

void setup(){
size(1020,780);
background(255);

//initializes
rings6 = new Rings(900, 900, 500);
}

void draw() {
  frameRate(10);
  
  
  if(mousePressed == true){
    background(255);
  rings6.switchSides();
}
}
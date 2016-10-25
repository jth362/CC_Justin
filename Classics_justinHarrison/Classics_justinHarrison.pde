//establishes 2 arrays that record x and y coordinates, respectively


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
  
  //creates overlapping circles 
  void create(){  
    while (diameter > 0){
      // creates one circle, makes the diameter smaller, creates another
     for (int i = 0; i <6; i = i +1){
         stroke(0,0,0);
         noFill();
         diameter = diameter - 20;
         ellipse(x, y, diameter, diameter);
     }
     }
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
    //randomCircle(){
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
  
     //randomRect(){
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
}
//Rings, Justin Harrison

//an original class with at least two methods
//an array of objects
//annotations as //comments in the sketch, explaining what each part does


//creates each Ring variable
Rings rings1;
Rings rings2;
Rings rings3;
Rings rings4;
Rings rings5;
Rings rings6;

void setup(){

size(1020,780);
//initializes
rings1 = new Rings(700, 300, 500);
rings2 = new Rings(600, 500, 500);
rings3 = new Rings(800, 100, 500);
rings4 = new Rings(900, 700, 500);
rings5 = new Rings(1000, 100, 500);
rings6 = new Rings(900, 900, 500);
}

void draw() {
  frameRate(10);
  //draws presimple overlapping circles
  /*rings1.create();
  rings2.create();
  rings3.create();
  rings4.create();
  */
  rings5.create();
  //randomly generates colorful rings
  rings6.randomCircle();
  rings6.randomRect();
  
  if(mousePressed == true){
    background(255);
  rings6.switchSides();
}
}
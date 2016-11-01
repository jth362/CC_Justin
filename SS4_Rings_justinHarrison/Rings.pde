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
         fill(int(random(0,10)),int(random(0,100)),int(random(0,255)));
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
  
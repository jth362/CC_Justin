//establishes 2 arrays that record x and y coordinates, respectively
int[] ringsX = new int[6];
int[] ringsY = new int[6];

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
         ringsX[i] = x;
         ringsY[i] = y;
         ellipse(x, y, diameter, diameter);
     }
     }
  }
  
  
  //creates randomly generated colorful rings
  void randomize(){
    //randomly generates coordinates and diameter
     x = int(random(0,1000));
      y = int(random(0,1000));
     diameter = int(random(0,400));
     //creates rings in a nearly completely random pattern with random colors in blue & green tint
    for (int i = 0; i <4; i = i +1){
      while (diameter > 0){
         stroke(0,0,0);
         fill(int(random(0,10)),int(random(0,100)),int(random(0,255)));
         diameter = diameter - 20;
         ringsX[i] = x;
         ringsY[i] = y;
         ellipse(x + mouseX, y, diameter, diameter);
    }
    }
  }
  
}
  
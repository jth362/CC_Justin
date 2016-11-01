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
  rings6.switchSides();
}
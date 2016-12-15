//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies

// ----------------------------
// Crazy Painter - Draft Project 
// by Daniel Wyllie
// ----------------------------

color col_A = 0;
color col_B = 0;
color col_C = 0;
color col_D = 0;

boolean transition = false;

public class Point
{
  int x;
  int y;

  Point(int x, int y)
  {
    this.x = x;
    this.y = y;
  } 

  int getX()
  {
    return x;
  }

  int getY()
  {
    return y;
  }

  void draw(int last_x, int last_y)
  { 
    x = (int)(last_x+random(-mouseX/10, mouseX/10));
    y = (int)(last_y+random(-mouseX/10, mouseX/10));
  }
}

Point[] point = new Point [4];

void paintStyle3()
{
 
  for (int k=0; k<30; k++)
  {     
      if (transition)
      {
        col_A = video.get(point[0].getX(), point[0].getY());
        col_B = video.get(point[1].getX(), point[1].getY());
        col_C = video.get(point[2].getX(), point[2].getY());
        col_D = video.get(point[3].getX(), point[3].getY());
      }
      else
      {
        col_A = video.get(point[0].getX(), point[0].getY());
        col_B = video.get(point[1].getX(), point[1].getY());
        col_C = video.get(point[2].getX(), point[2].getY());
        col_D = video.get(point[3].getX(), point[3].getY());
      }

      stroke(col_C, map(mouseY, 0, height, 255, 150));
      strokeWeight(mouseY/30);

      if 
        ((brightness(col_A) - brightness(col_B) < 50)
        &&
        (brightness(col_B) - brightness(col_C) < 50)
        &&
        (brightness(col_C) - brightness(col_D) < 50))

      {

        bezier(point[0].getX(),   point[0].getY(), 
               point[1].getX(), point[1].getY(), 
               point[2].getX(), point[2].getY(), 
               point[3].getX(), point[3].getY());
        fill(col_C);
        ellipse(point[0].getX(), point[0].getY(), brightness(col_A)/40, brightness(col_A)/40);
        noFill();
      }
      point[0].draw(round(random(width)), round(random(height)));
      point[1].draw(point[0].getX(), point[0].getY());
      point[2].draw(point[1].getX(), point[1].getY());
      point[3].draw(point[2].getX(), point[2].getY());
  }
}


void mouseDragged()
{
  // code that happens when the mouse moves
  // with the button down
}

void mousePressed() 
{
  transition = !transition;
}

void mouseReleased()
{
  // code that happens when the mouse button
  // is released
}
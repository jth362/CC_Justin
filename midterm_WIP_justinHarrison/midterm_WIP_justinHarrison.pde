void setup(){
  size(800, 600);
  background(0);
}

PFont font;
int state = 1;
int pumpkin = 0;
int val = 0;

void draw(){
  
  if(state == 1){
    
  textSize(50);
  text("jack-o-lantern generator", 100, height/2);
  
  text("press enter to start", 300, 400);
  
  }
  
  else if(state == 2){
    background(0);
    textSize(24);
      text("Press 1 for a tall pumpkin", 100, 200);
      text("Press 2 for a short pumpkin", 100, 350);
      text("Press 3 for a average pumpkin", 100, 500);
    if(val == 1){
    background(0);
    textSize(24);
      text("Press 1 for a tall pumpkin", 100, 200);
      text("Press 2 for a short pumpkin", 100, 350);
      text("Press 3 for a average pumpkin", 100, 500);
      ellipse(700, height/2, 300, 500);
    }else if (val == 2)
    {
     background(0);
      textSize(24);
      text("Press 1 for a tall pumpkin", 100, 200);
      text("Press 2 for a short pumpkin", 100, 350);
      text("Press 3 for a average pumpkin", 100, 500);
      ellipse(700, height/2, 300, 200);
    }else if (val == 3)
    {
      background(0);
        textSize(24);
        text("Press 1 for a tall pumpkin", 100, 200);
        text("Press 2 for a short pumpkin", 100, 350);
        text("Press 3 for a average pumpkin", 100, 500);
        ellipse (700, height/2, 300, 400);
    }
  } 
    else if (state == 3){
      background(0);
      fill(255);
      ellipse (700, height/2, 300, 400);  
      text("Press 1 for face 1", 100, 200);
      text("Press 2 for face 2", 100, 350);
      text("Press 3 for face 3", 100, 500);
      if( val == 1){
        fill(204);
        ellipse(600, height/2 - 40, 50, 50);
        ellipse(800, height/2 - 40, 50, 50);
        
      }
      else if (val == 2){
        fill(0);
        ellipse(600, height/2 - 40, 50, 50);
        ellipse(800, height/2 - 40, 50, 50);
        
      }else if (val ==3){
        fill(0,204,204);
        ellipse(600, height/2 - 40, 50, 50);
        ellipse(800, height/2 - 40, 50, 50);
      }
    }else if (state == 4){
      background(0);
      fill(255);
      text("wow that's a spooky jack-o-lantern!!!!", 100, 50);
      ellipse (400, height/2, 300, 400); 
      ellipse(300, height/2 - 40, 50, 50);
      ellipse(500, height/2 - 40, 50, 50);
      
      text("press enter to restart", 400, 550);
    }
    
    
    
   println(state);
}

void keyPressed(){
  if (key == ENTER ){
    if( state < 4){
    state = state + 1;
  }else{
    background(0);
    state = 1;
  }
  }
  
  if(key == '1'){
    val = 1;
  }
  
  if(key == '2'){
    val = 2;
  }
  
  if(key == '3'){
    val = 3;
  }
}
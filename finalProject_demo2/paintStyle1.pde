void paintStyle1(){
     noStroke();
   
    int x = int(random(video.width));

    int y = int(random(video.height));

    color pix = video.get(x, y);
    
    int x1 = x + 375;
    int y1 = y + 250;
    image(easel2, 200,75, 700,600);
    fill(pix, 126);
    
    if(counter > 1500){
      w1 = 50;
      w2 = 50;
    ellipse(x1, y1, w1, w2);
    }else if( counter > 1000){
      w1 = 25;
      w2 = 25;
    ellipse(x1, y1, w1, w2);
    }else if(counter > 500){
      w1 = 15;
      w2 = 15;
    ellipse(x1, y1, w1, w2);
    }else if(counter > 0){
      w1 = 5;
      w2 = 5;
    ellipse(x1, y1, w1, w2);
    }
    counter = counter - 1;
    println(counter);
    if(counter == 1){
      state = state + 1;
    }
}
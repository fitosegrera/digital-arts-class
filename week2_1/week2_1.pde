//variables for ball1
float ball1x, ball1y;
float b1sx, b1sy;
int ball1Size;

//variables for ball2
float ball2x, ball2y;
float b2sx, b2sy;
int ball2Size;

void setup(){
  size(800,800);
  
  //values for ball 1
  ball1Size = 50;
  ball1x = random(ball1Size/2, width-ball1Size/2);
  ball1y = random(ball1Size/2, height-ball1Size/2);
  b1sx = random(-5,5);
  b1sy = random(-5,5);
  
  //values for ball 2
  ball2Size = 80;
  ball2x = random(ball2Size/2, width-ball2Size/2);
  ball2y = random(ball2Size/2, height-ball2Size/2);
  b2sx = random(-5,5);
  b2sy = random(-5,5);
}

void draw(){
  background(50);
  
  //draw ball 1
  ellipse(ball1x, ball1y, ball1Size, ball1Size);
  
  //draw ball 2
  ellipse(ball2x, ball2y, ball2Size, ball2Size);
  
  //update positions of ball 1
  ball1x = ball1x + b1sx;
  ball1y = ball1y + b1sy;
  
  //update positions of ball 2
  ball2x = ball2x + b2sx;
  ball2y = ball2y + b2sy;
  
  //check for collisions with walls ball 1
  if(ball1x >= width-ball1Size/2 || ball1x <= ball1Size/2){
    b1sx = b1sx*-1;
  }
  
  if(ball1y >= height-ball1Size/2 || ball1y <= ball1Size/2){
    b1sy = b1sy*-1;
  }
  
  //check for collisions with walls ball 2
  if(ball2x >= width-ball2Size/2 || ball2x <= ball2Size/2){
    b2sx = b2sx*-1;
  }
  
  if(ball2y >= height-ball2Size/2 || ball2y <= ball2Size/2){
    b2sy = b2sy*-1;
  }
  
}

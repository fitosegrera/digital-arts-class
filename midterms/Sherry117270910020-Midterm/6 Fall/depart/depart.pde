float cellSizeX, cellSizeY;
float rows, columns;
float ball1x, ball1y;
float b1sx, b1sy;
int ball1Size;
float ball2x, ball2y;
float b2sx, b2sy;
int ball2Size;

void setup(){
  size(700,700);
  background(0);
  
  fill(255);
  rect(200,200,300,300);
  
  rows = 7;
  columns = 7;
  cellSizeX = width/columns;
  cellSizeY = height/rows;
 
  
  ball1Size = 20;
  ball1x = random(200, 500);
  ball1y = random(200, 500);
  b1sx = random(-5,5);
  b1sy = random(-5,5);
  
  ball2Size = 20;
  ball2x = random(200, 500);
  ball2y = random(200, 500);
  b2sx = random(-5,5);
  b2sy = random(-5,5);
  
}

void draw(){
  drawGrid();
  fill(0,0,0);
 
  ellipse(ball1x, ball1y, ball1Size, ball1Size);
  ball1x = ball1x + b1sx;
  
  ellipse(ball2x, ball2y, ball2Size, ball2Size);
  ball1y = ball1y + b1sy;

  ball2x = ball2x + b2sx;
  ball2y = ball2y + b2sy;
  
  //check for collisions with walls ball 1
  if(ball1x <= 210 || ball1x >= 490){
    b1sx = b1sx*-1;
  }
  
  if(ball1y <= 210 || ball1y >= 490){
    b1sy = b1sy*-1;
  }
  
  if(ball2x <= 210 || ball2x >= 490){
    b2sx = b2sx*-1;
  }
  
  if(ball2y <= 210 || ball2y >= 490){
    b2sy = b2sy*-1;
  }
  
}

void drawGrid() {
  stroke(255);
  for (int x=0; x<width; x+=cellSizeX) {
    line(x, 0, x, height);
  }
  for (int y=0; y<height; y+=cellSizeY) {
    line(0, y, width, y);
  }
}

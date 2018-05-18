Ball b;

void setup(){
  size(600,600);
  b = new Ball(width/2, height/2, 50, 50);
  b.c = color(255);
}

void draw(){
  background(0);
  b.drawBall();
  b.changeSize();
  b.changeColor();
}

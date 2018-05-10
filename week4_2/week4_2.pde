Ball b;

Ball[] balls;
int totalBalls;

void setup() {
  size(600, 600);
  b = new Ball(width/2, height/2, 50, 50);
  totalBalls = 100;
  balls = new Ball[totalBalls];
  
  for(int i=0; i<totalBalls; i++){
    balls[i] = new Ball(random(0, width), random(0, height), 50, 50);
  }
}

void draw() {
  background(0);
  b.drawBall();
  b.changeColor();
  for(int i=0; i<totalBalls; i++){
    balls[i].drawBall();
    balls[i].changeColor();
  }
}

void mouseClicked(){
  b.changeSize();
  for(int i=0; i<totalBalls; i++){
    balls[i].changeSize();
  }
}

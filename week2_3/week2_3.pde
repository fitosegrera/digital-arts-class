int posX, posY;
int ballSize;
color c, bg;

void setup() {
  size(800, 800);
  ballSize = 100;
  posX = ballSize/2;
  posY = height/2;
}

void draw() {
  bg = generateColor();
  background(bg);

  for (int i=0; i<10; i++) {
    c = generateColor();
    fill(c);
    drawBall(ballSize*i, posY, random(10, 100));
  }
}

//Declare my function called makeBall
//The name drawBall can be any name
// it recieves 3 arguments:
// 1st = pos X, 2nd = posY, 3rd = size
void drawBall(int x, int y, float s) {
  noStroke();
  int t = x * 2;
  ellipse(x, y, s, t);
}

//Function generates and returns a random color
color generateColor() {
  color myColor;
  myColor = color(random(0, 255), random(0, 255), random(0, 255));
  return myColor;
}

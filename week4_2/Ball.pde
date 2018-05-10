//We declare our Ball class
class Ball {
  //Global variables for our class
  float px, py, sizeX, sizeY;
  color c;

  //Our Ball constructor
  Ball(float x, float y, float sx, float sy) {
    px = x;
    py = y;
    sizeX = sx;
    sizeY = sy;
  }

  void drawBall() {
    fill(c);
    ellipse(px, py, sizeX, sizeY);
  }

  void changeSize() {
    float tmpSize = random(10, 100);
    sizeX = tmpSize;
    sizeY = tmpSize;
  }

  void changeColor() {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    c = color(r, g, b);
  }
}

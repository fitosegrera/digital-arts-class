//we declare our empty arrays
float[] posX;
float[] posY;
float[] ballSize;
color[] c;

//a total number of balls
int totalBalls;

void setup() {
  size(800, 800);
  background(255);

  totalBalls = 100;

  //We initiate our arrays and give them a size
  posX = new float[totalBalls];
  posY = new float[totalBalls];
  c = new color[totalBalls];
  ballSize = new float[totalBalls];
  
  //we put random positions to our arryas
  for (int i=0; i<totalBalls; i++) {
    ballSize[i] = random(10,100);
    posX[i] = random(ballSize[i]/2, width-ballSize[i]/2);
    posY[i] = random(ballSize[i]/2, height-ballSize[i]/2);
    c[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  for (int i=0; i< totalBalls; i++) {
    fill(c[i]);
    ellipse(posX[i], posY[i], ballSize[i], ballSize[i]);
  }
}

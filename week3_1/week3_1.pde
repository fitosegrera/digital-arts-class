//we declare our empty arrays
float[] posX;
float[] posY;
float[] size;
float[] speedX;
float[] speedY;
int totalBalls;

void setup() {
  size(900, 900);

  totalBalls = 20;
  posX = new float[totalBalls];
  posY = new float[totalBalls];
  size = new float[totalBalls];
  speedX = new float[totalBalls];
  speedY = new float[totalBalls];

  for (int i=0; i<totalBalls; i++) {
    size[i] = random(20, 60);
    posX[i] = random(size[i]/2, width-size[i]/2);
    posY[i] = random(size[i]/2, height-size[i]/2);
    speedX[i] = random(-3, 3);
    speedY[i] = random(-3, 3);
  }
}

void draw() {
  background(0);
  checkWalls();
  checkCollisions();
  for (int i=0; i<totalBalls; i++) {
    ellipse(posX[i], posY[i], size[i], size[i]);
    posX[i] += speedX[i];
    posY[i] += speedY[i];
  }
}

//check for collision with walls
void checkWalls() {
  for (int i=0; i<totalBalls; i++) {
    if (posX[i] <= size[i]/2 || posX[i] >= width - size[i]/2) {
      speedX[i] *= -1;
    }
    if (posY[i] <= size[i]/2 || posY[i] >= height - size[i]/2) {
      speedY[i] *= -1;
    }
  }
}

//check collisions between balls
void checkCollisions() {
  for (int i=0; i<totalBalls; i++) {
    for (int j=0; j<totalBalls; j++) {
      if (i != j) {
        float d = dist(posX[i], posY[i], posX[j], posY[j]);
        if (d <= (size[i]/2) + (size[j]/2)) {
        speedX[j] *= -1;
        speedY[j] *= -1;
        }
      }
    }
  }
}

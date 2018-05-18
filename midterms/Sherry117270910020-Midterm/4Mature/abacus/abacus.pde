float cellSizeX;
float columns;
float[] posY;
float[] speedY;
int totalBalls;

void setup() {
  size(700, 700);
  columns = 2;
  cellSizeX = width/columns;

  totalBalls = 7;
  posY = new float[totalBalls];
  speedY = new float[totalBalls];

  for (int i=0; i<totalBalls; i++) {
    posY[i] = random(25, height-25);
    speedY[i] = random(-3, 3);
  }
}

void draw() {
  background(0);
  drawGrid();
  checkWalls();
  checkCollisions();
  for (int i=0; i<totalBalls; i++) {
    ellipse(350, posY[i], 50, 50);
    posY[i] += speedY[i];
  }
}

void checkWalls() {
  for (int i=0; i<totalBalls; i++) {
    if (posY[i] <= 25 || posY[i] >= height - 25) {
      speedY[i] *= -1;
    }
  }
}

void checkCollisions() {
  for (int i=0; i<totalBalls; i++) {
    for (int j=0; j<totalBalls; j++) {
      if (i != j) {
        float d = dist(300, posY[i], 0, posY[j]);
        if (d <= 50) {
        speedY[j] *= -1;
        }
      }
    }
  }
}

void drawGrid() {
  stroke(255);
  for (int x=0; x<width; x+=cellSizeX) {
    line(x, 0, x, height);
  }
}

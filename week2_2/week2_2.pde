int ballSize = 50;

//maximum balls to draw on X and Y axis
int totalBallsX, totalBallsY;

void setup() {
  size(800, 800);
  background(255, 0, 0);
  totalBallsX = width/ballSize;
  totalBallsY = height/ballSize;
}

void draw() {
  //variables x and y are local to the foor loops, you cannot use them
  //outside these loops
  for (int x=0; x<totalBallsX; x++) {
    for (int y=0; y<totalBallsY; y++) {
      ellipse(x*ballSize+ballSize/2, y*ballSize+ballSize/2, ballSize, ballSize);
    } 
    println(x);
  }
}

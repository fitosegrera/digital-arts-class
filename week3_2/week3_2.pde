//for loops and functions review
float cellSizeX, cellSizeY;
float rows, columns;

void setup() {
  size(800, 800);
  background(0);
  rows = 40;
  columns = 20;
  cellSizeX = width/columns;
  cellSizeY = height/rows;
}

void draw() {
  drawGrid();
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

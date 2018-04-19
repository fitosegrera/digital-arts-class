float r, g, b;
float sizeX, sizeY;
float posX, posY;

void setup() {
  size(900, 900); 
  background(0);
}

void draw() {
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  sizeX = random(5, 100);
  sizeY = random(5, 100);
  posX = random(0, width);
  posY = random(0, height);
  noStroke();
  fill(r, g, b);
  ellipse(posX, posY, sizeX, sizeX);
}

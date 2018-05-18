float r, g, b;
float x;
float sizeX, sizeY;
float posX, posY;

void setup() {
  size(900, 900); 
  background(255);
}

void draw() {
  r = random(187,255);
  g = 255;
  b = 255;
  x= random(200,255);
  sizeX = random(80, 150);
  sizeY = random(30, 50);
  posX = random(0, width);
  posY = random(0, height);
  noStroke();
  fill(r, g, b,100);
  ellipse(mouseX, mouseY, sizeX, sizeY);
}

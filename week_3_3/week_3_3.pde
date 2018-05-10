//review of return types functions and arrays
color bgc = color(0, 0, 0);
float[] posX;
float[] posY;
color[] c;


int totalRects = 100;

//We call the PImage foto library
PImage img;

void setup() {
  size(800, 800);

  posX = new float[totalRects];
  posY = new float[totalRects];
  c = new color[totalRects];

  //we use .length to get the size of the array
  for (int i=0; i<posX.length; i++) {
    posX[i] = makeRandomPos();
    posY[i] = makeRandomPos();
    c[i] = makeColor();
  }
  img = loadImage("ball.png");
  textSize(20);
}

void draw() {
  background(bgc);
  for (int i=0; i<totalRects; i++) {
    fill(c[i]);
    noStroke();
    rect(posX[i], posY[i], 20, 20);
    image(img, posX[i], posY[i]);
    if (i>0) {
      stroke(c[i]);
      line(posX[i-1], posY[i-1], posX[i], posY[i]);
    }
    c[i] = makeColor();
  }
  fill(255);
  text("This is my first text",10,30);
}

float makeRandomPos() {
  float p = random(0, width);
  //p *= 0.5;
  return p;
}

color makeColor() {
  color myColor = color(random(255), random(255), random(255));
  return myColor;
}

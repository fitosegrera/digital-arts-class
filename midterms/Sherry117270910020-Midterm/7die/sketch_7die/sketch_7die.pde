int posX, posY;
int ballSize;
color c, bg;

void setup() {
  size(700, 700);
  background(0);
  ballSize = 100;
  posX = ballSize/2;
  posY = height/2;
  noStroke();
  fill(c);
  ellipse(200,350,200,500);
  ellipse(500,350,200,500);
  
}

void draw() {

  for (int i=0; i<10; i++) {
    c = generateColor1();
    fill(c);
    ellipse(200,350,200,500);
    
  }
  for (int i=0; i<10; i++) {
    bg = generateColor2();
    fill(bg);
    ellipse(500,350,200,500);
    
  }
}

color generateColor1() {
  color myColor;
  myColor = color(random(0,255), random(0,255), random(0, 200));
  return myColor;
}

color generateColor2() {
  color myColor;
  myColor = color(random(0,200), random(0,255), random(0, 255));
  return myColor;
}

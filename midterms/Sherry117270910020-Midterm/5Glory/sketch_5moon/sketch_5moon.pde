PImage img;
float r,g,b;

void setup() {
  size(700, 700);
  background(0);
  

  img = loadImage("moon.png");
  textSize(5);
  
  stroke(255);
  fill(0);
  ellipse(350,350,550,550);
  ellipse(350,350,500,500);
  ellipse(350,350,450,450);
  ellipse(350,350,400,400);
  ellipse(350,350,350,350);
  ellipse(350,350,300,300);
  ellipse(350,350,230,230);
  
}

void draw() {
image(img, 278, 270,150,150);
noStroke();
r= random(0,255);
g= random(0,255);
b= random(0,255);
fill(r,g,b);
ellipse(350,625,30,30);
ellipse(235,350,30,30);
ellipse(479.9,425,30,30);
ellipse(507,193,30,30);
ellipse(523.2,250,30,30);
ellipse(237.5,547.85,30,30);
ellipse(133.5,225,30,30);

}

  PImage img1;
  PImage img2;
  PImage img3;
  PImage img4;
  PImage img5;
  PImage img6;
  PImage img7;
void setup() {
  size(1096, 761);
  img1 = loadImage("3.png");
  img2 = loadImage("1.png");
  img3 = loadImage("4.png");
  img4 = loadImage("ht3.png");
  img5 = loadImage("2.png");
  img6 = loadImage("ht4.png");
  img7 = loadImage("6.png");
}
 
void draw() {
  background(img4);
   image(img7, mouseX, mouseY);
  noStroke();
  if (mouseX < width/5) {
  image(img4, 0, 0);
    ;
  } else if (mouseX < width/5 * 2) {
    rectMode(CENTER);
    image(img1, 45, 200);
  }
   else if (mouseX < width/5 * 3) {
    rectMode(CENTER);
    image(img2, 150, 150);
  }
   else if (mouseX < width/5 * 4) {
    rectMode(CENTER);
    image(img3, 630, 130);
  }

  else {
     image(img5, 837, 200);
  }
  
  if(mouseButton==LEFT)//

{
 image(img6, 0, 0);
 

}

}

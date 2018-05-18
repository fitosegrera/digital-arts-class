float sizeX, sizeY;

void setup(){
  size(1024,704);
  sizeX = 5;
  sizeY = 5;
}

void draw(){
  PImage gold;
  gold = loadImage("gold.jpg");
  background(gold);
  fill(0);
  noStroke();
  ellipse(width,height,sizeX,sizeY);
  sizeX += 20;
  sizeY += 20;
  if(sizeX >= 2500){
    fill(255,238,0);
    textSize(150);
    text("GREED",width/2-225,height/2+45);
  }
}

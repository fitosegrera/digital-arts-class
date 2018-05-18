float r;
float g,b;
float sizeX, sizeY, posX, posY;
int x;

void setup(){
  size(900,900);
  background(0);
    fill(255);
    textSize(150);
    text("Ego",width/2-100,height/2);
  x = 0;
}

void draw(){
  r = random(80,255);
  g = 0;
  b = 0;
  sizeX = random(10,100);
  sizeY = random(10,100);
  posX = random(0,width);
  posY = random(0,height);
  noStroke();
  fill(r,g,b);
  ellipse(posX,posY,sizeX,sizeY);
  x += 1;
    if(x>1000){
  fill(0);
  textSize(150);
  text("WRATH",width/2-230,height/2+45);
  }
}

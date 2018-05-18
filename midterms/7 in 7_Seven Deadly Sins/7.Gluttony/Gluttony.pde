int mouthSize, mouthX, mouthY;
int foodX, foodY, foodSize;
boolean foodKey;
int s,w;

void setup(){
  size(900,900);
  foodKey = true;
  s = 5;
  w = 20;
  mouthSize = 50;
  mouthX = width/2;
  mouthY = height/2;
  foodX = 100;
  foodY = 100;
  foodSize = 50;
  foodKey = false;
}

void draw(){
  background(0);
  fill(255);
  noStroke();
  ellipse(mouthX,mouthY,mouthSize,mouthSize);
   drawFood(); 
  if(mouthX == foodX && mouthY == foodY){
  mouthSize += w;
  foodKey = true;
    }
  if(mouthSize>=100){
  background(0);
  fill(255,170,0);
  textAlign(CENTER);
  textSize(150);
  text("Gluttony",width/2,height/2+45);
}
  }
  

void keyPressed(){
 if(key == 'w'){
  mouthY -= s;
   }
 if(key == 's'){
  mouthY += s;
   } 
 if(key == 'a'){
  mouthX -= s;
   }
 if(key == 'd'){
  mouthX += s;
   }
}

void drawFood(){
  float r = random(0, 255); 
  float g = random(0, 255); 
  float b = random(0, 255); 
  noStroke();
  fill(r, g, b);
  if(foodKey){
  foodX = int(random(0,width));
  foodY = int(random(0,height));
  }
  ellipse(foodX, foodY, foodSize, foodSize);
  foodKey = false;
}

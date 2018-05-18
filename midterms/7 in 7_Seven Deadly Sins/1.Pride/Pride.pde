int ballSize, totalBallsX, totalBallsY;
float posY, size,s;
void setup(){
  size(1000,800);
  size = 40;
  s = 5;
  ballSize = 40;
  totalBallsX=width/ballSize;
  totalBallsY=height/ballSize/2;
  posY = height-ballSize*6.5;
}

void draw(){
  background(100);
  for(int x=0;x<totalBallsX;x++){
    for(int y=0;y<totalBallsY;y++){
      fill(255);
      noStroke();
      ellipse(x*ballSize+ballSize/2,height-y*ballSize+ballSize/2,ballSize,ballSize);
    }
   }
  fill(0);
  noStroke();
  ellipse(width/2, posY,size,size);
  if(posY-size<=-40){
  background(0);
  fill(255);
  textSize(150);
  text("PRIDE",width/2-175,height/2+20);
  }
}
 
void keyPressed(){
  if(key == 'w'){
    posY -= s;
    size += 5;
  }
  }

float posX,posY;
boolean lust;
void setup()
{
  size(900,900);
  strokeWeight(12);
  smooth();
  lust = false;
}
 
void draw()
{
  if(lust == false){
  drawBezier();
  }else{
    background(0);
    fill(153, 0, 153);
    textSize(150);
    text("LUST", width/2 - 175, height/2+45);
  }
}

void drawBezier(){
  background(204);
 //line(width/2,height/2,mouseX,mouseY); 
  posX = mouseX*2 + 10;
  posY = mouseY/2 - 10;
  //line(width/2,height/2,posX,posY); 
  fill(255,0,0);
  noStroke();
  bezier(width/2,height/2,(width-posX)/2+50,(height-posY)/2+50,(width-posX)/2-50,(height-posY)/2-50,posX,posY);
  fill(0,0,255);
  noStroke();
  bezier(width/2,height/2,(width-mouseX)/2+50,(height-mouseY)/2+50,(width-mouseX)/2-50,(height-mouseY)/2-50,mouseX,mouseY);
  if(mouseX <200 && mouseX>100 && mouseY>750 && mouseY <850){
    lust = true;
  }
 }

float you;
float r,g,b;
float yR,yG,yB;

void setup(){
size(900,900);
background(0);
you = 255;
yR = 255;
yG = 255;
yB = 255;
}

void draw(){
  noStroke();
  fill(you);
  rect(0,0,width/2,height);
  r = random(170,255);
  g = random(85,170);
  b = random(0,85);
  fill(r,g,b);
  rect(width/2,0,width/2,height);
  
  if(mouseX >= width/2){
    you--;
  }else{
    if(you>10){
  yR--;
  yG++;
  yB= random(0,255);
  fill(yR,yG,yB);
  noStroke();
  rect(0,0,width/2,height);
    }else{
      background(0);
fill(0,255,0);
textSize(150);
textAlign(CENTER);
text("Envy",width/2,height/2+45);
}
  }
  }

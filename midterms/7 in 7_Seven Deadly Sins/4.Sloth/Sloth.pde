float cellSizeX, cellSizeY;
float rows, columns;

void setup(){
  size(900,900);
  background(255);
  rows = 30;
  columns = 30;
  cellSizeX = width/columns;
  cellSizeY = height/rows;
}

void draw(){
  if(mouseX<width-30 || mouseY<height-30){stroke(0);
  drawGrid();
  fill(0,85,255);
  noStroke();
  ellipse(mouseX,mouseY,30,30);
  }else{
    background(0);
    fill(0,85,255);
    textSize(150);
    text("SLOTH", width/2 - 175, height/2+45);
  }
  }
    
void drawGrid(){
  for(int x=0; x<width; x+= cellSizeX){
    line(x, 0, x, height);
  }
  for(int y=0; y<=height; y+= cellSizeY){
    line(0, y, width, y);
    }
   }

float r;
float g;

void setup() {
  size(900, 600);
  background(0);
  r = 0;
  g = 0;
}

void draw() {
  noStroke();
  fill(0, g, 0);
  rect(0, 0, width/2, height);
  fill(r, 0, 0);
  rect(width/2, 0, width/2, height);
  
  //evaluate the position of the mouse in X
  if(mouseX <= width/2){
    g++;
    print("G: ");
    println(g);
    //if green value is greater than 255, make it black again
    if(g>255){
      g = 0;
    }
  }else{
    r++;
    print("R: ");
    println(r);
    //if red value is greater than 255, make it black again
    if(r>255){
      r = 0;
    }
  } 
}

int sizeX = 70; //declaring a global variable
int sizeY = 70; //declaring a global variable

void setup() {
  size(900, 600);
  background(255, 0, 0);
  String s = "I am local!"; //local variable
  println(s); //can only be used in the same function
}

void draw() {
  ellipse(mouseX, mouseY, sizeX, sizeY);//ellipse is a circle posx posy sizex sizey
  sizeX++;
}

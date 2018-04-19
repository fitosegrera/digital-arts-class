int posX, posY, posX2, posY2;
int size;
float r, g, b;
float r2, g2, b2;
boolean button; // booleans can be either true or false

void setup() {
  size(900, 600);
  posX = width/2;
  posY = height /2;
  posX2 = 200;
  posY2 = height /2;
  size = 100;
  r = 255;
  g = 0;
  b = 0;
  r2 = 0;
  g2 = 0;
  b2 = 255;
  button = false;
}

void draw() {
  background(0);
  fill(r, g, b);
  rect(posX, posY, size, size);

  //if condition A && condition B are tru, then execute code
  if (mouseX >= posX && mouseX <= posX + size && mouseY >= posY && mouseY <= posY + size) {
    r = 0;
    g = 255;
    b = 0;
  } else {
    r = 255;
    g = 0;
    b = 0;
  }
  
  fill(r2, g2, b2);
  rect(posX2, posY2, size, size);
  
  //if condition A && condition B are tru, then execute code 
  // we use the mousePressed internal variable to check if the mouse has been pressed
  if (mouseX >= posX2 && mouseX <= posX2 + size && mouseY >= posY2 && mouseY <= posY2 + size && mousePressed) {
    b2 = 0;
    g2 = 255;
    r2 = 255;
  } else {
    b2 = 255;
    g2 = 0;
    r2 = 0;
  }
}

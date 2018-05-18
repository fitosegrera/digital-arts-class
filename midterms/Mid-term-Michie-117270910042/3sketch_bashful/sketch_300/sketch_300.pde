PImage img1;
PImage img2;
int i=0; 
void setup() {
size(700, 700);
 
}


void draw() 
{ 
 img1 = loadImage("001.jpg");
 background(img1);
  if(mouseX >330){
     image(img1, 0, 0);}
 if ( mouseX > 200  ) {
   if(mouseY> 520 ){   
  img2 = loadImage("002.jpg");
  
  { 
tint(255, i++); // Display at half opacity
image(img2, 0, 0);
if (i==80) {i=0; }
delay(20);
}
  
  image(img2, 0, 0);}
  } else if (mouseX > 370) {
    rectMode(CENTER);
    image(img1, 0, 0);
  } else {
     image(img1, 0, 0);}
}

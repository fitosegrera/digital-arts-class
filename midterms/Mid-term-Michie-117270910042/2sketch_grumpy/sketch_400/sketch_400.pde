PImage img1;
PImage img2;
PImage img3;
PImage img4;

void setup(){

  size(700,700);

}

void draw(){
 img1 = loadImage("001.jpg");
 img2 = loadImage("002.png");
 img3 = loadImage("003.png");
 img4 = loadImage("004.png");
  background(img1);
 image(img2, mouseX, mouseY);

 
stroke(255,255,255);

fill(255,255,255);



if(mouseButton==LEFT)//

{
 image(img4, 30, 500);
 image(img3, 500, 150);
  
  fill(255,139,147);


}






}

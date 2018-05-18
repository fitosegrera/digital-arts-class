float h1,h2,h3,h4,h5,h6,h7;

void setup(){
size(700,700);
background(0);
noStroke();

}

void draw(){
  h1 = random(0,200);
  h2 = random(0,200);
  h3 = random(0,200);
  h4 = random(0,200);
  h5 = random(0,200);
  h6 = random(0,200);
  h7 = random(0,200);
  
fill(50,205,50,h1);
triangle(0,0,0,700,350,350);

fill(255,0,0,h2);
triangle(0,700,700,700,350,350);

fill(0,191,255,h3);
triangle(0,0,350,0,175,175);

fill(255,165,0,h4);
triangle(350,0,700,0,700,350);

fill(160,32,240,h5);
triangle(350,350,525,175,525,525);

fill(255,255,0,h6);
quad(350,0,175,175,350,350,525,175);

fill(0,0,205,h7);
quad(525,175,700,350,700,700,525,525);

}

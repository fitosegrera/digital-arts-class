float h;

void setup() {
size(900,900);
background(0);
noStroke();
}

void draw() {
  h = random(50,255);
  
fill(255,0,0,h);
ellipse(0,450,800,800);

fill(255,165,0,h);
ellipse(0,450,700,700);

fill(255,255,0,h);
ellipse(0,450,600,600);

fill(0,255,0,h);
ellipse(0,450,500,500);

fill(0,0,255,h);
ellipse(0,450,400,400);

fill(6,82,121,h);
ellipse(0,450,300,300);

fill(0);
ellipse(0,450,200,200);

}

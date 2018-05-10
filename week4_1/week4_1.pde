float wallThickness;
PImage sprite;
float px, py, s;
boolean cu, cd, cl, cr;

float o1x, o1y, o1sx, o1sy;
float o2x, o2y, o2sx, o2sy;
float o3x, o3y, o3sx, o3sy;
float o4x, o4y, o4sx, o4sy;
float o5x, o5y, o5sx, o5sy;

float scoreX, scoreY;
boolean win;

PFont font;

void setup() {
  size(600, 600);
  wallThickness = 10;
  imageMode(CENTER);
  sprite = loadImage("sprite.png");
  sprite.resize(42, 42);
  px = width/2;
  py = width/2;
  s = 10;

  scoreX = 540;
  scoreY = 60;
  win = false;

  cu = false;
  cd = false;
  cl = false;
  cr = false;

  o1x = 100;
  o1y = 100;
  o1sx = width - 200;
  o1sy = wallThickness;

  o2x = width - 100;
  o2y = 100;
  o2sx = wallThickness;
  o2sy = height - 200;

  o3x = 100;
  o3y = 100;
  o3sx = wallThickness;
  o3sy = height - 300;

  o4x = 100;
  o4y = height-200;
  o4sx = 300;
  o4sy = wallThickness;

  o5x = 100;
  o5y = height - 100 - wallThickness;
  o5sx = 400;
  o5sy = wallThickness;

  font = loadFont("LinePixel-7-48.vlw");
  textFont(font, 32);
} 

void draw() {
  background(0);
  if (win == false) {
    drawWorld();
    checkCollisionWalls();
    checkCollisionObstacles();
    drawScore();
    image(sprite, px, py);
  } else {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    fill(r,g,b);
    textFont(font, 100);
    text("YOU WIN!", width/2 -150, height/2);
  }
}

void drawWorld() {
  //outter walls
  noFill();
  stroke(255, 0, 246);
  rect(0, 0, width, wallThickness);
  rect(0, 0, wallThickness, height);
  rect(width-wallThickness-1, 0, wallThickness, height);
  rect(0, height-wallThickness-1, width, wallThickness);

  //obstacles
  rect(o1x, o1y, o1sx, o1sy);
  rect(o2x, o2y, o2sx, o2sy);
  rect(o3x, o3y, o3sx, o3sy);
  rect(o4x, o4y, o4sx, o4sy);
  rect(o5x, o5y, o5sx, o5sy);
}

void checkCollisionWalls() {
  if (py - sprite.height/2 <= wallThickness) {
    cu = true;
  } else if (py + sprite.height/2 >= height-wallThickness) {
    cd = true;
  } else if (px - sprite.width/2 <= wallThickness) {
    cl = true;
  } else if (px + sprite.width/2 >= width - wallThickness) {
    cr = true;
  } else {
    cu = false;
    cd = false;
    cl = false;
    cr = false;
  }
}

void checkCollisionObstacles() {
  if (px+sprite.width/2 >= o1x && px-sprite.width/2 <= o1x+o1sx && py+sprite.height/2 >= o1y && py-sprite.height/2 <= o1y + o1sy
    || px+sprite.width/2 >= o2x && px-sprite.width/2 <= o2x && py+sprite.height/2 >= o2y && py-sprite.height/2 <= o2y + o2sy
    || px+sprite.width/2 >= o3x && px-sprite.width/2 <= o3x && py+sprite.height/2 >= o3y && py-sprite.height/2 <= o3y + o3sy
    || px+sprite.width/2 >= o4x && px-sprite.width/2 <= o4x+o4sx && py+sprite.height/2 >= o4y && py-sprite.height/2 <= o4y + o4sy
    || px+sprite.width/2 >= o5x && px-sprite.width/2 <= o5x+o5sx && py+sprite.height/2 >= o5y && py-sprite.height/2 <= o5y + o5sy) {
    px = width/2;
    py = width/2;
  }
}

void drawScore() {
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  noStroke();
  fill(r, g, b);
  ellipse(scoreX, scoreY, 20, 20);

  if (px == scoreX && py == scoreY) {
    win = true;
  }
}

void keyPressed() {
  if (key == 'w') {
    if (cu == false) {
      py -= s;
    }
  }
  if (key == 's') {
    if (cd == false) {
      py += s;
    }
  }
  if (key == 'a') {
    if (cl == false) {
      px -= s;
    }
  }
  if (key == 'd') {
    if (cr == false) {
      px += s;
    }
  }
}

PFont font;
PImage sprite;
float posX, posY, mSpeed;
float[] wx, wy, wsx, wsy;
int obstacles;
boolean cu, cd, cl, cr;
int wallThickness;

float o1x, o1y, o1sx, o1sy;
float o2x, o2y, o2sx, o2sy;
float o3x, o3y, o3sx, o3sy;
float o4x, o4y, o4sx, o4sy;
float o5x, o5y, o5sx, o5sy;

float scoreX, scoreY;
boolean win;

void setup() {
  size(900, 900);

  obstacles = 5;
  wallThickness = 10;
  scoreX = 840;
  scoreY = 60;

  wx = new float[obstacles];
  wy = new float[obstacles];
  wsx = new float[obstacles];
  wsy = new float[obstacles];

  sprite = loadImage("sprite.png");
  sprite.resize(56, 56);

  posX = width/2;
  posY = height/2;
  mSpeed = 10;

  cu = false;
  cd = false;
  cl = false;
  cr = false;

  win = false;

  font = loadFont("LinePixel-7-48.vlw");
  textFont(font, 32);
}

void draw() {
  background(0);
  imageMode(CENTER);

  if (win) {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    fill(r, g, b);
    textFont(font, 150);
    text("WINNER!", width/2 - 200, height/2);
  }else {
    drawWorld();
    checkCollisionWalls();
    checkCollisionObstacles();
    drawScore();
    image(sprite, posX, posY);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (!cu) {
        posY -= mSpeed;
      }
    }
    if (keyCode == DOWN) {
      if (!cd)
        posY += mSpeed;
    }
    if (keyCode == LEFT) {
      if (!cl) {
        posX -= mSpeed;
      }
    }
    if (keyCode == RIGHT) {
      if (!cr) {
        posX += mSpeed;
      }
    }
  }
}

void drawWorld() {
  for (int i=0; i<obstacles; i++) {
    //rect(wx[i], wy[i], wsx[i], wsy[i]);
  }

  //outter walls
  noFill();
  stroke(255, 0, 246);
  rect(0, 0, width, wallThickness);
  rect(0, 0, wallThickness, height);
  rect(0, height-wallThickness-1, width, wallThickness);
  rect(width-wallThickness-1, 0, wallThickness, height);

  //obstacles
  o1x = 100;
  o1y = 100;
  o1sx = width-200;
  o1sy = wallThickness;

  o2x = width-100;
  o2y = 100;
  o2sx = wallThickness;
  o2sy = height-200;

  o3x = 100;
  o3y = 100;
  o3sx = wallThickness;
  o3sy = height-300;

  o4x = 100;
  o4y = height-200;
  o4sx = 600;
  o4sy = wallThickness;

  o5x = 100;
  o5y = height-100-wallThickness;
  o5sx = 700;
  o5sy = wallThickness;

  rect(o1x, o1y, o1sx, o1sy);
  rect(o2x, o2y, o2sx, o2sy);
  rect(o3x, o3y, o3sx, o3sy);
  rect(o4x, o4y, o4sx, o4sy);
  rect(o5x, o5y, o5sx, o5sy);
}

void checkCollisionWalls() {
  if (posY-sprite.height/2 - wallThickness <= 0) {
    cu = true;
  } else if (posY+sprite.height/2 >= height) {
    cd = true;
  } else if (posX-sprite.width/2 - wallThickness <= 0) {
    cl = true;
  } else if (posX+sprite.width/2 >= width) {
    cr = true;
  } else {
    cu = false;
    cd = false;
    cl = false;
    cr = false;
  }
}

void checkCollisionObstacles() {
  if (posX+sprite.width/2 >= o1x && posX-sprite.width/2 <= o1x + o1sx && posY+sprite.width/2 >= o1y && posY-sprite.width/2 <= o1y
    || posX+sprite.width/2 >= o2x && posX-sprite.width/2 <= o2x && posY+sprite.width/2 >= o2y && posY-sprite.width/2 <= o2y + o2sy
    || posX+sprite.width/2 >= o3x && posX-sprite.width/2 <= o3x && posY+sprite.width/2 >= o3y && posY-sprite.width/2 <= o3y + o3sy
    || posX+sprite.width/2 >= o4x && posX-sprite.width/2 <= o4x + o4sx && posY+sprite.width/2 >= o4y && posY-sprite.width/2 <= o4y
    || posX+sprite.width/2 >= o5x && posX-sprite.width/2 <= o5x + o5sx && posY+sprite.width/2 >= o5y && posY-sprite.width/2 <= o5y) {
    posX = width/2;
    posY = height/2;
  }
}

void drawScore() {
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  noStroke();
  fill(r, g, b);
  ellipse(scoreX, scoreY, 30, 30);
  fill(0, 250, 255);
  text("Time: " + str(millis()/1000), 20, 30);

  if (posX == scoreX && posY == scoreY) {
    win = true;
  }
}

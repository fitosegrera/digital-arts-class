    PImage boy;
    PImage girl;
    PImage over;
    int riverLeft = 400;
    int riverWidth = 100;
    float days = 365;
    int boyX = 0;
    int boyY = 0;
    int girlX = 0;
    int girlY = 0;
    int boyDx = 3;
    int boyDy = 3;
    int girlDx = 4;
    int girlDy = 4;

    void setup() {
        size(900, 500);
        boy = loadImage("boy.png");
        girl = loadImage("girl.png");
        over = loadImage("final.png");
    }

    void draw() {
        if (days > 0) {
            background(0);
            fill(255);
            rect(riverLeft, 0, riverWidth, 500);
            rect(20, 20, 60, 30);
            fill(0);
            textSize(30);
            text((int) days, 23, 47);
            image(boy, boyX, boyY);
            image(girl, girlX + riverLeft + riverWidth, girlY);

            days -= 0.6;
            boyX += boyDx;
            boyY += boyDy;
            girlX += girlDx;
            girlY += girlDy;
            if (boyX < 0) {
                boyX = 0;
                boyDx *= -1;
            }
            if (boyX > riverLeft - boy.width) {
                boyX = riverLeft - boy.width;
                boyDx = -boyDx;
            }
            if (boyY < 0) {
                boyY = 0;
                boyDy *= -1;
            }
            if (boyY > 500 - boy.height) {
                boyY = 500 - boy.height;
                boyDy *= -1;
            }
            if (girlX < 0) {
                girlX = 0;
                girlDx *= -1;
            }
            if (girlX > riverLeft - girl.width) {
                girlX = riverLeft - girl.width;
                girlDx *= -1;
            }
            if (girlY < 0) {
                girlY = 0;
                girlDy *= -1;
            }
            if (girlY > 500 - girl.height) {
                girlY = 500 - girl.height;
                girlDy *= -1;
            }
        } else {
            image(over, 0, 0);
        }
    }

class bgcircle {
  private float xPos;
  private float yPos;

  public bgcircle(int x, int y) {
    xPos = x;
    yPos = y;
  }

  public void distance(float x, float y) {
    float xDif = abs(x-xPos);
    float yDif = abs(y-yPos);
    float dist = sqrt(xDif*xDif + yDif*yDif);
    float size = lerp(0, 25, dist/100);
    fill(lerpColor(ugcirc, el, ballx/1000), 0.5);
    circle(xPos, yPos, size);
  }
  public void bdistance(float x, float y) {
    float xDif = abs(x-xPos);
    float yDif = abs(y-yPos);
    float dist = sqrt(xDif*xDif + yDif*yDif);
    float size = lerp(0, 25, dist/100);
    strokeWeight(01);
    fill(0, 0);
    stroke(lerpColor(color(0, 253, 255), el, dist/500));
    circle(xPos, yPos, size);
  }
}

public void backgroundCircles() {
  for (i=20; i<1000; i+=40) {
    for (j=20; j<1000; j+= 40) {
      bgcircle z = new bgcircle(j, i);
      float x = mouseX;
      float y = mouseY;
      if (!check && !fail) {
        z.bdistance(ballx, bally);
      } else {
        z.distance(x, y);
      }
    }
  }
}

public void altbackgroundCircles() {
  for (i=20; i<1000; i+=100) {
    for (j=20; j<1000; j+= 100) {
      bgcircle z = new bgcircle(j, i);
      float x = mouseX;
      float y = mouseY;
      if (!check && !fail) {
        z.bdistance(ballx, bally);
      } else {
        z.distance(x, y);
      }
    }
  }
}

void setup()
{
  size(1000, 1000);
  frameRate(120);
  background(255, 250, 232, 127);
}

int i = 1;
Boolean check =true;
Boolean itemOnScreen = false;
Boolean drawRect = false;
Boolean drawCirc = false;
color ugcirc = color(211, 53, 45);
color ugbar = color(17, 41, 108);
color el = color(165, 132, 237);
float ballx = 20;
float bally = 20;
float vx;
float vy;
Boolean fail = false;
color red = color(232, 19, 0);
color yellow = color(232, 225, 0);
color green = color(27, 152, 0);
int mX= 0;
int mY= 0;
int f = 180;//fade speed
int B =1;//BlurStrength
int j = 0;
float itemStartX = -1000;
float itemEndX = -1000;
float itemStartY = -1000;
float itemEndY = -1000;
float currItem = 0;
float radius = 0;
float introCount = 0;

void draw()
{
  altbackgroundCircles();
  //if (itemOnScreen ==  true) {
    //println("item on screen");
   /// itemCol();
  //}
  //randItem();

  underground();
  ball();
  j++;
  if (drawRect) {
    rect(itemStartX, itemStartY, 100, 50);
  }
  if (drawCirc) {
    circle(itemStartX, itemStartY, radius);
  }
 //introBlur();
  //introCount++;
}

void mouseClicked()
{
  check = false;
  vx = (mX - 20)/20;
  vy = (mY -20)/20;
  if (fail==true && mouseX<=780 && mouseX>=220 && mouseY<=708 && mouseY>=220) {
    restart();
  }
}

public void restart() {
  check=true;
  fail=false;
  i=0;
  ballx = 20;
  bally= 20;
}

public void underground() {
  if (i<11) {

    fill(255, 250, 232, f);
    rect(0, 0, width, height);
    strokeWeight(3);
    stroke(0);
    fill(211, 53, 45);
    circle(500, 500, 28*i);
    fill(255, 250, 232);
    circle(500, 500, 20*i);
    i++;
  }
  if (i>=11 && i<47) {
    int x = i-10;

    fill(255, 250, 232, f);
    rect(0, 0, width, height);
    strokeWeight(3);
    stroke(0);
    fill(211, 53, 45);
    circle(500, 500, 28*10);
    fill(255, 250, 232);
    circle(500, 500, 20*10);
    fill(17, 41, 108);
    rect(317, 470, x*10, 70);
    i++;
  }
  if (i>46 && i<100) {
    fill(255, 250, 232, f);
    rect(0, 0, width, height);
    strokeWeight(3);
    stroke(0);
    fill(211, 53, 45);
    circle(500, 500, 28*10);
    fill(255, 250, 232);
    circle(500, 500, 20*10);
    fill(17, 41, 108);
    rect(317, 470, 36*10, 70);
    fill(255, 250, 232, (i-46)*2);
    textSize(75);
    text('U', 330, 530);
    textSize(45);
    text("NDERGROUN", 375, 520);
    textSize(75);
    text('D', 620, 530);
    textSize(75);
    text("----------", 383, 500);
    text("----------", 383, 548);
    i+=2;
  }
  if (i>=100) {
    // if (i%30==0) {
    // filter(BLUR, B);
    //}
    fill(255, 250, 232, f);
    rect(0, 0, width, height);
    float x = ballx;
    float y = abs(x/1000);
    if (y>1) {
      y=1;
    }
    float z = 0;
    float w = 0;
    if (x<500) {
      z= x/500;
      w=0;
    } else {
      w = (x-500)/500;
      z=200;
    }
    strokeWeight(lerp(4, 0, y));
    stroke(lerp(-3, 3, y));
    fill(lerpColor(ugcirc, el, y));
    circle(500, 500, 28*10);
    fill(255, 250, 232);
    circle(500, 500, 20*10);
    fill(lerpColor(ugbar, el, y));
    rect(317, 470, 36*10, 70);
    fill(255, 255, 255, lerp(0, 300, w));
    textSize(75);
    text("ELIZABETH", 320, 530);
    fill(255, 250, 232, lerp(300, 0, z));
    textSize(75);
    text('U', 330, 530);
    textSize(45);
    text("NDERGROUN", 375, 520);
    textSize(75);
    text('D', 620, 530);
    textSize(75);
    text("----------", 383, 500);
    text("----------", 383, 548);
  }
}

/*class ball{
  
  private float x;
  private float y;
  private float vx;
  private float vy;
  private color colour;
  private int radius;
  
  
  
  public void ball(){
    fill(colour);
    circle(x,y,radius);
  }
  
  public void addV(float mX, float mY){
    if(mX > 400){
      mX=400;
    }
    if(mY > 400){
      mY=400;
    }
    vx = (mX - 20)/20;
    vy = (mY -20)/20;
  }
  
  public void checkCol(int i) {
  if (x <=30 && i>10)
  {
    vx=-vx;
  }
  if (i<30) {
    if (x>=970) {
      vx=-vx;
    }
  } else {
    if ((x>=960 && x<975)&&(y >= mouseY -60 && y<= mouseY+60)) {
      vx=-vx;
    } else if (x>=1000) {
      strokeWeight(3);
      stroke(0);
      fill(255, 40, 21);
      circle(500, 500, 28*10);
      fill(255, 250, 232);
      circle(500, 500, 20*10);
      fill(255, 255, 255);
      rect(317, 470, 36*10, 70);
      fill(255, 40, 21);
      textSize(75);
      text("G", 360, 530);
      textSize(45);
      text("AME", 405, 520);
      text("OVE", 517, 520);
      textSize(75);
      text("R", 590, 530);
      textSize(75);
      text("--------", 405, 500);
      text("--------", 405, 548);
      fill(0, 0, 0);
      fail = true;//take outside of the function
    }
  }
  
}*/

public void ball() {
  noStroke();
  if (check==true) {
    fill(255, 250, 232, f);
    rect(0, 0, width, height);
    fill(0, 0, 0);
    circle(ballx, bally, 20);
    stroke(5);
    float d =(mouseX*mouseY)/4000.0;
    float x = d/10;
    if (x<=2) {
      stroke(lerpColor(green, yellow, x/2));
    } else {
      stroke(lerpColor(yellow, red, (x-2)/4.0));
    }
    mX = mouseX;
    mY = mouseY;
    if (mX>400) {
      mX=400;
    }
    if (mY>400) {
      mY=400;
    }

    line(20, 20, mouseX, mouseY);
  } else {
    ballx +=vx;
    bally +=vy;
    noStroke();
    fill(0, 0, 0);
    circle(ballx, bally, 20);
    checkCol();
    rectMode(CENTER);
    rect(20, bally, 20, 90);
    rect(980, mouseY, 20, 120);
    rectMode(CORNER);
  }
}

public void checkCol() {
  if (ballx <=30 &&i>10)
  {
    vx=-vx;
  }
  if (i<30) {
    if (ballx>=970) {
      vx=-vx;
    }
  } else {
    if ((ballx>=960 && ballx<975)&&(bally >= mouseY -60 && bally<= mouseY+60)) {
      vx=-vx;
    } else if (ballx>=1000) {
      strokeWeight(3);
      stroke(0);
      fill(255, 40, 21);
      circle(500, 500, 28*10);
      fill(255, 250, 232);
      circle(500, 500, 20*10);
      fill(255, 255, 255);
      rect(317, 470, 36*10, 70);
      fill(255, 40, 21);
      textSize(75);
      text("G", 360, 530);
      textSize(45);
      text("AME", 405, 520);
      text("OVE", 517, 520);
      textSize(75);
      text("R", 590, 530);
      textSize(75);
      text("--------", 405, 500);
      text("--------", 405, 548);
      fill(0, 0, 0);
      fail = true;
    }
  }


  if (bally <=0 || bally >=1000) {
    vy=-vy;
  }
}

/*public void randItem() {
  if (j%840 == 0 && itemOnScreen ==false) {
    itemOnScreen = true;
    currItem = random(1, 5);
    itemStartX = random(100, 900);
    itemStartY = random(100, 900);
    print((int)itemStartX + "");
    switch((int)currItem) {
      case(1):
      drawRect = true;
      itemEndX = itemStartX + 100;
      itemEndY = itemStartY + 50;
      break;
      case(2):
        radius = 20;
        drawCirc = true;
        break;
      case(3):
        drawRect = true;
        itemEndX = itemStartX + 100;
        itemEndY = itemStartY + 50;
      break;
      case(4):
      radius=50;
      drawCirc =true;
      break;
    }
  }
}

public void itemCol() {
  if (currItem == 1 || currItem ==3) {
    if (ballx <= itemEndX && ballx>=itemStartX && bally<=itemEndY && bally>=itemStartY) {

      if (currItem == 1) {
        vx = vx*1.2;
        vy = vy*1.2;
      } else {
        vx = vx*0.8;
        vy=vy*0.8;
      }
      itemOnScreen = false;
      drawRect=false;
    }
  }
  if (currItem == 2 || currItem == 4) {
    if (pythagorus(ballx, bally, itemStartX, itemStartY) < radius) {
      if (currItem == 2) {
        vx = random(-10, 10);
        vy = random(-10, 10);
      } else {
        vx=-vx;
        vy=-vy;
      }
      itemOnScreen = false;
      drawCirc = false;
    }
  }
}*/

public float pythagorus(float  bx, float by, float rx, float ry) {
  float px = bx-rx;
  float py = by-ry;
  return (sqrt(px*px + py*py));
}

/*public void introBlur() {
  if (introCount>120) {
    introCount=120;
  }
  filter(BLUR, abs(120 - introCount)/60);
}*/

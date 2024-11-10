color bsg = #4D7100;
color dg = #035520;
color lg = #75EA3B;
color ylg = #A9EA32;
color y = #E7ED43;
color g = #3AD627;
color mdr = #6F1743;
color lo = #FFCD4D;
color vdg = #065A27;
color gy = #C4F20F;
color o = #D38506;
color[] c = {bsg, dg, lg, ylg, ylg, y, g, mdr, lo, vdg, g, g, gy, g, o};
int[] n = {1, 4, 1, 6, 9, 2, 8, 3, 4, 7, 3, 2, 11, 2, 14};
int a=0;
float b=10;
int x =0;
float bSpeed = 1.6;
float bsmoothing = 0;
boolean branch = false;
boolean side = true;
PImage stamp;
PImage vig;

void setup() {
  size(1700, 1020);
  frameRate(30);
  background(#FAF6D1);
  stamp = loadImage("stamp.png");
  vig = loadImage("vignette.png");
  vig.resize(1700,1020);
}

void draw() {
  noStroke();
  if (side) {
    stems();
    if (branch) {
      branches();
    }
  } else {
    datakey();
  }
  
}
void mouseClicked() {
  background(#FAF6D1);
  side = !side;
  a=0;
  x=0;
  b=10;
  bsmoothing=0;
  branch=false;
}
public void stems() {
  switch(a) {
    case(0):
    if (b>784) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(160, 785, 40);
    } else {
      fill(bsg);
      rect(150, 0, 20, b);
      b =b+(50 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(1):
    if (b>980) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(260, 980, 40);
    } else {
      fill(dg);
      rect(250, 0, 20, b);
      b =b+(60 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(2):
    if (b>588) {
      b=1;
      bsmoothing = 0;
      a++;
    } else {
      fill(lg);
      rect(350, 0, 10, b);
      b =b+(50 * pow(0.915, bsmoothing));
      bsmoothing++;
    }
    break;
    case(3):
    if (b>980) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(460, 980, 40);
    } else {
      fill(ylg);
      rect(450, 0, 20, b);
      b =b+(60 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(4):
    if (b>980) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(560, 980, 40);
    } else {
      fill(ylg);
      rect(550, 0, 20, b);
      b =b+(60 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(5):
    if (b>784) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(655, 784, 20);
    } else {
      fill(y);
      rect(650, 0, 10, b);
      b =b+(50 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(6):
    if (b>980) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(760, 980, 40);
    } else {
      fill(g);
      rect(750, 0, 20, b);
      b =b+(60 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(7):
    if (b>588) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(855, 588, 20);
    } else {
      fill(mdr);
      rect(850, 0, 10, b);
      b =b+(50 * pow(0.915, bsmoothing));
      bsmoothing++;
    }
    break;
    case(8):
    if (b>584) {
      b=1;
      bsmoothing = 0;
      a++;
    } else {
      fill(lo);
      rect(950, 0, 10, b);
      b =b+(50 * pow(0.915, bsmoothing));
      bsmoothing++;
    }
    break;
    case(9):
    if (b>392) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(1055, 385, 20);
    } else {
      fill(vdg);
      rect(1050, 0, 10, b);
      b =b+(40 * pow(0.9, bsmoothing));
      bsmoothing++;
    }
    break;
    case(10):
    if (b>196) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(1155, 192, 20);
    } else {
      fill(g);
      rect(1150, 0, 10, b);
      b =b+(15 * pow(0.925, bsmoothing));
      bsmoothing++;
    }
    break;
    case(11):
    if (b>196) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(1255, 192, 20);
    } else {
      fill(g);
      rect(1250, 0, 10, b);
      b =b+(15 * pow(0.925, bsmoothing));
      bsmoothing++;
    }
    break;
    case(12):
    if (b>584) {
      b=1;
      bsmoothing = 0;
      a++;
    } else {
      fill(gy);
      rect(1350, 0, 20, b);
      b =b+(50 * pow(0.915, bsmoothing));
      bsmoothing++;
    }
    break;
    case(13):
    if (b>784) {
      b=1;
      bsmoothing = 0;
      a++;
      circle(1455, 784, 20);
    } else {
      fill(g);
      rect(1450, 0, 10, b);
      b =b+(50 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
    case(14):
    if (b>980) {
      b=1;
      bsmoothing = 0;
      circle(1560, 980, 40);
      branch = true;
    } else {
      fill(o);
      rect(1550, 0, 20, b);
      b =b+(60 * pow(0.94, bsmoothing));
      bsmoothing++;
    }
    break;
  }
}

public void branches() {
  switch(x) {
    case(0):
    for (int y =1; y<16; y++) {
      fill(c[y-1]);
      rect(150 + 100*(y-1), 50, 40, 10);
    }
    break;
    case(30):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=2) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 100, 40, 10);
      }
    }
    break;
    case(60):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=3) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 150, 40, 10);
      }
    }
    break;
    case(90):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=4) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 200, 40, 10);
      }
    }
    break;
    case(120):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=5) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 250, 40, 10);
      }
    }
    break;
    case(150):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=6) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 300, 40, 10);
      }
    }
    break;
    case(180):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=7) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 350, 40, 10);
      }
    }
    break;
    case(210):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=8) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 400, 40, 10);
      }
    }
    break;
    case(240):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=9) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 450, 40, 10);
      }
    }
    break;
    case(270):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=10) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 500, 40, 10);
      }
    }
    break;
    case(300):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=11) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 550, 40, 10);
      }
    }
    break;
    case(330):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=12) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 600, 40, 10);
      }
    }
    break;
    case(360):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=13) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 650, 40, 10);
      }
    }
    break;
    case(390):
    for (int y =1; y<16; y++) {
      if (n[y-1]>=14) {
        fill(c[y-1]);
        println(y-1);
        rect(150 + 100*(y-1), 700, 40, 10);
      }
    }
    branch = false;
    break;
  }
  x++;
}

public void datakey() {
  if (!branch) {
    fill(dg);
    rect(100, 250, 20, 550);
    rect(100, 350, 40, 10);
    rect(100, 450, 40, 10);
    rect(100, 550, 40, 10);
    rect(100, 650, 40, 10);
    rect(100, 750, 40, 10);
    circle(110, 800, 40);
    textSize(25);
    fill(0, 0, 0);
    text("The colour of stems indicates the most common colour \npresent on the group of trees.", 190, 400);
    textSize(25);
    text("<- These small branches from the stems each represent a\n singular tree within a group", 150, 665);
    text("Λ\n |\n This ball at the end of the line indicates that the majority \n   of trees in the group had more leaves on them then on the ground.", 100, 850);
    text("The thickness of the line can either be thick or thin, indicating whether \nthe majority of trunks of trees in the group are thick or thin. \n |\nV", 102, 150);
    rect(900, 50, 7, 900);
    textSize(45);
    text("Shayan Janjua", 980, 489);
    rect(970, 490, 500, 2);
    text("Northampton Square", 980, 549);
    rect(970, 550, 500, 2);
    text("EC1V 0HB", 980, 619);
    rect(970, 620, 500, 2);
    text("London", 980, 689);
    rect(970, 690, 500, 2);
    text("United Kingdom", 980, 759);
    rect(970, 760, 500, 2);
    stamp.resize(400,400);
    image(stamp, 1350, 0);
    branch = true;
  }
}

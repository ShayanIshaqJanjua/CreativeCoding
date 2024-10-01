void setup()
{
  size(1000, 1000);
  frameRate(20);
  noise(20);
  background(255, 250, 232);
  
}

int i = 1;
void draw()
{
  underground();
}

void mouseClicked() {
  i=0;
  background(255, 250, 232);
}

public void underground() {
   if (i<11) {
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
    fill(17, 41, 108);
    rect(317, 470, x*10, 70);
    i++;
  }
  if (i>46 && i<100) {
    fill(255, 250, 232,(i-46)*2);
    textSize(75);
    text('U', 330, 530);
    textSize(45);
    text("NDERGROUN", 375, 520);
    textSize(75);
    text('D', 620, 530);
    textSize(75);
    text("----------", 383, 500);
    text("----------", 383, 548);
    i++;
  }
}

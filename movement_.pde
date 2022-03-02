
float x = 300;
float y = 250;
float dx = 2;
PShape vector;

void setup() {
  size(500,500);
}

void draw() {
  background(210);
  vector = loadShape("smoke.svg");
  scale(.5,.5);
  shape(vector, x*2, y*2);
  if (y>-20) {
    translate(x, y);
    y-=dx;
  } else if (y<=-20) {
    reinitalize();
  }
}

void reinitalize() {
  y=250;
}

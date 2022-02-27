PShape mountainRange;
Mountain mtn;
PShape sun;
Sun sunObject;
color sky;
PShape bridge;
Bridge bridgeObject;

void setup() {
  size(800, 500);
  sky = color(255,127,80);
  mtn = new Mountain(mountainRange);
  sunObject = new Sun(sun,color(255,204,51),500,75);
  bridgeObject = new Bridge(bridge);
 
}

void draw(){
  float b = blue(sky);
  float r = red(sky);
  float g = green(sky);
   
  if (g>0){
    b+=.99;
    r-=.5;
    g-=.4;
  }
  sky = color(r, g, b);
  background(sky);
  sunObject.move();
  mtn.display();
  bridgeObject.display();
}

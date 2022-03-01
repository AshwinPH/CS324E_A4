PShape mountainRange;
Mountain mtn;
PShape circle;
Sun sun;
Moon moon;
color sky;
PShape bridge;
PShape sunshape;
PShape star1;
PShape star2;
PShape star3;

Bridge bridgeObject;


float counter;
float c;
void setup() {
  size(800, 600);
  
  mtn = new Mountain(mountainRange);
  sunshape = loadShape("sun.svg");
  sun = new Sun(sunshape,color(255,204,51),500,120,1);
  PShape star1 = loadShape("star.svg");
  PShape star2 = loadShape("star.svg");
  PShape star3 = loadShape("star.svg");
  moon = new Moon(circle,star1, star2, star3, color(255),200,390,-2.5);
  bridgeObject = new Bridge(bridge);
  colorMode(HSB,360,100,1);
  sky = color(260,40,.8);
  background(sky); 
  colorMode(RGB, 255, 255,255);
}


void draw(){
  // counts how many times draw executes in a "day" (1222 times)
  counter+=1;
  if (sun.xpos > 490 && sun.ypos < 120){
   counter=0;   
  } else{
   counter= counter+ 1;
  }
  
  //day and night mode
  colorMode(HSB,360,100,1);
  //println(counter);
  if (counter<1000){
     sky = color(260-counter/40,40,1-counter/800);
  }
  if (counter/800 > 1){
     sky = color (230+counter/40,40,counter/800-1);
  }
  background(sky);
  colorMode(RGB, 255, 255,255);
  
  //drawing background in a particular order
  sun.move();
  moon.move();
  mtn.display();
  bridgeObject.display();
}

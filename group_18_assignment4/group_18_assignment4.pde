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

PShape wheel, connector;
DriveTrain drive1;
DriveTrain drive2;
DriveTrain drive3;

PShape body;
Train train;

PShape vector;
Smoke smoke;
Smoke smoke2;

float counter;
float c;

float x0 = -1000;
float y0 = 530;
int speed = 3;

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
  
  drive1 = new DriveTrain(wheel, connector,80+x0,y0,0,20,30);
  drive2 = new DriveTrain(wheel, connector,-30+x0,y0,0,20,30);
  drive3 = new DriveTrain(wheel, connector,-155+x0,y0,0,20,30);
  drive1.create();
  drive2.create();
  drive3.create();
  
  
  smoke = new Smoke(vector,0,-100,1);
  smoke2 = new Smoke(vector,0,-100,2);
  train = new Train(body,100+x0,y0,smoke,smoke2);
  train.create();
  
  
  /*
  puffs = new Smoke[8];
  
  for (int i = 0; i<puffs.length;i++){
      puffs[i] = new Smoke(vector,60*i,400);
      puffs[i].create();
  }
  */
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
 
  
  //draw train
  train.display();
  train.move(speed);
  
  if(counter%(int(1222/5)) == 0){
   train.smoke.spawn(drive1.x); 
  }
  if((counter-300)%(int(1222/5)) == 0){
   train.smoke2.spawn(drive1.x); 
  }
  smoke2.display();
  smoke2.move(4);
  smoke.display();
  smoke.move(4);
  //println(smoke.x);
 // println(smoke.y);
  
  
  
  //drawing train wheels and crankshaft
  drive1.display();
  drive1.move(speed);
  drive2.display();
  drive2.move(speed);
  drive3.display();
  drive3.move(speed);
  
  /*
  if(drive1.x >= 0 && drive1.x <= width){
     if(drive1.x%int((width/8))==0){
       
     }
    
  }
  */
   bridgeObject.display();
   
  if(drive1.x > width+1000){
    drive1.reset(0);
    drive2.reset(110);
    drive3.reset(235);
    train.reset();
  }
  
}

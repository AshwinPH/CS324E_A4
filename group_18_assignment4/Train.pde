class Train{
  
  
  float x,y;
  PShape train;
  Smoke smoke;
  Smoke smoke2;
  
  Train(PShape train, float x, float y, Smoke smoke, Smoke smoke2){
    this.train = train;
    this.x=x;
    this.y=y;
    this.smoke = smoke;
    this.smoke2 = smoke2;
    
  }
  
  void create(){
    
    smoke.create();
    smoke2.create();
    
    color blue =  color(77,173,191);
    color orange =  color(252,111,64);
    color dark =  color(252,73,13);
    color brown =  color(98,65,43);
    color cream =  color(250,235,225);
    
    train = createShape(GROUP); 
    
     //create the body of the train
    fill(orange);
    stroke(orange);
    PShape mainbody = createShape(RECT,300,240,100,50);
    PShape chimney = createShape(QUAD,385,215,387,240,397,240,399,215);
    PShape body2 = createShape(RECT,300,210,55,80);
   
    
    PShape carriage1 = createShape(QUAD,185,220,190,290,275,290,280,220);
    PShape carriage2 = createShape(QUAD,60,220,65,290,150,290,155,220);
    
    fill(dark);
    PShape mainline = createShape(RECT,400,240,10,50);
    
    fill(brown);
    stroke(0);
    PShape connector1 = createShape(RECT,150,260,40,7); 
    PShape connector2 = createShape(RECT,275,260,25,7); 
    PShape midconnector1 = createShape(QUAD,170,255,172,270,177,270,175,255); 
    PShape midconnector2 = createShape(QUAD,285,255,287,270,292,270,290,255); 
    
    fill(blue);
    stroke(blue);
    PShape top = createShape(QUAD,300,195,290,210,365,210,355,195); 
    PShape line1 = createShape(RECT,60,290,95,10); 
    PShape line2 = createShape(RECT,185,290,95,10);
    PShape line3 = createShape(RECT,58,220,100,10); 
    PShape line4 = createShape(RECT,182,220,100,10); 
    PShape line5 = createShape(RECT,295,290,110,10);
    noStroke();
    PShape tri = createShape(TRIANGLE,405,285,435,305,405,305);
    PShape linechim = createShape(RECT,382,210,20,5);
  
    //front curve 
    PShape curve = createShape(ELLIPSE,405,265,50,50);
  
    //wheels 
    fill(brown);
    stroke(0);
    PShape wheel1 = createShape(ELLIPSE,80,300,30,30);
    PShape wheel2 = createShape(ELLIPSE,110,302,20,20);
    PShape wheel3 = createShape(ELLIPSE,140,302,20,20);
    
    PShape wheel4 = createShape(ELLIPSE,205,300,30,30);
    PShape wheel5 = createShape(ELLIPSE,235,302,20,20);
    PShape wheel6 = createShape(ELLIPSE,265,302,20,20);
    
    PShape wheel7 = createShape(ELLIPSE,315,299,35,35);
    PShape wheel8 = createShape(ELLIPSE,345,302,20,20);
    PShape wheel9 = createShape(ELLIPSE,375,302,20,20);
    PShape wheel10 = createShape(ELLIPSE,395,302,20,20);
    
    //wheel details 
    fill(cream);
    stroke(cream);
    PShape innerwheel1 = createShape(ELLIPSE,80,300,20,20);
    PShape innerwheel2 = createShape(ELLIPSE,110,302,10,10);
    PShape innerwheel3 = createShape(ELLIPSE,140,302,10,10);
    
    PShape innerwheel4 = createShape(ELLIPSE,205,300,20,20);
    PShape innerwheel5 = createShape(ELLIPSE,235,302,10,10);
    PShape innerwheel6 = createShape(ELLIPSE,265,302,10,10);
    
    PShape innerwheel7 = createShape(ELLIPSE,315,299,25,25);
    PShape innerwheel8 = createShape(ELLIPSE,345,302,10,10);
    PShape innerwheel9 = createShape(ELLIPSE,375,302,10,10);
    PShape innerwheel10 = createShape(ELLIPSE,395,302,10,10);
    
    //windows 
   
    PShape window1 = createShape(RECT,205,245,20,20);
    PShape window2 = createShape(RECT,240,245,20,20);
    PShape wincurve1 = createShape(ELLIPSE,215,245,20,20);
    PShape wincurve2 = createShape(ELLIPSE,250,245,20,20);
   
    PShape window3 = createShape(RECT,80,245,20,20);
    PShape window4 = createShape(RECT,115,245,20,20);
    PShape wincurve3 = createShape(ELLIPSE,90,245,20,20);
    PShape wincurve4 = createShape(ELLIPSE,125,245,20,20);
    
    PShape mainwindow = createShape(RECT,312,230,30,30);
    PShape mainwincurve = createShape(ELLIPSE,327,230,30,30);
    
    train.addChild(curve);
    train.addChild(mainbody);
    train.addChild(tri);
    train.addChild(mainline);
    train.addChild(chimney);
    train.addChild(body2);
    train.addChild(top);
    train.addChild(carriage1);
    train.addChild(carriage2);
    train.addChild(connector1);
    train.addChild(connector2);
    train.addChild(midconnector1);
    train.addChild(midconnector2);
    train.addChild(line1);
    train.addChild(line2);
    train.addChild(line3);
    train.addChild(line4);
    train.addChild(line5);
    
    train.addChild(linechim);
    train.addChild(wheel1);
    train.addChild(wheel2);
    train.addChild(wheel3);
    train.addChild(wheel4);
    train.addChild(wheel5);
    train.addChild(wheel6);
    train.addChild(wheel7);
    train.addChild(wheel8);
    train.addChild(wheel9);
    train.addChild(wheel10);
    train.addChild(innerwheel1);
    train.addChild(innerwheel2);
    train.addChild(innerwheel3);
    train.addChild(innerwheel4);
    train.addChild(innerwheel5);
    train.addChild(innerwheel6);
    train.addChild(innerwheel7);
    train.addChild(innerwheel8);
    train.addChild(innerwheel9);
    train.addChild(innerwheel10);
    train.addChild(wincurve1);
    train.addChild(wincurve2);
    train.addChild(wincurve3);
    train.addChild(wincurve4);
    train.addChild(window1);
    train.addChild(window2);
    train.addChild(window3);
    train.addChild(window4);
    train.addChild(mainwincurve);
    train.addChild(mainwindow);
    //shape(train); 
    
  }
  
  void display(){
    pushMatrix();
    translate(x-395,y-302);
    shape(train);
    popMatrix();
    
    
  }
  
  void move(int speed){
    this.x += speed; 
  }
  
  
  
  void reset(){
   x = -50; 
  }
  
  
  
  
}

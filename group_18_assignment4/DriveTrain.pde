class DriveTrain{
  PShape wheel, connector;
  float x,y,angle,r,d;
  
  
  DriveTrain(PShape wheel, PShape connector,float x, float y, float angle, float r,float d){
   this.wheel = wheel;
   this.connector = connector;
   this.x = x;
   this.y = y;
   this.angle = angle;
   this.r = r;
   this.d = d;
  }
  
  void create(){
    PShape rim1, rim2, hub, spokes;
    
    wheel = createShape(GROUP);
  
    rim1 = createShape(ELLIPSE,0,0,r,r);
    rim1.setStrokeWeight(r/6);
    rim1.setStroke(0);
    rim1.setFill(false);
    
    rim2 = createShape(ELLIPSE,0,0,r,r);
    rim2.setStrokeWeight(r/10);
    rim2.setStroke(255);
    rim2.setFill(false);
   
    spokes = createShape(LINE,0,-1*r/2,0,r/2);
    spokes.setStrokeWeight(r/10);
    spokes.setStroke(0);
    
    hub = createShape(POINT,0,0);
    hub.setStrokeWeight(r/5);
    hub.setStroke(255);
    
    connector = createShape(LINE,0,0,-1*d,0);
    connector.setStrokeWeight(r/10);
    connector.setStroke(200);
    
    
    
   wheel.addChild(spokes);
   wheel.addChild(rim1);
   wheel.addChild(rim2);
   wheel.addChild(hub);
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(angle);
    shape(wheel);
    popMatrix();
    
    pushMatrix();
    translate(x-d,y);
    rotate(angle);
    shape(wheel);
    popMatrix();
    
    pushMatrix();
    translate(x+r/2*cos(angle),y+r/2*sin(angle));
    shape(connector);
    popMatrix();
    
  }
  
  void move(float speed){
    angle += speed/r ;
    
    x += speed;
  }
  
  void reset(float offset){
   x = -70-offset; 
  }
  
  
  
  
  
  
}

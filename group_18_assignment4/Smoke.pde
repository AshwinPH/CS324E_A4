class Smoke {
  float x;
  float y;
  float y1=250;
  float scale;
  PShape vector;
  
 
  
  Smoke(){}
  Smoke(PShape vector, float x, float y,float scale) {
    this.y = y;
              // instantiate parameters
    this.x = x;
    this.vector = vector;
    this.scale = scale;
  }
 
   void create(){
     vector = loadShape("smoke2.svg");
   }
   
   void display() {
    pushMatrix();
    translate(x,y);
    scale(.5*scale,.5*scale);
    shape(vector, 0,0);
    popMatrix();
    
    
   }
   
   void move(float speed){
     y -= speed;
   }
    /*
    if (y>-20) {
      translate(x, y);
      y-=dx;
    } else if (y<=-20) {
      reinitalize();
    }
   */


  void reinitalize() {
    y=y1;
  }
  
  void spawn(float x){
      this.x = x;
      y = 425;
      //println("debug");
  }
}

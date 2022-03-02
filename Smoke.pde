class Smoke {
  float x;
  float y;
  float dx;
  float y1=250;
  PShape vector;
  
 
  
  Smoke(){}
  Smoke(float x, float y, float dx) {
    this.y = y;
    this.dx = dx;              // instantiate parameters
    this.x = x;
  }
 
   void display() {
    vector = loadShape("smoke2.svg");
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
    y=y1;
  }
}

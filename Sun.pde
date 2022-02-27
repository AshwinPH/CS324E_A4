class Sun{
  PShape sun;
  color c;
  int xpos;
  int ypos;
  
  Sun(PShape sun, color c, int xpos, int ypos){
    this.sun = sun;
    this.c=c;
    this.xpos = xpos;
    this.ypos = ypos;
  }
  void create(int xpos, int ypos, color c){
    sun = createShape(ELLIPSE,xpos,ypos,60,60);
    sun.setStroke(c);
    sun.setFill(c);
  }
  void move(){
    ypos += 1;
    float g = green(c);
    g -= 2;
    this.c = color(red(c), g, blue(c));
    create(xpos, ypos, c);
    shape(sun);
  }
}

class Sun extends CircleInTheSky{
  Sun(PShape circle, color c, float xpos, float ypos, float angle){
    super(circle,c,xpos,ypos,angle);
  }
    void create(float xpos, float ypos, color c){
    circle.disableStyle(); 
    fill(c);
    stroke(c);
    shape(circle,xpos,ypos);
 
  }
  
  void move(){
    angle += 0.007;
    xpos += cos(angle)*1.4;
    ypos += sin(angle)*1.4;
    float g = green(c);
    if (this.xpos<250){
      g += 1;
    } else{
      g -= 2;
    }
    this.c = color(red(c), g, blue(c));
    create(xpos, ypos, c);
  }
}

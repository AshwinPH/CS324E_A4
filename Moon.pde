class Moon extends CircleInTheSky{
  PShape star1, star2, star3;
  Moon(PShape moon, PShape star1, PShape star2, PShape star3, color c, float xpos, float ypos, float angle){
    super(moon,c,xpos,ypos,angle);
    this.star1 = star1;
    this.star2 = star2;
    this.star3 = star3;
  }
    void create(float xpos, float ypos, color c){
    PShape constellation = createShape(GROUP); 
    PShape moon = loadShape("moon.svg");
    constellation.addChild(moon);
    constellation.addChild(star1);
    constellation.addChild(star2);
    constellation.addChild(star3);
    moon.disableStyle(); 
    star1.disableStyle();
    star2.disableStyle();
    star3.disableStyle();
    fill(c);
    stroke(c);
    shape(moon,xpos,ypos);
    star1.translate(random(-30,30),random(-30,30));
    star2.translate(random(-30,30),random(-30,30));
    star3.translate(random(-30,30),random(-30,30));
    shape(star1,xpos-30,ypos-25,20,25);
    shape(star2,xpos+50,ypos-30,20,10);
    shape(star3,xpos+30,ypos+20,10,10);
 
  }
  
  void move(){
    angle -= 0.007;
    xpos += sin(angle)*1.4;
    ypos += cos(angle)*1.4;
    this.c = color(245);
    create(xpos, ypos, c);
  }
}

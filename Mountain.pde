class Mountain{
  PShape mountainRange;
  
  Mountain(PShape mountainRange){
    this.mountainRange = mountainRange;
  }
  void create(){
    mountainRange = loadShape("mountainRange.svg");
  }

  void display(){
     this.create();
     shape(mountainRange,0,50,width,height-100);
     stroke(0,15,50);
     fill(0,15,50);
     rect(0,400,width,100);
  }
}

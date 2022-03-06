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
     shape(mountainRange,0,100,width,height-100);
     stroke(0,15,50);
     fill(0,15,50);
     rect(0,500,width,100);
  }
}

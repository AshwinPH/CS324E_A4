class Bridge{
  PShape bridge;
  
  Bridge(PShape bridge){
    this.bridge = bridge;
  }
  void create(){
    bridge = loadShape("architecture.svg");
  }

  void display(){
     this.create();
     bridge.disableStyle(); 
     fill(150);
     shape(bridge,-60,310,width+130,height);
  }
}

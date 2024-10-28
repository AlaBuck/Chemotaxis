class Leaf{
  int myC;
  int myX,myY,myYspeed;
  
  Leaf(color c,int x, int y, int s){
   myC = c;
   myX = x;
   myY = y;
   myYspeed = s;
  }
  
  void show(){
    rectMode(CENTER);
    fill(myC);
    stroke(87,177,252);
    ellipse(myX,myY,20,10);
  }
  
  void move(){
    if(myY<height){
    myY=myY+(int)((Math.random()*5)-myYspeed);
    myX=myX+(int)((Math.random()*5)-2);
    } else{
      myY=0;
      myX=(int)(Math.random()*400);
  }
}
}
Leaf[] leaf;
void setup(){
  size(400,400);
  background(87,177,252);
  leaf=new Leaf[10];
  for(int i=0; i<leaf.length; i++){
    leaf[i]=new Leaf(254, (int)(Math.random()*400),0,1);
  }
}
void draw(){
  background(87,177,252);
  for(int i=0; i<leaf.length; i++){
    leaf[i].show();
    leaf[i].move();
  }
}

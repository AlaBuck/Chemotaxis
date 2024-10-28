class Leaf{
  int myC;
  float myX,myY,myYspeed;
  
  Leaf(){
    myC=color(216,48,48);
    myX=(float)(Math.random()*400);
    myY=(float)(Math.random()*400);
    myYspeed=1;
  }
  
  Leaf(color c,float x, float y, float s){
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

class Snow{
  int myC;
  int myX,myY,myYspeed;
  
  Snow(color c,int x, int y, int s){
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
    if(mouseX>myX){
      myX=myX+(int)((Math.random()*5)-2);
    } else {
      myX=myX-(int)((Math.random()*5)-1.5); 
    }
  }
}

Snow[] flake;

void setup(){
  size(400,400);
  flake=new Snow[25];
  for(int i=0; i<flake.length; i++){
    flake[i]=new Snow(254, (int)(Math.random()*400),0,1);
  }
}

void draw(){
  background(4,22,44);
  for(int i=0; i<flake.length; i++){
    flake[i].show();
    flake[i].move();
  }
}

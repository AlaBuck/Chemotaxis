class Rain{
  int myC;
  float myX,myY,myYspeed;
  
  Rain(){
    myC=color(87,177,252);
    myX=(float)(Math.random()*400);
    myY=(float)(Math.random()*400);
    myYspeed=0.5;
  }
  
  void show(){
    fill(myC);
    ellipse(myX,myY,20,10);
  }
  
  void drop(){
    myY += myYspeed;
    if(myY>height){
    myY=0;
    myX=(float)((Math.random()*400)+1);
  }
}
}
Rain[] rain;
void setup(){
  size(400,400);
  rain=new Rain[100];
  for(int i=0; i<rain.length; i++){
    rain[i]=new Rain();
  }
}
void draw(){
  for(int i=0; i<rain.length; i++){
    rain[i].show();
    rain[i].drop();
  }
}

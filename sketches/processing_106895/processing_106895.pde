
int x=20;
int y=20;
int dx=0;
int dy=0;
void setup() {  
  size(300, 300);
  background(1,1,69)
  }
void draw() {  
  fill(0,255,255)
  ellipse(x,y,20,20);
  if(key=='d'){
      dx=1;
  }
  if(key=='s'){
     dy=1;
  }
  if(key=='a'){
     dx=-1;
  }
  if(key=='w'){
     dy=-1
  }
  x=x+dx;
  y=y+dy;

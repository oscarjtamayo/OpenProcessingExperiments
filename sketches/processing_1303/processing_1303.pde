

// Jean-no/cc-Share-alike
// http://www.hyperbate.com/dernier/ 

truc[] trucs = new truc[0];
float ray;

void setup(){
  smooth();
  noStroke();
  fill(0);
  ray=0;
  size(500,500);
  background(0);
  for(int a=0;a<24;a++){
    for(int b=0;b<24;b++){
      new truc(a*20+20 ,b*20+20 );
    } 
  } 
}

void draw(){
  background(255); 
  ray = (ray*9+sqrt(pow( width/2-mouseX,2)+pow( height/2-mouseY,2))*0.04)*0.1;
  for(int a=0;a<trucs.length;a++){
    trucs[a].dessine();
  } 
}

class truc{
  float x, y,a,v,a2,v2; 
  truc(float _x, float _y){ 
    a=radians(random(360));
    a2=radians(random(360));
    x=_x;
    y=_y;
    v=radians(random(1.5,3));
    v2=radians(random(-4,4));
    trucs = (truc[]) append(trucs, this);
  }
  void dessine(){
    a+=v; 
    a2+=v2;
    float re = 1+cos(a)*30; 
    ellipse(x+cos(a2)*ray,y+sin(a2)*ray, re,re);
  }
}



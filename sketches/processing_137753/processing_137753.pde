
float x=-100; float y=100; int valor=100;

void setup() 
{  
noStroke();
size(200, 200);
}

void draw() { 
background(51);  
  funcionCuadratica();
  }
  void funcionCuadratica () {
  for(inte x=-valor; x<valor;x++){
  y=(x*x)/10
  fill(225);
  ellipse(x+100,y-1,10,10);  
}
}

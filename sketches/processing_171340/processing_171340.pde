
int step = 5;
int sz = 1;
int totalParticles = 5000;
float x[] = new float[totalParticles];
float y[] = new float[totalParticles];

void setup() {
  size(400,400);
  x[0] = width/2;
  y[0] = height/2;
  
}


void draw() {
  
  background(0);
  for ( int i = 0; i< totalParticles; i++) {
    randomMove(i);
    checkBorders(i);
    display(i);
  }
 
}

void checkBorders(int i) {
    // Comprobamos bordes
  if ( x[i] < 0 ) {
   x[i] = width;
    
  }
  
  if ( x[i] > width ) {
   x[i] = 0;
  }
  
  if ( y[i] < 0 ) {
   y[i] = height;
    
  }
  
  if ( y[i] > height ) {
   y[i] = 0;
  }
  /*
  x = constrain(x,0,width);
  y = constrain(y,0,height);  
  */  
}

void randomMove(int i) {
    //Movimiento Random Walker
  float r = random(100);
  if ( r < 25 ){
   //derecha
   x[i] += step; 
  } else if ( r< 50 ) {
    //izquierda
   x[i] -= step; 
  } else if ( r<75 ) {
    //Arriba
   y[i]  += step; 
  }else {
    //Abajo
   y[i] -= step; 
  }
  
}

void display(int i) {
 fill(255);
 stroke(255);
 strokeWeight(0.001);

 // La posicion depende del mouse
 //line(x[i]-sz,y[i]-sz,x[i]+sz,y[i]+sz);
 //line(x[i]-sz,y[i]+sz,x[i]+sz,y[i]-sz);

 ellipse(x[i],y[i],sz,sz);  
  
}



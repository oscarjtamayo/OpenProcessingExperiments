


float x, y;
float angle = 0; 
float r = 400;
float diff = 1; 


void setup() {
  size(600, 600);
  background(255);

}

void draw() {

  noFill(); 


  x = r * cos(angle); 
  y = r * sin(angle);

  strokeWeight(0.5); 
  stroke(0, 50,25); 

  translate(width/2, height/2); 
  rotate(r); 

  ellipse(0, 0, x, y);
  ellipse(x, 0, x, 10);
  line( 0, 0, x, y); 

  angle = angle +0.1;
  r = r - diff;

  if ( r == 0 || r == 400) { 
    diff =  diff * -1;
  }
  
  
   noFill(); 


  x = r * cos(angle); 
  y = r * sin(angle);

  strokeWeight(0.4); 
  stroke(225, 60,60); 

  translate(width/2, height/2); 
  rotate(r); 

  ellipse(0, 0, x, y);
  ellipse(x, 0, x, 10);
  line( 0, 0, x, y); 

  angle = angle +0.1;
  r = r - diff;

  if ( r == 0 || r == 1000) { 
    diff =  diff * -20;
  }
}




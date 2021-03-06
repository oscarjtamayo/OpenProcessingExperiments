
int counter;
int ballR;    // ball radius

void setup() {  //setup function called initially, only once
  size(512, 512);
  counter = 0;
  ballR = 20;
}

void draw() {  //draw function loops 

  // erase background 
  fill(255,255,255,64);
  rect(0,0,width,height);
  
  fill(192, 192, 192);
  textSize(22);
  text("sine cosine sample", 20, 30);

  // draw cross line
  stroke(224, 224, 224);  
  line(width/2, 0, width/2, height );
  line(0, height/2, width, height/2 );

  noStroke();

  // draw blue ball
  fill(64, 128, 255);                         
  ellipse(200*cos(counter/10) +width/2, -200*sin(counter/10) + height/2, ballR, ballR );

  counter++;
}

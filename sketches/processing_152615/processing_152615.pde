
/* 3.11 BoingyBoingyTron */
/* By Richard Lyall */

float xPos[], yPos[]; // ball position
float distIncrement[]; // How far the ball travels per frame
float angle[]; // What's your angle? Everyone's got an angle (Humphrey Bogart)
float r[], g[], b[]; // draw colour for each ball
float ballRadius;
int num; // how many balls? That is the question we're all asking.


void setup(){
  
  size (800,800);
  ellipseMode(CENTER);

  num = 200;
  ballRadius = 5;
  smooth();

  xPos = new float[num];
  yPos = new float[num];
  angle = new float[num];
  r = new float[num];
  g = new float[num];
  b = new float[num];
  distIncrement = new float[num];
  
  for (int i=0; i < num-1; i++) {
    xPos[i] = width/2;
    yPos[i] = height/2; 
  
    angle[i] = random(-2,2);
    
    r[i] = random (0,255);
    g[i] = random (0,255);
    b[i] = random (0,255);
    
    distIncrement[i] = random(0.1,1.3);
  }
 
}

void draw() {

  //background(0);
  fill(0,25);
  rect(0,0,width,height);
  strokeWeight(0.5);
  
  for (int i=0; i < num-1; i++) {
    
    //float drawCol = map(i,0,num-1,20,235); 
    //fill(drawCol);
    //stroke(drawCol);
    
    fill (r[i],g[i],b[i]);
    ellipse(xPos[i],yPos[i],ballRadius*sin(frameCount),ballRadius*sin(frameCount));
    
    // draw line between pairs of blobs
    if (i < num-2) {
      stroke (r[i],g[i],b[i]);
      line (xPos[i],yPos[i],xPos[i+1],yPos[i+1]);
    }
  
    // add a little random walk to trajectories
    angle[i] += random(-0.3,0.3);
  
    // Move ball to next location
    xPos[i] += (distIncrement[i] * TWO_PI * sin(angle[i]));
    yPos[i] += (distIncrement[i] * TWO_PI * cos(angle[i]));
  
    // Reverse direction on hitting horizontal screen edge
    if (xPos[i] <= ballRadius/2 || 
        xPos[i] >= width - ballRadius/2) {
      angle[i] = - angle[i]; 
    }
  
    // Reverse direction on hitting vertical screen edge
    if (yPos[i] <= ballRadius/2 || 
      yPos[i] >= height - ballRadius/2) {
      angle[i] = PI - angle[i];
    }
    

  }
  
}

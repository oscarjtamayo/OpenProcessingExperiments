
PImage logo;  // initialize variable

// The statements in the setup() function 
// execute once when the program begins
void setup() 
{
  size(400, 400);  // Size should be the first statement
  stroke(255);     // Set line drawing color to white
  logo = loadImage("cobra.png");  // Load the image into the program 
  frameRate(30);
}

int ballX = width/2;
int ballY = height/2;
int dx = 3;
int dy = -2;

// The statements in draw() are executed until the 
// program is stopped. Each statement is executed in 
// sequence and after the last line is read, the first 
// line is executed again.
void draw() 
{ 
  background(130);   // Set the background to black
  ballX = ballX - dx;
  ballY = ballY - dy; 
  if ( (ballY < 0) || (ballY + logo.height > height) )
  { 
    dy = dy * -1;
    ballY = ballY - dy; 
  } 

  if ( (ballX < 0) || (ballX + logo.width > width) )
  { 
    dx = dx * -1;
    ballX = ballX - dx; 
  } 
     
  //ellipse(ballX, ballY, 10, 10);  the bouncing ball
  image(logo, ballX, ballY);  //the bouncing logo
} 


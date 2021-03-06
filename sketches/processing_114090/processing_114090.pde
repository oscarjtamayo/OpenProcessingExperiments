
//Definitions

float xpos;
float ypos;
float xpos2;
float ypos2;
float xpos3;
float ypos3;
float xpos4;
float ypos4;
float xpos5;
float ypos5;
float xpos6;
float ypos6;

//VARIABLES - Change these for differing visual effects.
float a = 500;
float a2 = 10;

//Setup for Animation Area
void setup(){
  size (600,600);
  
  //Change these values to alter the starting positions of the circles.
  xpos  = width/2;
  ypos  = width/2;
  xpos2 = width/2;
  ypos2 = width/2;
  xpos3 = width/2;
  ypos3 = width/2;
  xpos4 = width/2;
  ypos4 = width/2;
  xpos5 = width/2;
  ypos5 = width/2;
  xpos6 = width/2;
  ypos6 = width/2;
}

//Setup for Animation
void draw(){  
//The Different Colours and Shapes of the objects; Change the fill values for different colours.
fill(0, 0);
rect(0);
 
fill(200,60,60);
ellipse(xpos, ypos, 40, 40);

fill(60,60,200);
ellipse(xpos2, ypos2, 40, 40);

fill(60,200,60);
ellipse(xpos3, ypos3, 40, 40);

fill(200,60,200);
ellipse(xpos4, ypos4, 40, 40);

fill(200,200,60);
ellipse(xpos5, ypos5, 40, 40);

fill(60,200,200);
ellipse(xpos6, ypos6, 40, 40);
a=a+2.3;
a2=a2+1;

//The type of curve that is created. WARNING - Using "tan" as a value provides odd results, not reccommended.
float xChange = sin(radians(a2));
float yChange = sin(radians(a));

//The lengths of each arc, alter these to get different sized circles and curves.
xpos += xChange*2;
ypos += yChange*5;
xpos2 -= xChange*2;
ypos2 -= yChange*5;
xpos3 += xChange*3;
ypos3 += yChange*2;
xpos4 -= xChange*3;
ypos4 += yChange*2;
xpos5 += xChange*-4.8;
ypos5 -= yChange*5;
xpos6 += xChange*4.8;
ypos6 += yChange*5;
}

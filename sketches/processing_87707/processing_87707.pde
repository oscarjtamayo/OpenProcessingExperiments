
float xx;
float yy;
float x;
float y;
int myX;
int myY;
  
void setup() {
size(500,500);
xx=width/2;
yy=height/2;
x=-30;
y=-37;
myX=0;
myY=0;
}

void draw() {
  background(146,184,189);//bg color
  noStroke();
  int s=second();
  pushMatrix();
  xx=xx-(0.5-noise(frameCount/400)); //random movement
  yy=yy-(0.5-noise(frameCount/300));
  translate(xx,yy);
  fill(218,218,218);//skin color
  int myTime=0; //set start time to 0
int nTime=second()-myTime; //measuring time between current second and 0, how many seconds have passed
  if(nTime>=1 && nTime%2) { //if the number of seconds that have passed are greater or equal to 1 and that number is even...
    triangle(myX+109,myY+17,myX+122,myY,myX+122,myY+34);
    quad(myX+52,myY-22,myX+52,myY+23,myX+112,myY+19,myX+112,myY+15); //then the tail moves down
    myTime=second(); //makes it a loop
  }
  else{
triangle(myX+109,myY-3,myX+122,myY-20,myX+122,myY+14); //otherwise, shapes are over here
quad(myX+52,myY-22,myX+52,myY+23,myX+112,myY-1,myX+112,myY-5);
  }
ellipse(myX,myY,150,75);//main body shape
ellipse(myX-65,myY,60,60);//head
fill(221,217,210);//horn color
triangle(myX-90,myY-5,myX-90,myY+3,myX-145,myY-25);//horn
fill(255,255,255);//eyeball color
ellipse(myX-80,myY-10,10,10);//eyeball
fill(0,0,0);//pupil color
ellipse(myX-77,myY-10,3,3);//pupil
fill(177,177,176);//spots colors
ellipse(myX,myY-30,20,5);//spot 1
ellipse(myX-20,myY-25,20,5);//spot 2
ellipse(myX+30,myY-27,20,5);//spot 3
ellipse(myX+20,myY-20,18,5);//spot 4
ellipse(myX+35,myY-15,16,5);//spot 5
ellipse(myX+52,myY-17,12,5);//spot 6
fill(218,218,218);//left flipper color
pushMatrix();
translate(-8,25);
rotate(-frameCount/6); //rotate the left flipper counterclockwise at a reduced speed
triangle(myX,myY,myX+28,myY-19,myX+28,myY+21);//left flipper
popMatrix();
stroke(1);//mouth line
line(myX-87,myY+20,myX-70,myY+20);//mouth
noStroke();
fill(221,228,251); 
ellipse(-65,x,7,7); //bubble 1
ellipse(-54,y,4,4); //bubble 2
x=x-1; //bubbles move up
y=y-1;
if(x-1<=-300 && y-1<=-300) { //if the bubbles reach a certain height...
    x=-30;
    y=-37;
    fill(221,228,251); //then draw two new ones
    ellipse(-65,x,7,7);
    ellipse(-54,y,4,4);
    x=x-1;
    y=y-1;
    }
popMatrix();
}

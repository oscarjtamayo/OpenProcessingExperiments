
int x = 300;            // x-coordinate
int y = 500;           // y-coordinate
int bodyHeight = 200;  // Body Height
int neckHeight = 100;  // Neck Height
int radius = 45;       // Head Radius
int ny = y - bodyHeight - neckHeight - radius;  // Neck Y
size(600, 600);
smooth();
strokeWeight(2);
background(255,255,255);
ellipseMode(RADIUS);
// Neck
fill(120);
noStroke();
rect(x-20,ny,40,y-bodyHeight);//rectangle neck

// base
noStroke();
fill(255,0,0);
ellipse(x-35,y,20,20);//wheel left
fill(102);
ellipse(x-35,y,15,15);
fill(255,0,0);
ellipse(x+35,y,20,20);
fill(102);
ellipse(x+35,y,15,15);
fill(102);
rect(x-60, y-33, 120, 40);
ellipse(x-60,y-13,20,20);
ellipse(x+60,y-13,20,20);
//body
fill(90, 180, 255);
rect(x-55, y-bodyHeight, 110, bodyHeight-33);
fill(102);
rect(x-55, y-bodyHeight+60, 110, 6);//random line

//arms
rect(x+55,y-bodyHeight+30,50,10);
rect(x+105,y-bodyHeight+30,10,40);
ellipse(x+110,y-bodyHeight+70,10,10);

rect(x-105,y-bodyHeight+30,50,10);
rect(x-105,y-bodyHeight+30,10,40);
ellipse(x-100,y-bodyHeight+70,10,10);


// Head
fill(90, 180, 255);
rect(x-40,ny,80,80);
fill(255);
fill(90, 180, 255);
ellipse(x, ny+10, 20, 20);
fill(0,255,0);
rect(x+10,ny+50,30,10);//mouth
stroke(120);
line(x+10,ny+55,x+38,ny+55);
line(x+20,ny+50,x+20,ny+59);
line(x+30,ny+50,x+30,ny+59);
noStroke();
fill(0,255,0);
rect(x+20,ny+20,20,10);//eye background
fill(255,0,0);//eye colour
ellipse(x+20,ny+25,5,5);//left eye
ellipse(x+32,ny+25,5,5);//right eye
fill(0); //pupil colour
ellipse(x+20,ny+25,1.5,1.5);//pupli left
ellipse(x+32,ny+25,1.5,1.5);//pupil right




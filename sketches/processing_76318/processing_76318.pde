
// ロボット

int x=60;
int y=390;
int bodyHeight=180;
int neckHeight=40;
int radius =45;
int ny =y-bodyHeight-neckHeight-radius;

size(520,520);
strokeWeight(2);
background(204);
ellipseMode(RADIUS);

//-------------------------------1体目
//首
stroke(102);
line(x+2,y-bodyHeight,x+2,ny);
line(x+12,y-bodyHeight,x+12,ny);
line(x+22,y-bodyHeight,x+22,ny);
//アンテナ
line(x+12,ny,x-18,ny-43);
line(x+12,ny,x+42,ny-99);
line(x+12,ny,x+78,ny+15);
//胴体
noStroke();
fill(102);
ellipse(x,y-33,33,33);
fill(0);
rect(x-45,y-bodyHeight,90,bodyHeight-33);
fill(102);
rect(x-45,y-bodyHeight+17,90,6);
//頭
fill(0);
ellipse(x+12,ny,radius,radius);
fill(255);
ellipse(x+24,ny-6,14,14);
fill(0);
ellipse(x+24,ny-6,3,3);
fill(153);
ellipse(x,ny-8,5,5);
ellipse(x+30,ny-26,4,4);
ellipse(x+41,ny+6,3,3);

//--------------------------------2体目
x=180;
y=460;
bodyHeight=260;
neckHeight=95;

//首
stroke(102);
line(x+2,y-bodyHeight,x+2,ny);
line(x+12,y-bodyHeight,x+12,ny);
line(x+22,y-bodyHeight,x+22,ny);
//アンテナ
line(x+12,ny,x-18,ny-43);
line(x+12,ny,x+42,ny-99);
line(x+12,ny,x+78,ny+15);
//胴体
noStroke();
fill(102);
ellipse(x,y-33,33,33);
fill(0);
rect(x-45,y-bodyHeight,90,bodyHeight-33);
fill(102);
rect(x-45,y-bodyHeight+17,90,6);
//頭
fill(0);
ellipse(x+12,ny,radius,radius);
fill(255);
ellipse(x+24,ny-6,14,14);
fill(0);
ellipse(x+24,ny-6,3,3);
fill(153);
ellipse(x,ny-8,5,5);
ellipse(x+30,ny-26,4,4);
ellipse(x+41,ny+6,3,3);

//--------------------------------3体目
x=300;
y=310;
bodyHeight=80;
neckHeight=10;

//首
stroke(102);
line(x+2,y-bodyHeight,x+2,ny);
line(x+12,y-bodyHeight,x+12,ny);
line(x+22,y-bodyHeight,x+22,ny);
//アンテナ
line(x+12,ny,x-18,ny-43);
line(x+12,ny,x+42,ny-99);
line(x+12,ny,x+78,ny+15);
//胴体
noStroke();
fill(102);
ellipse(x,y-33,33,33);
fill(0);
rect(x-45,y-bodyHeight,90,bodyHeight-33);
fill(102);
rect(x-45,y-bodyHeight+17,90,6);
//頭
fill(0);
ellipse(x+12,ny,radius,radius);
fill(255);
ellipse(x+24,ny-6,14,14);
fill(0);
ellipse(x+24,ny-6,3,3);
fill(153);
ellipse(x,ny-8,5,5);
ellipse(x+30,ny-26,4,4);
ellipse(x+41,ny+6,3,3);

//--------------------------------4体目
x=420;
y=420;
bodyHeight=110;
neckHeight=140;

//首
stroke(102);
line(x+2,y-bodyHeight,x+2,ny);
line(x+12,y-bodyHeight,x+12,ny);
line(x+22,y-bodyHeight,x+22,ny);
//アンテナ
line(x+12,ny,x-18,ny-43);
line(x+12,ny,x+42,ny-99);
line(x+12,ny,x+78,ny+15);
//胴体
noStroke();
fill(102);
ellipse(x,y-33,33,33);
fill(0);
rect(x-45,y-bodyHeight,90,bodyHeight-33);
fill(102);
rect(x-45,y-bodyHeight+17,90,6);
//頭
fill(0);
ellipse(x+12,ny,radius,radius);
fill(255);
ellipse(x+24,ny-6,14,14);
fill(0);
ellipse(x+24,ny-6,3,3);
fill(153);
ellipse(x,ny-8,5,5);
ellipse(x+30,ny-26,4,4);
ellipse(x+41,ny+6,3,3);

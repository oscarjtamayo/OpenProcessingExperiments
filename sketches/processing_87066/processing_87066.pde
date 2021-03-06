
/* puff
Ira Greenberg, October 22, 2005 */
// for puff head

float headX;
float headY;
float speedX = .7;
float speedY = .9;
// for puff body
int cells = 2000;
float[]px= new float[cells];
float[]py= new float[cells];
float[]radiiX = new float[cells];
float[]radiiY = new float[cells];
float[]angle = new float[cells];
float[]frequency = new float[cells];
float[]cellRadius = new float[cells];
void setup(){
size(920, 580);
// begin in the center
headX = width/2;
headY = height/2;
//fill body arrays
for (int i=0; i< cells; i++){
radiiX[i] = random(-7, 17); 
radiiY[i] = random(-4, 14);
frequency[i]= random(-9, 9);
cellRadius[i] = random(16, 20);
}
frameRate(1130);
}
void draw(){
background(0);
noStroke();
fill(255, 2, 2, 150);

//follow the leader
for (int i =0; i< cells; i++){
if (i==0){
px[i] = headX+sin(radians(angle[i]))*radiiX[i];
py[i] = headY+cos(radians(angle[i]))*radiiY[i];

}
else{
px[i] = px[i-1]+cos(radians(angle[i]))*radiiX[i];
py[i] = py[i-1]+sin(radians(angle[i]))*radiiY[i];
//check collision of body
if (px[i] >= width-cellRadius[i]/2 || px[i] <= cellRadius[i]/2){
radiiX[i]*=-1;
cellRadius[i] = random(1, 30);
frequency[i]= random(-13, 13);
}
if (py[i] >= height-cellRadius[i]/2 || py[i] <= cellRadius[i]/2){
radiiY[i]*=-1;
cellRadius[i] = random(1, 30);
frequency[i]= random(-9, 9);
}
}
// draw puff
ellipse(px[i],  py[i],  cellRadius[i],  cellRadius[i]);
// set speed of body
angle[i]+=frequency[i];
}
// set velocity of head
headX+=speedX;
headY+=speedY;
//check boundary collision of head
if (headX >= width-cellRadius[0]/2 || headX <=cellRadius[0]/2){
speedX*=-1;
}
if (headY >= height-cellRadius[0]/2 || headY <= cellRadius[0]/2){
speedY*=-1;
}
}

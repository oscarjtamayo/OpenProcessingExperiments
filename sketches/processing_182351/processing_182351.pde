
float angolo;
float x,y;
void setup()
{
size(800,600);  
background(255);
x=0;
y=0;
angolo=0;
}
void draw()
{
//point o line + rotazione del foglio
translate(width/2,height/2);
rotate(angolo);
strokeWeight(5);
stroke(random(255),random(255),random(255));
fill(255,13,0);
ellipse(x,y,x+5,y+7);
y = y += 0.1;
angolo += PI/48;

;
}


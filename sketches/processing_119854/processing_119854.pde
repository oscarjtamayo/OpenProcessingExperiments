
int i;
int j;
float k;
int direction;
float dia;
void setup()
{
  size(400,400);
}
void draw()
{
 
 background(0);
  if  (k>10) {
  direction = 0;
  }
  if (k<0) {
    direction=1;
  }
  if (direction==1){
    k=k+0.8;
  } else{
      k=k-0.1;
    }
    fill(255,100,255);
for(j=0;j<50;j++)
{
for(i=0;i<80;i++)
{
  dia=random(1,10);
  rect(k*i*20,j*20,dia,dia); 
}
}
}

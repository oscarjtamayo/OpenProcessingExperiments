
size(500,500);
background(255);
colorMode(RGB);
randomSeed(2);
for (int i=0;i<70;i++){
  float r=random(10);
  color a=int(r*40);
  color b=int(160-r*10);
  color c=int(50+r*10);
  strokeWeight(r*0.7);
  noStroke();
  fill(a,b,c,100);
  float offset=r*50.0;
  ellipse(i*7,r*48,50,50);
}



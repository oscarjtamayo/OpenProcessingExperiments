
size(400,400);
background(0);

int i          = 0,        
    nbCercles  = 70,
    decalage   = 3,
    r          = 20,
    g          = 0,
    b          = 100;    

while (i < nbCercles) {
  stroke((i+r)%255, g*i%255, (i+b)%255);
  noFill();
  ellipse(200+decalage*i, 200+decalage*i, 220-i*decalage, 220-i*decalage);
  i++;
}



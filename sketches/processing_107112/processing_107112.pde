
size(1200,500);

PImage img = loadImage("treb-back.jpg");
image(img,0,0);

line(800,450,825,425); //Left Leg
line(825,425,850,450); //Right Leg
line(825,375,825,425); //Body
line(800,400,850,400); //Arms
ellipseMode(CORNER);
fill(0,0);
ellipse(800,325,50,50); //Head

//House

line(500,300,575,200);
line (575,200,650,300);
rect(500,300,150,150);


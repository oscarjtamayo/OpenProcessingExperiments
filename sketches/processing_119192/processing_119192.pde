
void setup()
{
size(500, 500);
}

void draw()
{

// zeile1
background(255);
textSize(28);
fill(0, 102, 153);
text("mit der Maus von links nach rechts", 10, 30); 

fill(255);
stroke(0);
translate(4,90);

rect(10,10,20,20);
rect(40,10,20,20);
rect(70,10,20,20);
rect(100,10,20,20);
rect(130,10,20,20);
rect(160,10,20,20);
rect(190,10,20,20);
rect(220,10,20,20);
rect(250,10,20,20);
rect(280,10,20,20);
rect(310,10,20,20);
rect(340,10,20,20);
rect(370,10,20,20);
rect(400,10,20,20);
rect(430,10,20,20);
rect(460,10,20,20);

//zeile 2
rect(10,40,20,20);
rect(40,40,20,20);
rect(70,40,20,20);
rect(100,40,20,20);
rect(130,40,20,20);
rect(160,40,20,20);
rect(190,40,20,20);
rect(220,40,20,20);
rect(250,40,20,20);
rect(280,40,20,20);
rect(310,40,20,20);
rect(340,40,20,20);
rect(370,40,20,20);
rect(400,40,20,20);
rect(430,40,20,20);
rect(460,40,20,20);

// Zeile 3
rect(10,70,20,20);
rect(40,70,20,20);
rect(70,70,20,20);
rect(100,70,20,20);
rect(130,70,20,20);
rect(160,70,20,20);
rect(190,70,20,20);
rect(220,70,20,20);
rect(250,70,20,20);
rect(280,70,20,20);
rect(310,70,20,20);
rect(340,70,20,20);
rect(370,70,20,20);
rect(400,70,20,20);
rect(430,70,20,20);
rect(460,70,20,20);

//Zeile 4

rect(10,100,20,20);
rect(40,100,20,20);
rect(70,100,20,20);
rect(100,100,20,20);
rect(130,100,20,20);
rect(160,100,20,20);
rect(190,100,20,20);
rect(220,100,20,20);
rect(250,100,20,20);
rect(280,100,20,20);
rect(310,100,20,20);
rect(340,100,20,20);
rect(370,100,20,20);
rect(400,100,20,20);
rect(430,100,20,20);
rect(460,100,20,20);

// zeile 5

rect(10,130,20,20);
rect(40,130,20,20);
rect(70,130,20,20);
rect(100,130,20,20);
rect(130,130,20,20);
rect(160,130,20,20);
rect(190,130,20,20);
rect(220,130,20,20);
rect(250,130,20,20);
rect(280,130,20,20);
rect(310,130,20,20);
rect(340,130,20,20);
rect(370,130,20,20);
rect(400,130,20,20);
rect(430,130,20,20);
rect(460,130,20,20);

// zeile 6

rect(10,160,20,20);
rect(40,160,20,20);
rect(70,160,20,20);
rect(100,160,20,20);
rect(130,160,20,20);
rect(160,160,20,20);
rect(190,160,20,20);
rect(220,160,20,20);
rect(250,160,20,20);
rect(280,160,20,20);
rect(310,160,20,20);
rect(340,160,20,20);
rect(370,160,20,20);
rect(400,160,20,20);
rect(430,160,20,20);
rect(460,160,20,20);

//Zeile 7

rect(10,190,20,20);
rect(40,190,20,20);
rect(70,190,20,20);
rect(100,190,20,20);
rect(130,190,20,20);
rect(160,190,20,20);
rect(190,190,20,20);
rect(220,190,20,20);
rect(250,190,20,20);
rect(280,190,20,20);
rect(310,190,20,20);
rect(340,190,20,20);
rect(370,190,20,20);
rect(400,190,20,20);
rect(430,190,20,20);
rect(460,190,20,20);

// zeile 8

rect(10,220,20,20);
rect(40,220,20,20);
rect(70,220,20,20);
rect(100,220,20,20);
rect(130,220,20,20);
rect(160,220,20,20);
rect(190,220,20,20);
rect(220,220,20,20);
rect(250,220,20,20);
rect(280,220,20,20);
rect(310,220,20,20);
rect(340,220,20,20);
rect(370,220,20,20);
rect(400,220,20,20);
rect(430,220,20,20);
rect(460,220,20,20);

// zeile 9

rect(10,250,20,20);
rect(40,250,20,20);
rect(70,250,20,20);
rect(100,250,20,20);
rect(130,250,20,20);
rect(160,250,20,20);
rect(190,250,20,20);
rect(220,250,20,20);
rect(250,250,20,20);
rect(280,250,20,20);
rect(310,250,20,20);
rect(340,250,20,20);
rect(370,250,20,20);
rect(400,250,20,20);
rect(430,250,20,20);
rect(460,250,20,20);

// zeile 10

rect(10,280,20,20);
rect(40,280,20,20);
rect(70,280,20,20);
rect(100,280,20,20);
rect(130,280,20,20);
rect(160,280,20,20);
rect(190,280,20,20);
rect(220,280,20,20);
rect(250,280,20,20);
rect(280,280,20,20);
rect(310,280,20,20);
rect(340,280,20,20);
rect(370,280,20,20);
rect(400,280,20,20);
rect(430,280,20,20);
rect(460,280,20,20);

fill(0);
stroke(0);
//Zeile 2
pushMatrix();
translate(mouseX/16,0);
rect(160,40,20,20);
rect(220,40,20,20);
popMatrix();

//Zeile 3
rect(190,70,20,20);
rect(250,70,20,20);

//Zeile 4
pushMatrix();
translate(-mouseX/16,0);
rect(220,100,20,20);
rect(280,100,20,20);
popMatrix();

//Zeile 6
pushMatrix();
translate(mouseX/16,0);
rect(100,160,20,20);
popMatrix();

//Zeile 7
rect(160,190,20,20);

//Zeile 8
rect(190,220,20,20);
rect(220,220,20,20);
pushMatrix();
translate(0,-mouseX/16.5);
rect(250,250,20,20);
popMatrix();

//Zeile9
rect(280,190,20,20);

//Zeile 10
rect(310,160,20,20);
}

void setup(){
size(600,600);
background(255);

//back
noStroke();
fill(200,200,255);
triangle(0,0,0,150,140,150);
triangle(600,0,600,150,460,150);

fill(180,180,255);
quad(0,0,140,150,300,150,300,0);
fill(170,170,225);
quad(600,0,460,150,300,150,300,0);

}

void draw(){
//desk
println(mouseX + " : " + mouseY);


noStroke();
fill(200);
rect(0,150,600,450);

fill(255,200,0);
rect(0,150,600,350);
fill(255,180,0);
rect(0,150,600,300);

rect(0,500,30,200);
rect(570,500,30,200);

fill(0,255,0);
rect(100,150,400,450);

fill(140,240,30);
rect(120,150,360,400);
triangle(120,550,300,580,480,550);

fill(255,200,100);
ellipse(300,360,250,150);

fill(255,255,0);
ellipse(300,300,350,250);
ellipse(300,200,350,250);
rect(125,200,350,100);

fill(240,180,0);
ellipse(300,200,350,250);

fill(255,255,100);
ellipse(300,210,320,250);
ellipse(300,210,320,250);


fill(255,255,235);
ellipse(300,200,300,130);

fill(255,255,0);
ellipse(300,160,150,80);

fill(255,255,235);
ellipse(275,145,70,40);

fill(255,180,0);
rect(270,250,20,80);
rect(310,250,20,80);

fill(255,160,0);
rect(290,250,20,80);
rect(250,250,20,80);
rect(330,250,20,80);

fill(230,140,0);
ellipse(105,200,30,30);
rect(90,200,30,60);

fill(255,255,0);
rect(120,240,10,20);
rect(120,200,6,20);

rect(470,240,10,20);
rect(475,200,6,20);

fill(230,100,0);
ellipse(105,260,30,30);

fill(230,140,0);
ellipse(495,200,30,30);
rect(480,200,30,60);

fill(230,100,0);
ellipse(495,260,30,30);


//spoon,chopstick

fill(140);
ellipse(50,200,50,80);
rect(45,200,10,220);

fill(220);
ellipse(40,180,10,20);

fill(140);
rect(555,200,10,220);
rect(535,200,10,220);

fill(225,75,0);
ellipse(120,600,15,15);
ellipse(170,600,15,15);
ellipse(220,600,15,15);
ellipse(270,600,15,15);
ellipse(320,600,15,15);
ellipse(370,600,15,15);
ellipse(420,600,15,15);
ellipse(470,600,15,15);


}

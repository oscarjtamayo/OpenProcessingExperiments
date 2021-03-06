
//use a poem or something in depth for the writing
PFont myFont;
PFont tryFont;

void setup(){
    size(500,500);
    background(231,240,165);
    fill(0);
    myFont = createFont("Helvetica",11,true);
    
    textFont(myFont);
    text("San Tropez",320,240);
    text("As I reach for a peach",300,250);
    text("Slide a rind down behind",300,260);
    text("The sofa in San Tropez.",300,270);
    text("Breakin' a stick",300,280);
    text("with a brick on the sand.",300,290);
    text("Ridin' a wave",300,300);
    text("In the wake of an old sedan.",300,310);
    
    
line(180,30,230,30);
line(205,5,205,55);
line(180,5,230,55);
line(230,5,180,55);

line(310,160,360,160);
line(335,135,335,185);
line(310,135,360,185);
line(360,135,310,185);

//barbell @ top
fill(0);
line(70,20,10,65);
ellipse(80,10,40,30);
ellipse(10,55,50,40);


ellipse(10,175,100,140);

//top red circle
fill(237,0,28);
ellipse(10,110,40,30);
fill(0);
arc(10,110,40,30, TWO_PI-PI, TWO_PI);


//middle circle
fill(237,0,28);
ellipse(60,175,70,60);
fill(0);
arc(60,175,70,60, TWO_PI-PI/2, TWO_PI);
arc(60,175,70,60,0, PI/2);

//bottom circle
fill(0);
ellipse(30,280,100,90);

//triangular thing
fill(96,45,170);
triangle(200, 475, 208, 220, 286, 475);
triangle(218, 475, 355, 400, 286, 475);
triangle(150, 550, 90, 400, 286, 475);
triangle(218, 475, 355, 400, 286, 675);
}

void draw(){
  
}



                
                


void setup() {
  size(600, 600);

}

void draw() {
  background(0,0,255,150);
noStroke();

//  fill(13, 180, 255);
//  arc(300, 100, 100, 100, radians(180), radians( minute() * 360/60 +180 ));
//
//  fill(random (1, 255), 0, 130);
//
//  arc(100, 100, 100, 100, radians(180), radians( second() * 360/60 +180 ));
//  fill(25, 219, 13);
//  arc(500, 100, 100, 100, radians(180), radians( hour() *360/24 +180 ));


fill(255, 0, 130,150);
rect(0,0,width,second()*height/60);
rect(0,0,second()*width/60,height);
 fill(255,255,0,150);
rect(0,00,minute()*10,minute()*10);
 fill(40,50,60,165);
rect(530,0,70,hour()*25);
//Minutes and Seconds

fill(250,0,255,150);
ellipse(second()*10,150,20,20);
ellipse(second()*10,450,20,20);
fill(100,0,200,150);
ellipse(second()*10,300,40,40);

fill(0);
rect(0,0,30,2);
rect(0,10,30,2);
rect(0,20,30,2);
rect(0,30,30,2);
rect(0,40,30,2);
rect(0,50,30,2);
rect(0,60,30,2);
rect(0,70,30,2);
rect(0,80,30,2);
rect(0,90,30,2);
rect(0,100,50,2);

rect(0,110,30,2);
rect(0,120,30,2);
rect(0,130,30,2);
rect(0,140,30,2);
rect(0,150,30,2);
rect(0,160,30,2);
rect(0,170,30,2);
rect(0,180,30,2);
rect(0,190,30,2);
rect(0,200,50,2);

rect(0,210,30,2);
rect(0,220,30,2);
rect(0,230,30,2);
rect(0,240,30,2);
rect(0,250,30,2);
rect(0,260,30,2);
rect(0,270,30,2);
rect(0,280,30,2);
rect(0,290,30,2);
rect(0,300,50,2);


rect(0,310,30,2);
rect(0,320,30,2);
rect(0,330,30,2);
rect(0,340,30,2);
rect(0,350,30,2);
rect(0,360,30,2);
rect(0,370,30,2);
rect(0,380,30,2);
rect(0,390,30,2);
rect(0,400,50,2);


rect(0,410,30,2);
rect(0,420,30,2);
rect(0,430,30,2);
rect(0,440,30,2);
rect(0,450,30,2);
rect(0,460,30,2);
rect(0,470,30,2);
rect(0,480,30,2);
rect(0,490,30,2);
rect(0,500,50,2);


rect(0,510,30,2);
rect(0,520,30,2);
rect(0,530,30,2);
rect(0,540,30,2);
rect(0,550,30,2);
rect(0,560,30,2);
rect(0,570,30,2);
rect(0,580,30,2);
rect(0,590,30,2);
rect(0,600,50,2);


//hours
//rect(530,0,70,2);
rect(530,25,70,2);
rect(530,50,70,2);
rect(530,75,70,2);
rect(530,100,70,2);
rect(530,125,70,2);

rect(510,150,90,2);
rect(530,175,70,2);
rect(530,200,70,2);
rect(530,225,70,2);
rect(530,250,70,2);
rect(530,275,70,2);

rect(450,300,150,2);
rect(530,325,70,2);
rect(530,350,70,2);
rect(530,375,70,2);
rect(530,400,70,2);
rect(530,425,70,2);

rect(510,450,90,2);
rect(530,475,70,2);
rect(530,500,70,2);
rect(530,525,70,2);
rect(530,550,70,2);
rect(530,575,70,2);

  println(second());
    println(hour());
}


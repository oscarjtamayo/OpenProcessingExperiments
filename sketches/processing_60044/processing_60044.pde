
int value = 0;
float d,x,y,angle;


void setup(){
size(1000,800);
smooth();
background(0);

}



void draw() {
  

 frameRate (4);
  fill (255,255,77);
  ellipse (mouseX,mouseY,200,200);
 
  //building at back 
    noStroke();
  fill(#494B4D);//building1
  rect(0,240,184,800);
//building2
  rect(180,320,163,800);
  //building3
  rect(300,280,150,800);
 //building4
  rect(450,360,140,800);
 //building5
  rect(590,470,182,800);
  rect(700,300,170,800);
  rect(850,400,200,800);
  

  noStroke();
  fill(#B5BBC1);//building1
  rect(60,340,184,800);
 //building2
  rect(270,490,163,800);
  //building3
  rect(450,400,150,800);
  //building4
  rect(630,600,132,800);
 //building5
  rect(800,500,182,800);


   if (key=='2') {
     fill (0,d);
    rect (0,0, 1000,800);
 
    d=100;
 
  }
  else {
     
    x=-10;
    y=-10;
 fill (#CBE6FF, d);
  rect (0, 0, 1000,800);
      d=70;
 
}
 


  fill(value);

  
  rect(80,400,20,20);//
  rect(120,400,20,20);
  rect(160,400,20,20);
  rect(200,400,20,20);
  rect(80,440,20,20);//
  rect(120,440,20,20);
  rect(160,440,20,20);
  rect(200,440,20,20);
  rect(80,480,20,20);//
  rect(120,480,20,20);
  rect(160,480,20,20);
  rect(200,480,20,20);
  rect(80,520,20,20);//7thfloor
  rect(120,520,20,20);
  rect(160,520,20,20);
  rect(200,520,20,20);
  rect(80,560,20,20);//
  rect(120,560,20,20);
  rect(160,560,20,20);
  rect(200,560,20,20);
  rect(80,600,20,20);//
  rect(120,600,20,20);
  rect(160,600,20,20);
  rect(200,600,20,20);
  rect(80,640,20,20);//
  rect(120,640,20,20);
  rect(160,640,20,20);
  rect(200,640,20,20);
  rect(80,680,20,20);//
  rect(120,680,20,20);
  rect(160,680,20,20);
  rect(200,680,20,20);
  rect(80,720,20,20);//
  rect(120,720,20,20);
  rect(160,720,20,20);
  rect(200,720,20,20);
  rect(80,760,20,20);//last floor
  rect(120,760,20,20);
  rect(160,760,20,20);
  rect(200,760,20,20);
  
  //2nd buiding
 
  rect(280,560,20,20);//
  rect(320,560,20,20);
  rect(360,560,20,20);
  rect(400,560,20,20);
  rect(280,600,20,20);//
  rect(320,600,20,20);
  rect(360,600,20,20);
  rect(400,600,20,20);
  rect(280,640,20,20);//
  rect(320,640,20,20);
  rect(360,640,20,20);
  rect(400,640,20,20);
  rect(280,680,20,20);//
  rect(320,680,20,20);
  rect(360,680,20,20);
  rect(400,680,20,20);
  rect(280,720,20,20);//
  rect(320,720,20,20);
  rect(360,720,20,20);
  rect(400,720,20,20);
  rect(280,760,20,20);//last floor
  rect(320,760,20,20);
  rect(360,760,20,20);
  rect(400,760,20,20);
  
  //3rd builgind
   rect(470,480,20,20);//
  rect(510,480,20,20);
  rect(550,480,20,20);
  rect(470,520,20,20);//7thfloor
  rect(510,520,20,20);
  rect(550,520,20,20);
  rect(470,560,20,20);//
  rect(510,560,20,20);
  rect(470,600,20,20);//
  rect(510,600,20,20);
  rect(470,640,20,20);//
  rect(120,640,20,20);
  rect(160,640,20,20);
  rect(200,640,20,20);
  rect(80,680,20,20);//
  rect(120,680,20,20);
  rect(160,680,20,20);
  rect(200,680,20,20);
  rect(80,720,20,20);//
  rect(120,720,20,20);
  rect(160,720,20,20);
  rect(200,720,20,20);
  rect(80,760,20,20);//last floor
  rect(120,760,20,20);
  rect(160,760,20,20);
  rect(200,760,20,20);
  //4th building
    rect(690,640,20,20);//
  rect(720,640,20,20);
  rect(660,680,20,20);
  rect(690,680,20,20);
  rect(660,720,20,20);//
  //5th building
  rect(940,600,20,20);//
  rect(940,640,20,20);
  rect(900,640,20,20);
  rect(940,680,20,20);//
  rect(900,680,20,20);
  rect(860,680,20,20);
  rect(940,720,20,20);//
  rect(900,720,20,20);
  rect(860,720,20,20);
  rect(820,720,20,20);
  rect(940,760,20,20);//last floor
  rect(900,760,20,20);
  rect(860,760,20,20);
  rect(820,760,20,20);
  
  
  }  

void mouseReleased() {

  if(value == #FFE200) {

    value = 0;

  } else {

    value = #FFE200;
    
  }



}




int monsterX;
int monsterY;
int richting;
int teller;
boolean test;

void setup() {
  size(200, 200);
  monsterY = 125;
  richting=5;
  teller= 0;
  
}


void draw() {
  if (test==true) {
    fill (0);
  }else{
    fill(0,0,255);
  }
    
  
  background(255, 255, 255);
  stroke(0);
  
  ellipseMode(CENTER);
  ellipse(monsterX, monsterY, 60, 60);
  ellipse(monsterX, monsterY-40, 70, 70);
  line(monsterX-10, monsterY-100, monsterX-15, monsterY-70);
  line(monsterX+40, monsterY-100, monsterX+20, monsterY-70);
  fill(255);
  ellipse(monsterX-14, monsterY-100, 18, 18);
  ellipse(monsterX+36, monsterY-100, 18, 18);
  fill(0);
  ellipse(monsterX-12, monsterY-100, 12, 12);
  ellipse(monsterX+33, monsterY-100, 10, 10);
  fill(0);
  ellipse(monsterX, monsterY-30, 50, 30);
  fill(255);
  ellipse(monsterX-10, monsterY-40, 12, 10);
  ellipse(monsterX, monsterY-40, 12, 10);
  ellipse(monsterX+10, monsterY-40, 12, 10);
  ellipse(monsterX-10, monsterY-20, 12, 10);
  ellipse(monsterX, monsterY-20, 12, 10);
  ellipse(monsterX+8, monsterY-20, 12, 10);
  
  if( test==true){
    fill(0);
  }else{
    fill(0,0,255);
  }
  
  ellipse(monsterX-10, monsterY+50, 40, 30);
  ellipse(monsterX+20, monsterY+50, 40, 30);
  
 monsterX= monsterX +richting;
 //als monster de rand raakt dan omkeren
  if (monsterX > width ||monsterX<0){
    richting=-richting;
 
 
   
    if (teller==10) {
      teller=0;
      test=!test;
    }
     
 
    teller = teller+1;
        println(teller);
 
  }
}

 

  
  


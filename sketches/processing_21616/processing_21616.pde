
Latete latete1;
Torso torso1;
Bassin bassin1;
Colone colone1;
 
 
 
 
 
   
 
 
void setup () {
  size(300,400);
  latete1 = new Latete();
  torso1 = new Torso();
  bassin1 = new Bassin();
  colone1 = new Colone();
}
 

 
void draw () {
  background(255);
 
   
  colone1.display();
  latete1.display();
  torso1.display();
  bassin1.display();
  latete1.shake();
    
 

//fontction des boutons qui clignote 
  fill(175);
     ellipse(155, 200, 10, 20);
     if (keyPressed) {
    if(key == 'r' || key == 'R') {
      fill(255,0,0);
      ellipse(155, 200, 10, 20);
    }
     }
      fill(175);
     ellipse(170, 200, 10, 20);
     if (keyPressed) {
    if(key == 'g' || key == 'G') {
      fill(0,255,0);
      ellipse(170, 200, 10, 20);
    }
  }
   
  fill(175);
            ellipse(185, 200, 10, 20);
     if (keyPressed) {
    if(key == 'b' || key == 'B') {
      fill(0,0,255 );
      ellipse(185, 200, 10, 20);
    }
  }
  
      float x= mouseX;
  float y= mouseY;
  
  noStroke();
  fill(90, 85, 81);
   rect(x, y, 30, 10);
   arc(x+29, y+10, 30,20, PI+HALF_PI, TWO_PI);
   fill(103,47, 3);
   rect(x+13, y+10, 10, 60);
  stroke(2);
  
  

  

}
  
  
  
  
 


void mousePressed() {
        println("Clique: x "+mouseX+" y "+mouseY);
        
}





 
class Colone {
  void display(){
  //colone
  fill(52,52,52);
  int x = 130;
  int y = 125;
  rect(x, y, 40, 165);//tron
  strokeWeight(1);//ligne_tron
  }
}
 
 
 

 
 
class Latete {
  //tete0
    float x = 100;
    float y = 100;
    float w = 80;
   
   
   //fonction qui fait bouger la tete
   void shake() {
     
     if (mousePressed){
       
       
    
     x= x+random(-2, 2);
      constrain( x, 98, 102);

    
     }else{
     
       x = 100;
   }
   
}
   
   
   
   
   
   
  void display() {
    
     
    strokeWeight(2);
    fill(175,175,175);

     
    rect(x+10, y-30 ,w, 55);//tete
    arc(x+50, y-28 , w, 30, PI, TWO_PI);// cap
    arc(x+50, y+25, w, 30, 0, PI);//machoir
    line(x+10, y+25 , x+90, y+25);//bouche
    fill(255,0,0);
 
 
    //Yeux_neutre
     
     
    arc (x+30, y+10, 15, 10, 0, PI);//oeil_gauche
    arc (x+70,y+10, 15, 10, 0, PI);//oeil_droit
    line( x+24, y+10, x+36, y+10); //sourcil_gauche
    line(x+64, y+10, x+76, y+10);//sourcil_droit
    line(x+20, y+5, x+80, y+5);//front_neutre
 
 

 
    fill(175,175,175);
    arc(x+9, y+8, 15, 35, HALF_PI, PI+HALF_PI);//oreille_gauche 
    arc(x+91, y+8, 15, 35, PI+HALF_PI, TWO_PI+HALF_PI);//oreille_droite
    noFill();
    smooth();
    arc(x+30, y+14, 15,10,QUARTER_PI, HALF_PI+QUARTER_PI);//cerne_gauche
    arc(x+70, y+14, 15,10,QUARTER_PI, HALF_PI+QUARTER_PI);//cerne_droit
    arc(x+70, y-43, 40, 40, PI, PI+HALF_PI);//antenne_tige
    fill(245,255,0);
    ellipse(x+72, y-64, 5,5);//antenne_boule
    }
  }
 
 
 
class Torso {
  void display() {
    fill(175,175,175);
    noStroke();
    int x= 100;
    int y= 200;
    rect(x+10, y-30, 80, 45);//torso1
    stroke(2);
    arc(x+50, y+14, 80, 45, 0, PI);//torso2
    arc(x+10,y-8,25,45, HALF_PI, PI+HALF_PI);//epaule_ga
    arc(x+89,y-8,25, 45, PI+HALF_PI, TWO_PI+HALF_PI);//epaule_dr
    line(x+10,y-31, x+90, y-31);
    noFill();
 
//bras_gauche
    strokeWeight(1);
    fill(175,175,175);
    stroke(1);
    rect(x-7, y-14,5, 90);
    rect(x-14,y+77, 20,15);
    rect(x-14, y+92, 5,7);
    rect(x-14,y+99, 5,7);
    rect(x-7, y+92,5,7);
    rect(x-7 ,y+99,5,7);
    rect(x+1,y+92, 5,7);
    rect(x+1, y+99,5,7);
    rect(x-19,y+85, 5,5);
    rect(x-19,y+90, 5,7);
 
 
    //bras_droit
    stroke(1);
    rect(x+101, y-14,5, 90);
    rect(x+94, y+77, 20,15);
    rect(x+94, y+92, 5,7);
    rect(x+94,y+99, 5,7);
    rect(x+101,y+92,5,7);
    rect(x+101,y+99,5,7);
    rect(x+109,y+92, 5,7);
    rect(x+109, y+99,5,7);
    rect(x+114,y+85, 5,5);
    rect(x+114,y+90, 5,7);
    ellipse(x+104, y-14,7,7);
    ellipse(x-4, y-14,7,7);
 
    //commands
    strokeWeight(1);
    fill(190,190,190);
    rect(x+15,y-15, 24, 17);
    fill(120,120,120);
    rect(x+17,y-13, 5, 5);
    rect(x+17, y-6, 5, 5);
    rect(x+24, y-13,5,5);
    rect(x+24,y-6,5,5);
    rect(x+31,y-13,5,5);
    rect(x+31,y-6,5,5);
    
  }
}
 
class Bassin {
 void display(){
  strokeWeight(2);
   //les_jambes
  fill(175,175,175);
  rect(130, 290, 5, 85);//jambe_gauche
  rect(165, 290, 5, 85);//jambe_droite
  rect(100, 365, 35, 15);//pied_gauche
  rect(165, 365, 35, 15);//pied_droite
    //bassin
  fill(175,175,175);
  arc(150, 275, 80, 45, 0, PI);//bassin
  line(110, 275, 190, 275);//bassin_line
  
 }
}







String[] kafli;

void setup(){
  
kafli = loadStrings("njarhardur.txt");
   
font1 = createFont("Century", 14);
font2 = loadFont("CourierNew36.vlw");


 size(1024, 768);
 frameRate(25);
    k1.reset(timi, index);
    k2.reset(timi2, index+1);
    k3.reset(timi3, index+2);
    k4.reset(timi4, index+3);
    k5.reset(timi5, index+4);
    k6.reset(timi6, index+5);
    
    ka1.reset(timi, index);
    ka2.reset(timi2, index+1);
    ka3.reset(timi3, index+2);
    ka4.reset(timi4, index+3);
    ka5.reset(timi5, index+4);
    ka6.reset(timi6, index+5);
    
    kb1.reset(timi, index);
    kb2.reset(timi2, index+1);
    kb3.reset(timi3, index+2);
    kb4.reset(timi4, index+3);
    kb5.reset(timi5, index+4);
    kb6.reset(timi6, index+5);
    
    kc1.reset(timi, index);
    kc2.reset(timi2, index+1);
    kc3.reset(timi3, index+2);
    kc4.reset(timi4, index+3);
    kc5.reset(timi5, index+4);
    kc6.reset(timi6, index+5);
    
    kd1.reset(timi, index);
    kd2.reset(timi2, index+1);
    kd3.reset(timi3, index+2);
    kd4.reset(timi4, index+3);
    kd5.reset(timi5, index+4);
    kd6.reset(timi6, index+5);
 smooth();
}

void draw(){
 background(0);


 String tala0 = kafli[index]; 
 String tala1 = kafli[index+1];
 String tala2 = kafli[index+2];
 String tala3 = kafli[index+3];
 String tala4 = kafli[index+4];
 String tala5 = kafli[index+5];
 String tala6 = kafli[index+6];

 

 String[] gildi0 = split(tala0, ","); 
 String[] gildi1 = split(tala1, ",");
 String[] gildi2 = split(tala2, ",");
 String[] gildi3 = split(tala3, ",");
 String[] gildi4 = split(tala4, ",");
 String[] gildi5 = split(tala5, ",");
 String[] gildi6 = split(tala6, ",");

 

int ill0 = Integer.parseInt(gildi0[0]);
int ill1 = Integer.parseInt(gildi1[0]);
int ill2 = Integer.parseInt(gildi2[0]);
int ill3 = Integer.parseInt(gildi3[0]);
int ill4 = Integer.parseInt(gildi4[0]);
int ill5 = Integer.parseInt(gildi5[0]);
int ill6 = Integer.parseInt(gildi6[0]);

 fill(255);
textFont(font1);



text("Harp", 50, 70, 140);
text("Harp", 50, 213, 140);
text("Glockenspiel", 50, 356, 140);
text("Percussion", 50, 501, 140);




f1.draw(1, 0, 1, 5);
f2.draw(2, 180, 1, 5);
f3.draw(1, 360, 1, 5);
f4.draw(3, 540, 1, 5);







 strokeWeight (5);
 stroke(40,116,217);
 line(width/4, 0, width/4, height);

 if(active){                                  //CHECK IF THE PROGRAM IS ON
  currenttime = millis() - starttime;        //CHECK HOW fineCH TIMEHASELAPSED SINCE TRIGGER
  //if(index  > ((kafli.length)+10)){
  //  active = false;
  //  index = 0;
  //}
 // else 
  if(  (ill0*speed) <= (currenttime - leadin)){   //CHECK IFTHE NEXT EVENT IN THE QUE SHOULD BE TRIGGERED, LEADIN SPECIFIESDELAYAT BEGINNING
  //  if(index  >= ((kafli.length) +10) ){          //AND IF WE ARE OUTOFEVENTS, STOP THE QUE
  //  track=millis();
  //  active = false;
  //  println("done");
  //  }
    

    timi = (ill1 - ill0)*speed;
    timi2 = (ill2 - ill1)*speed;
    timi3 = (ill3 - ill2)*speed;
    timi4 = (ill4 - ill3)*speed;
    timi5 = (ill5 - ill4)*speed;
    timi6 = (ill6 - ill5)*speed;

    index++;                                  //MOVE TO NEXT EVENT IN THE QUE



    gerdur1 = Integer.parseInt(gildi0[1]);
    notur1  = Integer.parseInt(gildi0[2]);  
    almennur1 = Integer.parseInt(gildi0[3]);
    langur1 = Integer.parseInt(gildi0[4]);

    gerdur2 = Integer.parseInt(gildi1[1]);
    notur2  = Integer.parseInt(gildi1[2]);  
    almennur2 = Integer.parseInt(gildi1[3]);
    langur2 = Integer.parseInt(gildi1[4]);

    gerdur3 = Integer.parseInt(gildi2[1]);
    notur3  = Integer.parseInt(gildi2[2]);  
    almennur3 = Integer.parseInt(gildi2[3]);
    langur3 = Integer.parseInt(gildi2[4]);

    gerdur4 = Integer.parseInt(gildi3[1]);
    notur4  = Integer.parseInt(gildi3[2]);  
    almennur4 = Integer.parseInt(gildi3[3]);
    langur4 = Integer.parseInt(gildi3[4]);

    gerdur5 = Integer.parseInt(gildi4[1]);
    notur5  = Integer.parseInt(gildi4[2]);  
    almennur5 = Integer.parseInt(gildi4[3]);
    langur5 = Integer.parseInt(gildi4[4]);

    gerdur6 = Integer.parseInt(gildi5[1]);
    notur6  = Integer.parseInt(gildi5[2]);  
    almennur6 = Integer.parseInt(gildi5[3]);
    langur6 = Integer.parseInt(gildi5[4]);
    
    

    
    k1.reset(timi, index);
    k2.reset(timi2, index+1);
    k3.reset(timi3, index+2);
    k4.reset(timi4, index+3);
    k5.reset(timi5, index+4);
    k6.reset(timi6, index+5);
    
    ka1.reset(timi, index);
    ka2.reset(timi2, index+1);
    ka3.reset(timi3, index+2);
    ka4.reset(timi4, index+3);
    ka5.reset(timi5, index+4);
    ka6.reset(timi6, index+5);
    
    kb1.reset(timi, index);
    kb2.reset(timi2, index+1);
    kb3.reset(timi3, index+2);
    kb4.reset(timi4, index+3);
    kb5.reset(timi5, index+4);
    kb6.reset(timi6, index+5);
    
    kc1.reset(timi, index);
    kc2.reset(timi2, index+1);
    kc3.reset(timi3, index+2);
    kc4.reset(timi4, index+3);
    kc5.reset(timi5, index+4);
    kc6.reset(timi6, index+5);
    
    kd1.reset(timi, index);
    kd2.reset(timi2, index+1);
    kd3.reset(timi3, index+2);
    kd4.reset(timi4, index+3);
    kd5.reset(timi5, index+4);
    kd6.reset(timi6, index+5);
    
     

 
  }

 if(currenttime > leadin){
 int x = width/4;
 
 if (gerdur1 == 99){
   active = false;
   println("done");
   index = 0;
 }
 
 

 


 



 noStroke();
 smooth();



  
   pushMatrix(); 
   translate(0, -05);
   ka1.draw(2, 2, 6, 4, 5, 1, 3, 10, 11, gerdur1, notur1, almennur1, langur1);
   translate(ka1.l, 0);
   ka2.draw(180, 2, 6, 4, 5, 1, 3, 10, 11, gerdur2,  notur2, almennur2, langur2);
   translate(ka2.l, 0);
   ka3.draw(150, 2, 6, 4, 5, 1, 3, 10, 11, gerdur3,  notur3, almennur3, langur3);
   translate(ka3.l, 0);
   ka4.draw(120, 2, 6, 4, 5, 1, 3, 10, 11, gerdur4,  notur4, almennur4, langur4);
   translate(ka4.l, 0);
   ka5.draw(90, 2, 6, 4, 5, 1, 3, 10, 11, gerdur5,  notur5, almennur5, langur5);
   translate(ka5.l, 0);
   ka6.draw(50, 2, 6, 4, 5, 1, 3, 10, 11, gerdur6,  notur6, almennur6, langur6);
   popMatrix();



   pushMatrix(); 
   translate(0, 283);
   kb1.draw(2, 60, 17, 62, 63, 64, 65, 67, 68, gerdur1, notur1, almennur1, langur1);
   translate(kb1.l, 0);
   kb2.draw(180, 60, 17, 62, 63, 64, 65, 67, 68, gerdur2,  notur2, almennur2, langur2);
   translate(kb2.l, 0);
   kb3.draw(150, 60, 17, 62, 63, 64, 65, 67, 68, gerdur3,   notur3, almennur3, langur3);
   translate(kb3.l, 0);
   kb4.draw(120, 60, 17, 62, 63, 64, 65, 67, 68, gerdur4,   notur4, almennur4, langur4);
   translate(kb4.l, 0);
   kb5.draw(90, 60, 17, 62, 63, 64, 65, 67, 68, gerdur5,   notur5, almennur5, langur5);
   translate(kb5.l, 0);
   kb6.draw(50, 60, 17, 62, 63, 64, 65, 67, 68, gerdur6,   notur6, almennur6, langur6);
   popMatrix();



   pushMatrix(); 
   translate(0, 427);
   kc1.draw(2, 14, 61, 13, 15, 16, 12, 19, 20, gerdur1, notur1, almennur1, langur1);
   translate(kb1.l, 0);
   kc2.draw(180, 14, 61, 13, 15, 16, 12, 19, 20, gerdur2,  notur2, almennur2, langur2);
   translate(kb2.l, 0);
   kc3.draw(150, 714, 61, 13, 15, 16, 12, 19, 20, gerdur3,  notur3, almennur3, langur3);
   translate(kb3.l, 0);
   kc4.draw(120, 14, 61, 13, 15, 16, 12, 19, 20, gerdur4,   notur4, almennur4, langur4);
   translate(kb4.l, 0);
   kc5.draw(90, 14, 61, 13, 15, 16, 12, 19, 20, gerdur5, notur5, almennur5, langur5);
   translate(kb5.l, 0);
   kc6.draw(50, 14, 61, 13, 15, 16, 12, 19, 20, gerdur6,  notur6, almennur6, langur6);
   popMatrix();



 }
 }

 if (active == false){
 
   
   if (lare == 0){
   textFont(font1, 80);
   text("0000000", 300, 330);
   }
  
 
  }
 
 
}



void keyPressed(){
 if( (key == ' ') || (key == 'p') ){                       //THIS START OR RESETS THE PROGRAM
 starttime = millis();
 index = 0;
 active = true;
 println("start");
 }

if (key == 'o'){
  active = false;
  index = 0;
  println("skyndistopp");
  lare=0;
}

if(key == '1'){
kafli = loadStrings("njarhardur.txt");
index=0;
lare=1;
}


 if(key == 'z'){
 speed = 1.0;
 }
 if(key == 'x'){
 speed = 1.5;
 }
 if(key == 'c'){
 speed = 2.0;
 }
 if(key == 'v'){
 speed = 2.5;
 }


}




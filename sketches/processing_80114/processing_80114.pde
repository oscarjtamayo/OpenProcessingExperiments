
//import processing.pdf.*;




  size (1000,600);
 // beginRecord(PDF,"composicionConCirculos8.pdf");




  
  background(0);
 

 
 
    strokeWeight( 1);
  
 for ( float a=0 ; a<height; a+=20){
   for (float b=0; b< width ; b+=5){
  
   noFill();
   stroke (255,0,0,random (200));
 
   ellipse (b, a, 10*(a/b) , 5*(a/b));

   }
 }

  strokeWeight (1);

for ( float c=0; c<height ; c+=20){
  for (float d=0; d<width ; d+=10+c){
    
 noFill();
 stroke (255,random (150));
 
 ellipse (d , c, c/2, d/2);
  }
}
  


  
  strokeWeight (1);
  
  for (float e=0 ; e< height ; e+= 20){
    for (float f=0 ; f< width ; f+=20){
      
      noFill();
      stroke (255,255,0,random(50));
      ellipse (f,e, f-e,50);
    }
  }


//endRecord();
  


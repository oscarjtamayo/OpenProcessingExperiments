
/*int counter;

void setup() {  //setup function called initially, only once
  size(250, 250);
  background(255);  //set background white
  colorMode(HSB);   //set colors to Hue, Saturation, Brightness mode
  counter = 0;
}

void draw() {  //draw function loops 
  counter++;
  noStroke();
  fill(random(255),100,255,50);
  
  if(mousePressed == true) { //add some interaction
    ellipse(mouseX, mouseY, 20, 20);
  }
  else {
    ellipse(width/2, height/2, 80*sin(counter), 80*sin(counter));
  }
}

              */
              size(300,300);
              background(255,255,255);
              
              float x;
              float y;
              
              x = random(255);
              y = random(255);
              
              void draw(){
              
              for(int i=0; i<40; i++){
                           
              stroke(0,x,y,30);
              line(0,0,mouseX,mouseY);
              }
              }
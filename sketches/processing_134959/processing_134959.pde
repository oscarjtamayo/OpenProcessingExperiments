
// drawing line variables
int startVertical = width/30;
int startHorizontal = height/40;
int vSpacing = 20;
int hSpacing = 20;
int endX = 0;
int endY = 0;
// styling line variables
int lineAlpha = 90;
int hlineAlpha = 90;
int lineWeight = 20;
int redLine = 130;
int rBlue = 0;
// styling shapes variables
int rectBlue = 0;
int triAlpha = 70;
int quadAlpha = 60;
int rectAlpha = 20;

void setup() {
  size (600, 800);
background(0);
frameRate(15);

}

void draw() {
  // vertical lines
  
  if(endX < width) {
    for ( startVertical; startVertical < endX; startVertical = startVertical + vSpacing) {
    strokeWeight(lineWeight);
    stroke(redLine, 0, rBlue, lineAlpha);
    line(startVertical, 0, startVertical, height);
  }
     
    redLine -= 20;
    endX += 10;
  }
    else {
 //horizontal lines
  for ( startHorizontal; startHorizontal < endY; startHorizontal = startHorizontal + hSpacing) {
    strokeWeight(lineWeight);
    stroke(redLine, 0, rBlue, hlineAlpha);
    line(0, startHorizontal, width, startHorizontal);
  }
    if(endY < height) {
    endY += 10;
  }
    redLine -= 20; 
    
    }
    if (redLine < 90) {
      redLine = 170;
    }
    
    if (mouseX <= width/2) {
      rectBlue = mouseX/2;
      if (mouseX >= width/2) {
        rectGreen = mouseX/2; 
      }
      
      
    }
      //triangles and quads
noStroke();
fill(90, 0, rectBlue, triAlpha);
triangle(0, height, width, height/3, width, height);
fill(110, 0, rectBlue, quadAlpha);
quad(0, 0, width, 0, width, height/2.6, 0, height+30);

//rectangles
strokeWeight(50);
stroke(90, 0, rectBlue, 175);
fill(170-mouseY/4, 0, rectBlue, rectAlpha);
rect(0, 0, width, height/2.8);
fill(170-mouseX/4, 0, rectBlue, rectAlpha);
rect(0, height/2.8, width, height);


  if (mouseX >= width/3) {
    lineWeight = random(5,40);
      triAlpha = random(30, 150);
      quadAlpha = random(60, 150);
      rectAlpha = 20;
      }
      
     if (mouseY >= height/3) {
       hlineAlpha = random(75, 175);
        lineAlpha = random(125, 235);
}
      if (mouseY <= height/2) {
        hlineAlpha = random(175, 255);
        lineAlpha = random(175, 255);

}
}
  void mouseClicked() {
    triAlpha = 0;
    quadAlpha = 0;
    rectAlpha = 0;
    rBlue = 30;
   
  }
  
  
  

 
  





///////////////////////////////////////////////
/// Written by Ben Jack, 14th February 2011 ///
///////////////////////////////////////////////


//what happens if you change these both to 50? what are they doing to the pattern?
int patternSeperationX = 20;
int patternSeperationY = 20;


void setup(){
  size(500,500);
  smooth();
  //the white box simply shows you the space your pattern gets drawn in
  fill(255);
  noStroke();
  //rect(0,0,patternSeperationX,patternSeperationY);
  stroke(0);
  
  for(int i = -3; i < width/patternSeperationX; i++){
      for(int j = -3; j < height/patternSeperationY; j++){
        pushMatrix();
        translate(i*patternSeperationX, j*patternSeperationY);
        yourFunction();
        popMatrix();
      }
  }
  
}


void draw()
{
  //This is here so the program keeps running and the screengrab will work
}

void yourFunction(){
  strokeWeight(6);
  stroke(87,38,106,90);
  line(0,30,30,80);
 
  stroke(35,28,121,90);
  line(80,30,30,0);
}

 
//-------------------------------------YOUR PATTERN GOES IN HERE-------------------------------
  //try making pleasant designs :-)
  




void keyPressed() {
//Takes PNG screenshots when you push S
//Careful - doesn't prompt when overwriting files!
  if(key == 's' || key == 'S')
  {
    String filePath = selectInput("Saving PNG - Select or Type File Name");  // Opens file chooser
    if(filePath != null)
    {
      save(filePath + ".png");
    }
  }
}


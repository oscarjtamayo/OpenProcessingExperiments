
PImage image1;
PImage image2;
PImage image3;
PImage image4;
PImage image5;
PImage image6;
PImage image7;
ArrayList frames;
int i= -1; 
float rectX, rectY;      // Position of square button
float circleX, circleY;  // Position of circle button
float rectSize = 50;     // Diameter of rect
float circleSize = 53;   // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;
PImage currentImage;

void setup(){
  size(800,500);
  smooth();
  rectColor = color(0);
  rectHighlight = color(51);
  circleColor = color(255);
  circleHighlight = color(204);
  currentImage = loadImage("black.jpg");;
  circleX = width/1.15+circleSize/2+10;
  circleY = height/1.15;
  rectX = width/1.15-rectSize-10;
  rectY = height/1.15-rectSize/2;
  ellipseMode(CENTER);
  image1=loadImage("jump1.jpg");
  image2=loadImage("jump2.jpg");
  image3=loadImage("jump3.jpg");
  image4=loadImage("jump4.jpg");
  image5=loadImage("jump5.jpg");
 
  frames = new ArrayList(5);
  frames.add(image1); 
  frames.add(image2);
  frames.add(image3);
  frames.add(image4);
  frames.add(image5);
 

}
  void draw(){
    i++;
    if(i <= 3){
    imageMode(CENTER);
    image((PImage) frames.get(i),width/2,height/2);
    delay(2000);
    }
     
   if(i>3){
      update(mouseX, mouseY);
      background(0);
      image(currentImage,width/2,height/2);
  
  if(rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if(circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}
}
void update(float x, float y)
{
  if( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed()
{
  if(circleOver) {
    currentImage = (PImage)frames.get(frames.size()-2);
  }
  if(rectOver) {
    currentImage = (PImage)frames.get(frames.size()-1);
  }
}

boolean overRect(float x, float y, float width, float height) 
{
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(float x, float y, float diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
    



int Mau5Y;
int Mau5X;
int richtingX;
int richtingY;
int count;
int eyes;
int color1;
boolean test;
 
//basic
void setup() {
  size(500, 500);
  Mau5Y = 450;
  Mau5X = 70;
  count = 0;
  test = false;
  richtingX = 3;
  richtingY = 5;
  eyes = 170;
}
 
 
void draw() {
  background(color1);
   
  monster();
  kleureyes();
  richting();
  test();
  counter();
  bgcolor();
 
  println(test);
  println(count);
}
 
 
 
 
 
 
 
 
 
 
 
 
void monster() {
 //* Head
  stroke (255);
  
  ellipseMode(CENTER);
  ellipse (Mau5X, Mau5Y+-1, 101, 101);
  //* Ears
  //Right Ear
  ellipse (Mau5X+65, Mau5Y+-60, 73, 74);
  //Left Ear
  ellipse (Mau5X-65, Mau5Y-60, 73, 74);
  //* Eyes
fill(255);
  ellipseMode (CENTER);
  ellipse (Mau5X-20, Mau5Y+-1, 35, 20);
  ellipse (Mau5X+25, Mau5Y+-1, 35, 20);
  //* Eyemask
  stroke(200,40);
fill(200,40);  
  ellipse (Mau5X+0, Mau5Y+0, 100, 33);
  //* aureool
  stroke (255);
  fill (eyes);
  ellipse (Mau5X+3, Mau5Y-123, 110, 21);
  //*mouth 
  stroke (255);
  fill (255);
  ellipse (Mau5X+2, Mau5Y+31, 45, 12);
 
  stroke(0);
  fill(0);
  
}
 
 void bgcolor() {
  for(int i = 0; i < 5; i++) {
    color1 = color1 + i;
  }
  if(color1 >= 255) {
    color1 = 0;
  }
 }

void kleureyes(){
    for (int i = 0; i < 5; i++) {
    eyes = eyes + i;
  }
  if (eyes >= 255) {
    eyes = 170;
  }
}
 
 
 
void richting(){
    if (Mau5X > 500 || Mau5X < 0) {
    richtingX = -richtingX;
    count = count+1;
  }
 
  if (Mau5Y > 500 || Mau5Y < 0) {
    richtingY = -richtingY;
    count = count+1;
  }
   
  Mau5X = Mau5X + richtingX;
  Mau5Y = Mau5Y + richtingY;
}
 
void test(){
    if (test == false) {
    fill(24, 139, 236);
  }
 
  if (test == true) {
    fill(232, 35, 68);
  }
   
    if (count == 10) {
    count = 0;
    test = !test;
  }
}
 
void counter(){
  text(count, 250, 494);
  textSize(15);
}


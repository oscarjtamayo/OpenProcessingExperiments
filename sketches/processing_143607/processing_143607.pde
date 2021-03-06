

PFont myFont;
 
int pScore;
 
ball ball1; // main character
food food1;
bad bad1;
bad bad2;
mean mean1;
mean mean2;
slow slow1;
slow slow2;
 
 
// don't touch em!
 
 
int gameState; //0= pre game 1= in game 2= game over
//setting up perimeter to contain ball character
int width = 700;
int height = 700;
    
void setup() {
  size(width,height);
  smooth();
  rectMode(CENTER);
  ellipseMode(CENTER);
  gameState = 0;
  food1 = new food ();
  bad1 = new bad();
  bad2 = new bad();
  mean1 = new mean();
  mean2 = new mean();
  slow1 = new slow();
  slow2 = new slow();
  ball1 = new ball (300,575,50);
  pScore = 0;
}
    
void draw(){
  background(255);
  
  food1.display();
  slow1.move();
  slow1.display(); 
  bad1.move();
  bad1.display();
  ball1.display();
  ball1.keyPressed();
   
  if(gameState==0){
 
    fill(0);
    textSize(60);
    text("Ball Game",200,100 );
    textSize(40);
    text("Press b to Start", 200,157);
    if(keyPressed && key == 'b'){
      gameState = 1;
    }
  }
   
  if (gameState == 3){
    keyCode = 0;
     
    fill(0);
    textSize(50);
    text("Final Score:",10, 85);
    text(pScore, 290, 85);
    textSize(30);
    text("Play Again?", 450, 607);
    textSize(30);
    text("Press R to Restart", 450, 675);
    if (keyPressed && key == 'r') {
      gameState = 0;
      setup();
      gameState = 1;
    }
  }
   
  if (gameState == 1){
    fill(150);
    textSize(20);
    text(pScore, 25, 25);
    if (ball1.intersect(food1)){
      pScore++;
      ball1.change();
      food1.reset();
    }
    if ( ball1.collides(bad1) ){
      gameState = 3;
    } 
    if ( ball1.collides(slow1) ){
      gameState = 3;
    }

    }
          if (pScore == 5){
        gameState = 2;
        ball1.reset();
      }

if (gameState == 2){
   bad2.move();
  bad2.display();
  slow2.move();
  slow2.display();
      fill(150);
    textSize(20);
    text(pScore, 25, 25);
    if (ball1.intersect(food1)){
      pScore++;
      ball1.change();
      food1.reset();
    }      
      if ( ball1.collides(slow1) ){
      gameState = 3;
    }
            if ( ball1.collides(slow2) ){
      gameState = 3;
            }
          if ( ball1.collides(bad1) ){
      gameState = 3;
    }
    if ( ball1.collides(bad2) ){
      gameState = 3;
    }
            
}
}
  
  
  
class food {
  float x, y; // variables
  float r;
    
  food (){
    x = random(100, width - 100);
    y = random(100, height - 100);
    r = 20;
  }
    
  void display(){
    fill(0);
    noStroke();
    ellipse(x,y,r,r);
  }
      
  void reset(){
    x = random(100, width - 100);
    y = random(100, height - 100);
  }
}
 
class bad {
  float x, y; // variables
  float r;
  float xspeed;
    
  bad (){
    x = random(100, width - 200);
    y = random(100, height - 200);
    r = 20;
    xspeed = 5;
     
  }
    void move(){
    x += xspeed;
    if (x > width -10 || x < 10){
      xspeed *= -1;
  }
    }
    
  void display(){
    fill(255,0,0);
    noStroke();
    ellipse(x,y,r,r);
  }
}
 
class slow {
  float x, y; // variables
  float r;
  float xspeed;
    
  slow (){
    x = random(100, width - 200);
    y = random(100, height - 200);
    r = 20;
    xspeed = 2;
     
  }
    void move(){
    x += xspeed;
    if (x > width -10 || x < 10){
      xspeed *= -1;
  }
    }
    
  void display(){
    fill(255,0,0);
    noStroke();
    ellipse(x,y,r,r);
  }
}
 
class mean {
  float x, y; // variables
  float r;
  float yspeed;
    
  mean (){
    x = random(100, width - 200);
    y = random(100, height - 200);
    r = 20;
    yspeed = 5;
     
  }
    void move(){
    y += yspeed;
    if (y > height -10 || y < 10){
      yspeed *= -1;
  }
    }
    
  void display(){
    fill(255,0,0);
    noStroke();
    ellipse(x,y,r,r);
  }
}
      
   
    
    
class ball {
  float xVel;
  float yVel;
    
  float x;
  float y;
  float speed;
  float r; //radius
  color c = color(255,20,245);
     
       
  ball(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
    speed = 0;
    
  }
    void change(){
    c = color(0, random(100,220),random(100,245));
    r += 5;
      
  }
    void reset(){
    x = 300;
    y = 575;
    r = 50;
    speed = 0;
 
    }

       
  void display(){
    fill (c);
    noStroke();
    ellipse(x,y,r,r);
    fill(0,0,0,50);
    ellipse(x+2*xVel,y+2*yVel,r-25,r-25);
         
  }
 
 //key commands
//ball flies off page in response to key command
  void keyPressed() {
    if (key == CODED){
      if (keyCode == UP){
        y = y-5;
        yVel = -5;
        xVel = 0;
          
        //perimeter created with if statements under each keycode
                        if(y <= 25){
        y = 25;
                }
      }
          
      else if (keyCode == DOWN) {
        y = y + 5;
        yVel = 5;
        xVel = 0;
                if(y >= height-25){
        y = height-25;
                }
      }
    }if (keyCode == RIGHT) {
      x = x+5;
      xVel = 5;
      yVel = 0;
                            if(x >= width - 25){
        x = width - 25;
                    
                }
    } else if (keyCode == LEFT) {
      x = x-5;
      xVel = -5;
      yVel = 0;
                            if(x <= 25){
        x = 25;
                }
    
    }
  }
  
    boolean intersect(food f) {
      
    float distance = dist(x,y,f.x,f.y); // Calculate distance
      
    // Compare distance to sum of radii
    if (distance < f.r+ r/2) {
      return true;
    } else {
      return false;
    }
  }

 
  boolean collides(bad b) {
    float distance = dist(x,y,b.x,b.y); // Calculate distance
      
    // Compare distance to sum of radii
    if (distance < r - b.r - 5) {
      b.xspeed = 0;
      return true;
 
    } else {
      return false;
    }
  }
  boolean collides(slow s) {
    float distance = dist(x,y,s.x,s.y); // Calculate distance
      
    // Compare distance to sum of radii
    if (distance < r - s.r - 5) {
      s.xspeed = 0;
      return true;
 
    } else {
      return false;
    }
  }    boolean collides(mean m) {
    float distance = dist(x,y,m.x,m.y); // Calculate distance
      
    // Compare distance to sum of radii
    if (distance < r - m.r - 5) {
      m.yspeed = 0;
      return true;
 
    } else {
      return false;
    }
  }
 
 }


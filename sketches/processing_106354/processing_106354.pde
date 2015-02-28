
// Credit: Ren Ervin Bettendorf 
 
/* SCREENSAVERS FER DAYS BROSKIES */
 
int dx = 2;
int dy = 3;
 
int x = 50;
int y = 50;
 
void setup(){
  size(600,500);  
  background(0);
  frameRate(60);
}
 
 
 
void draw(){
    fill(255);
    rect(x,y,25,25,5);
    rect(x+10,y+10,25,25,5);
 
    x = x + dx;
    y = y + dy;
 
    if ( x< 0 || x > 475){
       dx = -1 * dx;
    }
 
    if ( y < 0 || y > 475){
       dy = -1 * dy;  
    }
 
}

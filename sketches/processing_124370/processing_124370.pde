
void setup(){
    size(500,500);
    x = 50
    y = 250
}
 
void draw(){
    background(225);
    ellipse((x++)%width,(y+=6)%width,20,20);
}



void setup(){
    size(500,500);
    x=250
    y=50
}
 
void draw(){
    background(225); //set background gray
    ellipse(x,(y++)%height,20,20);
}


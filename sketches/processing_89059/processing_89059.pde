
void setup () {
size(650, 1200);
strokeWeight(24);
}
void draw () {
background(350);
translate(mouseX-25, mouseY+25);
stroke(70,170,70,170);
line (200,300,200,600);
line (200,300,300,450);
line (300,450,400,300);
line (400,300,400,600);
line (300,450,400,600);
line (400,300,500,450);
line (400,600,300,750);
line (300,750,200,600);
}

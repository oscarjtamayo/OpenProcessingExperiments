
int num = 0;
int dia = 50;

void setup(){
  
  size(600, 600);
}

void draw(){
  background(0);
  if (mouseX == pmouseX && mouseY == pmouseY) {
    switch(num) {
      case 0:
        println("One");  //Prints "One"
        ellipse(width/2, height/2, dia, dia);
        break;
      case 1:
        println("Two");  //Prints "Two"
        ellipse(width/4, height/4, dia, dia);
        ellipse(3*width/4, 3*height/4, dia, dia);
        break;
       case 2:
        println("Three"); //Prints "Three"
        ellipse(width/2, height/2, dia, dia);
        ellipse(width/4, height/4, dia, dia);
        ellipse(3*width/4, 3*height/4, dia, dia);
        break;
       case 3:
        println("Four");  //Prints "Four"
        ellipse(width/4, height/4, dia, dia);
        ellipse(3*width/4, height/4, dia, dia);
        ellipse(width/4, 3*height/4, dia, dia);
        ellipse(3*width/4, 3*height/4, dia, dia);
        break;
       case 4:
        println("Five");  //Prints "Five"
        ellipse(width/2, height/2, dia, dia);
        ellipse(width/4, height/4, dia, dia);
        ellipse(3*width/4, height/4, dia, dia);
        ellipse(width/4, 3*height/4, dia, dia);
        ellipse(3*width/4, 3*height/4, dia, dia);
        break;
       case 5:
        println("Six");  //Prints "Six"
        ellipse(width/4, height/4, dia, dia);
        ellipse(3*width/4, height/4, dia, dia);
        ellipse(width/4, height/2, dia, dia);
        ellipse(3*width/4, height/2, dia, dia);
        ellipse(width/4, 3*height/4, dia, dia);
        ellipse(3*width/4, 3*height/4, dia, dia);
        break;
        
    }
  }
  else {
    num = int(random(6));
  }
}



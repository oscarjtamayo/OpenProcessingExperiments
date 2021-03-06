
//changing the number of the cells you can change the density 
Cell[]myCells= new Cell[500];


void setup() {
  size(500, 500);
  for (int i=0; i <myCells.length; i++) {
    myCells[i]=new Cell();
  }
  myCells[0].isseed=true;
}


void draw () {
   background(255);
  for (int i=0; i<myCells.length;i++) {
     myCells[i].display();
    myCells[i].update();
  }
  for (int i=0; i<myCells.length; i++) {
    if (myCells[i].isseed== false) {
      for (int j=0; j<myCells.length; j++) {
        if (myCells[j].isseed==true) {
          float d;
          d= PVector.dist(myCells[i].location, myCells[j].location);
          if (d<5) {
            myCells[i].isseed=true;
            //strokeWeight(random(1,10));
           // stroke(random(0,255),random(0,255),random(0,255));
            //line(myCells[i].location.x, myCells[i].location.y, myCells[j].location.x, myCells[j].location.y);
          }
        }
      }
    }
  }
}

class Cell {
  PVector location= new PVector(); //creating vectors
  PVector velocity=new PVector();
  float dia;
  boolean isseed;
  float cellred, cellgreen, cellblue;
  float lineweight;

  Cell() {
    //changing the initial location of each cell we
    //we change the density
    location = new PVector(random(100,300), random(100,300)); 
    dia=5;
    isseed=false;
    cellred=225;
    cellblue=225;
    cellgreen=225;
    lineweight=0.1;
  }

  void display() {
    strokeWeight(lineweight);
    if (isseed==true) {
      fill(255, 0, 0);
    }
    if (isseed==false) {
      fill(cellred, cellgreen, cellblue);
    }

    ellipse(location.x, location.y, dia, dia);
  }
  void update() {
    if (isseed==false) {
      velocity = new PVector(random(-1, 1), random(-1, 1));
      location.add(velocity);
    }
  }
}




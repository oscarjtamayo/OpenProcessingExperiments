
//images
boolean generate;

String[] top = {
  "topWhite.jpg", "topGreen.jpg", "topYellow.jpg", "topOrange.jpg", "topRed.jpg", "topPink.jpg", "topPurple.jpg", "topBlue.jpg", "topOriginal.jpg"
};

String[] middle = {
  "middleWhite.jpg", "middleGreen.jpg", "middleYellow.jpg", "middleOrange.jpg", "middleRed.jpg", "middlePink.jpg", "middlePurple.jpg", "middleOriginal.jpg"
};
String[] bottom = {
  "bottomWhite.jpg", "bottomGreen.jpg", "bottomYellow.jpg", "bottomOrange.jpg", "bottomRed.jpg", "bottomPink.jpg", "bottomOriginal copy.jpg", "bottomOriginal.jpg"
};

//sections
Section section1 = new Section(top, 0, 0);
Section section2 = new Section(middle, 0, 200);
Section section3 = new Section(bottom, 0, 385);

void setup() {
  size(600, 600);
  section1.loadImages();
  section2.loadImages();
  section3.loadImages();
  generate = true;
}


void draw() {
  if (generate == true) {
    section1.randomize();
    section2.randomize();
    section3.randomize();
  }

  section1.display();
  section1.onMouse();
  section2.display();
  section2.onMouse();
  section3.display();
  section3.onMouse();
}


void mousePressed() {
  generate = !generate;
}

class Section {
  String[] theArray;
  int posX, posY;
  PImage[] theImages;
  //int current = int(random(theArray.length));
  int current;

  Section(String[] _theArray, int _posX, int _posY) {
    theArray = _theArray;
    theImages = new PImage[theArray.length];
    posX = _posX;
    posY = _posY;
  }

  void loadImages() {
    for (int i = 0; i < theArray.length; i++) {
      theImages[i] = loadImage(theArray[i]);
    }
  }

  void run() {
    display();
  }

  void display() {
    image(theImages[current], posX, posY);
  }
  
  void randomize(){
    current = int(random(theArray.length));
  }

  void onMouse() {
 
  }
}




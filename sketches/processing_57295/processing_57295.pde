
PImage img;
PFont font;

void setup() {
  size(500,600);
  smooth();
  img = loadImage("forest.jpg");
  font = loadFont("Arial-Black-48.vlw");
  textFont(font);
}




void draw() {
image(img, 0, 0);
int x = 10; // x-coordinate
int y = 10; // y-coordinate
int bodyHeight = 110; // Body Height
int headHeight = 140; // Neck Height
int ny = y - bodyHeight - headHeight;

// Take all the drugs 
float r = random(0, 255);
float g = random(0, 255);
float b = random(0, 255);

float invertedr = 255 - r;
float invertedg = 255 - g;
float invertedb = 255 - b;


	noStroke();
// THE HEAD //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+125, y+200, 250, 180); // The shape of the head
		smooth();
	//Left Eye //------------------------------------------------------------------------------------------------------
		fill(0); // Black
		ellipse(x+190, y+290, 70, 70);
	//Left Eye Dots //------------------------------------------------------------------------------------------------------
		fill(250); // White
		ellipse(x+200, y+280, 30, 30);
		fill(250); // White
		ellipse(x+180, y+300, 15, 15);
	// Right Eye //------------------------------------------------------------------------------------------------------
		fill(0); // Black
		ellipse(x+310, y+290, 70, 70);
	// Right Eye Dots //------------------------------------------------------------------------------------------------------
		fill(250); // White
		ellipse(x+320, y+280, 30, 30);
		fill(250); // White
		ellipse(x+300, y+300, 15, 15);
	// Nose //------------------------------------------------------------------------------------------------------
		fill(#F0B3EF); // Pink
		ellipse(x+250, y+330, 30, 20);
//THE BODY //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+190, y+370, 120, 130); // The shape of the Body 
		smooth();
	// The stomach patch //------------------------------------------------------------------------------------------------------
		fill(250); // Light Grey
		rect(x+215, y+400, 70, 100); 
		smooth();
	// Left Leg //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+160, y+470, 50, 50); 
		smooth();
	// Right Leg //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+290, y+470, 50, 50); 
		smooth();
	// Left Hand //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+160, y+400, 30, 30); 
		smooth();
	// Right Hand //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+310, y+400, 30, 30); 
		smooth();
	// Left Ear //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+140, y+60, 80, 140); 
		smooth();
	// Right Ear //------------------------------------------------------------------------------------------------------
		fill(220); // Light Grey
		rect(x+280, y+60, 80, 140); 
		smooth();
	// Left Inner Ear //------------------------------------------------------------------------------------------------------
		fill(#F0B3EF); // Pink
		rect(x+160, y+100, 40, 100); 
		smooth();
	// Right Inner Ear //------------------------------------------------------------------------------------------------------
		fill(#F0B3EF); // Pink
		rect(x+300, y+100, 40, 100); 
		smooth();

if (mousePressed) {
		background(000);
	noStroke();
        textSize(36);
        text("Greetings Mortals", 80, 580);
	// The Head //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+100, y+150, 300, 230); // The shape of the head
		smooth();
	//Left Eye //------------------------------------------------------------------------------------------------------
		fill(r, g, b); // Drugs!
		ellipse(x+180, y+290, 90, 90);
	//Left Eye Dots //------------------------------------------------------------------------------------------------------
		fill(invertedr, invertedg, invertedb); // Drugs!
		ellipse(x+190, y+280, 35, 35);
		fill(invertedr, invertedg, invertedb); // Drugs!
		ellipse(x+170, y+300, 18, 18);
	// Right Eye //------------------------------------------------------------------------------------------------------
		fill(r, g, b); // Drugs!
		ellipse(x+310, y+290, 90, 90);
	// Right Eye Dots //------------------------------------------------------------------------------------------------------
		fill(invertedr, invertedg, invertedb); // Drugs!
		ellipse(x+320, y+280, 35, 35);
		fill(invertedr, invertedg, invertedb); // Drugs!
		ellipse(x+300, y+300, 18, 18);
	// Nose //------------------------------------------------------------------------------------------------------
		fill(97, 97, 97); // Evil Grey
		ellipse(x+250, y+330, 30, 20);
	// The Body //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+190, y+370, 120, 130); // The shape of the Body 
		smooth();
	// The stomach patch //------------------------------------------------------------------------------------------------------
		fill(250); // Light Grey
		rect(x+215, y+400, 70, 100); 
		smooth();
	// Left Leg //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+160, y+470, 50, 50); 
		smooth();
	// Right Leg //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+290, y+470, 50, 50); 
		smooth();
	// Left Hand //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+160, y+400, 30, 30); 
		smooth();
	// Right Hand //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+310, y+400, 30, 30); 
		smooth();
	// Left Ear //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+140, y+10, 80, 140); 
		smooth();
	// Right Ear //------------------------------------------------------------------------------------------------------
		fill(255, 174, 201); // Evil Pink
		rect(x+280, y+10, 80, 140); 
		smooth();
	// Left Inner Ear //------------------------------------------------------------------------------------------------------
		fill(97, 97, 97); // Evil Grey
		rect(x+160, y+50, 40, 100); 
		smooth();
	// Right Inner Ear //------------------------------------------------------------------------------------------------------
		fill(97, 97, 97); // Evil Grey
		rect(x+300, y+50, 40, 100); 
		smooth();
	}
}






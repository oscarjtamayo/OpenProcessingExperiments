
// Nathan Allen
// 7/8/13
// PROJECT Trafic Light: [Trafic light progect]
// References: Sample code from Digital Media Academy

//Traffic Light: exercise 2 (Processing mod 1) 

rectMode(CENTER);
ellipseMode(CENTER);
noStroke();

// rectangle (traffic light backing)
fill(195, 195, 55);
rect(50,50, 50, 100);

// green light 
fill(255, 255, 6);
ellipse(50, 20, 25, 25);

// yellow light
fill(6, 255, 6);
ellipse(50, 50, 25, 25);


fill(255, 6, 6);
ellipse(50, 80, 25, 25);
noFill();
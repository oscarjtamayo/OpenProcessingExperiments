
size(720, 480);
smooth();
strokeWeight(2);
background(204);
ellipseMode(RADIUS);

// Neck
stroke(102);  // Set stroke to pink
line(266, 257, 266, 162);  // Left
line(276, 257, 276, 162);  // Middle
line(286, 257, 286, 162);  // Right

// Antennae
line(276, 155, 246, 112);  // Small
line(276, 155, 306, 56);  // Tall
line(276, 155, 342, 170);  // Medium

// Body
noStroke();  // Disable stroke
fill(#662266);  // Set fill to gray
ellipse(264, 377, 33, 33);  // Antigravity orb
fill(0);  // Set fill to black
rect(219, 257, 90, 120);  // Main body
fill(105);  // Set fill to gray
rect(212, 274, 90, 6);  // Gray stripe

// Head
fill(#ff5555);  // Set fill to black
ellipse(276, 155, 45, 45);  // Head
fill(255);  // Set fill to white
ellipse(288, 150, 14, 14);  // Large eye
fill(0);  // Set fill to black
ellipse(288, 150, 3, 3); // Pupil
fill(153);  // Set fill to light gray
ellipse(263, 148, 5, 5);  // Small eye 1
ellipse(296, 130, 4, 4);  // Small eye 2
ellipse(305, 162, 3, 3);  // Small eye 3

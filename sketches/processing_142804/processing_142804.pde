
//Math 2 Excercise 3

size(500, 500);
background(0);

for (int x = 0; x < 500; x+=4) {
float n = norm(x, 0, 500); 
float y = pow(n, 4); 
y *= 500; 
//noStroke();
//fill(255, 30, 50, 100);
//ellipse(x, y, 16, 16);
noFill();
stroke(255, 200, 100);
strokeWeight(0.3);
beginShape();
  vertex(0, height * 0.5);
  bezierVertex(x, y, x, y, width * 0.5, height);
endShape();
}
for (int x = 0; x < 500; x+=4) {
float n = norm(x, 0, 500); 
float y = 1-pow(n, 4); 
y *= 500; 
//noStroke();
//fill(255, 30, 50, 100);
//ellipse(x, y, 16, 16);
noFill();
stroke(100, 200, 255);
strokeWeight(0.3);
beginShape();
  vertex(0, height * 0.5);
  bezierVertex(x, y, x, y, width * 0.5, 0);
endShape();
}
for (int x = 0; x < 500; x+=4) {
float n = norm(x, 0, 500); 
float y = (1-pow(n, 4)); 
y *= 500; 
//noStroke();
//fill(255, 30, 50, 100);
//ellipse(x, y, 16, 16);
noFill();
stroke(100, 255, 200);
strokeWeight(0.3);
beginShape();
  vertex(width, height * 0.5);
  bezierVertex(x, y, x, y, width * 0.5, height);
endShape();
}
for (int x = 0; x < 500; x+=4) {
float n = norm(x, 0, 500); 
float y = 1 - (1 - pow(n, 4)); 
y *= 500; 
//noStroke();
//fill(255, 30, 50, 100);
//ellipse(x, y, 16, 16);
noFill();
stroke(255);
strokeWeight(0.3);
beginShape();
  vertex(width, height * 0.5);
  bezierVertex(x, y, x, y, width * 0.5, 0);
endShape();
}



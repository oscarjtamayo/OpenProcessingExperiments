
float eye = 0;

void setup() {
       frameRate(10);
       size(1000, 1000);
       background(150, 250, 3);  
     }

void draw() {
       noStroke();
       fill(255, 85, 250);
       ellipse(500, 500, 1000, 1000);
       fill(240, 340, 210);
       bezier(100, 200, 300, -70, 700, -70, 900, 200);
       bezier(100, 200, 100, 300, 400, 300, 400, 200);
       bezier(700, 200, 600, 300, 900, 300, 900, 200);
       
       fill(150, 250, 3);
       ellipse(500, 500, 550, 550);
       
       fill(250, 250, 50);
  
       rect(300, 100, 450, 750, 250, 250, 200, 400);
       rect(700, 550, 130, 130, 65, 65, 65, 65);
       ellipse(320, 340, 80, 80);
       fill(250, 200, 80);
       ellipse(450, 730, 250, 200);
       rect(230, 500, 360, 300, 180, 180, 180, 180);
       fill(255);
       stroke(0);
       strokeWeight(6);
       eye = eye + 1;
       float eyeball = eye % 30;
       println(eyeball);
       
       if(eyeball < 29) {    // left eye
         ellipse(350, 430, 200, 200);
       } else {
         ellipse(350, 430, 200, 10);
       }
       noStroke();
       fill(250, 250, 50);
       rect(250, 450, 200, 100, 50, 0, 0, 50);
       rect(450, 450, 200, 100, 0, 0, 0, 0);
       
       fill(255);
       stroke(0);
       strokeWeight(6);
       if(eyeball < 29) {    // right eye
         ellipse(510, 430, 200, 200);
       } else {
         ellipse(510, 430, 200, 10);
       }
       
       ellipse(350, 430, 10, 10); 
       ellipse(510, 430, 10, 10);
       noFill();
       
       bezier(360, 150, 360, 0, 650, 50, 650, 200);
       bezier(420, 117, 420, -33, 720, 50, 720, 200);
      
       line(650, 530, 710, 380);
       line(710, 380, 750, 530);
       line(750, 530, 800, 380);
       line(800, 380, 850, 530);
       
       bezier(800, 600, 800, 600, 800, 640, 760, 640);
       bezier(760, 610, 770, 605, 780, 610, 780, 633);
       fill(255);
       bezier(460, 700, 460, 720, 510, 730, 510, 750);
       bezier(480, 724, 450, 790, 510, 780, 510, 750); 
       
       float r = random(255);
       float g = random(255);
       float b = random(255);
       float q = random(255);
       float w = random(255);
       float e = random(255);
       float speed = 100;
  
       stroke(r+50, g+50, b+50);
       line(300, 200, 310, 220);
       line(700, 100, 710, 120);
       line(500, 70, 510, 80);
       line(820, 170, 830, 180);
 
       stroke(r+150, g+50, b+150);
       line(200, 140, 210, 145);
       line(130, 170, 140, 165);
       line(840, 220, 850, 225);
       line(440, 20, 450, 25);
 
       stroke(q+50, w+100, e+100);
       line(320, 100, 330, 80);
       line(620, 50, 630, 40);
       line(750, 250, 760, 240);
       line(360, 40, 370, 50);
 
       stroke(r+100, g+150, b+10);
       line(180, 220, 186, 215);
       line(280, 80, 286, 85);
       line(380, 120, 386, 115);
       line(580, 70, 586, 75);
       line(780, 200, 786, 205);
 
       stroke(q+150, w+120, e+150);
       line(260, 160, 250, 150);
       line(760, 110, 750, 120);
       line(560, 10, 550, 20);
}

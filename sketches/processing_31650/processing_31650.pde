
import processing.pdf.*;

void setup(){
  size(500,500);
  beginRecord(PDF, "FIVE.pdf");

size(500,500);
background(0);
noStroke();
smooth();
stroke(116,902,245,100);
strokeWeight(4);
for(int x =0;x<800;x+=50)
for(int y=0;y<800;y+=50)
line(0,x,y,0);

endRecord();
exit();
}



////////libraries in processing, used geomerative,typing
////////http://www.ricardmarxer.com/geomerative
////////Creator: Ricard Marxer Follow ricardmp on Twitter 
////////Collaborator: Mark Luffel
////////Overview, examples and bug fixes: Florian Jenett
////////the name of the example I referenced is below
////////geomerativeEx3b_RFont_RPoint

////////////Lydia's code
int whichfont = 0;
int whichcolor = 0;
color [] colors;

import geomerative.*;
RFont [] font;

RPolygon rp;
String buff = "";
boolean didntTypeYet = true;
float lineHeight;


/////////////////////////////////////////////
////////////Lydia's code
void setup() { 
  colorMode(RGB);
  background(0);
  smooth();
  size(850, 350, P3D);
  //stroke(#12FF2B);  //green
  //stroke(#FF8017);  //orange
  //stroke(random(255),random(255), random(255));  
  strokeWeight(.175);
  RG.init(this);

  /////////////////////////////////////////////


 // colors = new color [random(230), random(230), random(230)];
 /*
 colors = new color [1];
 colors [0] = random(230), random(230), random(230);
 */
 
 /* 
 stroke(colors[random(230), random(230), random(230)]);
 */
 
  
// stroke(255, random(5,150));
////////////Lydia's code
 colors = new color [1];
 colors [0] = color (random(255), random(255), random(255));
 /*
  colors = new color [3];
  colors[0] =  #12FF2B;
  colors[1] = #FF8017;
  colors[2] = #ffffff; */


  /////////////////////////////////////////////

////////////Lydia's code
  font = new RFont [3];
  font[0] = new RFont( "person_stern_exterior_ba.ttf", 135, RFont.CENTER);
  font[1] = new RFont( "Tightrope-Regular.ttf", 110, RFont.CENTER);
  font[2] = new RFont ("Governor.ttf", 130, RFont.CENTER);
}


void draw()
{ 
  //background(0);
  ////////////////////////color switch///////////////////////////
////////////Lydia's code
stroke(random(255),random(255), random(255));

  stroke(colors[whichcolor]);
  

  ////////////////////////speed of line points///////////////////////////
  ////////////started to change the code to work towards my outcome from here
  if (mousePressed) {
    RCommand.setSegmentLength(50.0*mouseX/width);
  } 
  else { 
    RCommand.setSegmentLength (frameCount % 50);
  }  



  if (buff.length()>0)
  {
    translate(width/2, height/1.5);

    RGroup grp = font[whichfont].toGroup(buff); 


    ////////////////////////speed of line points///////////////////////////

    RPoint[] pnts = grp.getPoints();

    for ( int i = 1; i < pnts.length; i++ )
    {
      line( pnts[i-1].x, pnts[i-1].y, pnts[i].x, pnts[i].y );
    }
    ////////////to here
  }  ////////////////////////pdf///////////////////////////
}


///////////array, trigger in the draw loop, function /////////////////



void keyPressed() {////////////Lydia's code
  if (key == CODED && key != SHIFT) {
    if (keyCode == RIGHT ) {
      saveFrame();
      // save frame here
    }   
    else
      if (keyCode == DOWN ) {
        // switch font
        whichfont ++;
        if (whichfont > font.length -1) {
          whichfont = 0;
        }
      }
      else
        if (key == DELETE) {
          background(0);
          
        }
    /////////////////////color switch//////////////////////
        else
          if (keyCode == UP ) {
            colors [0] = color (random(255), random(255), random(255));
            // switch color
//            whichcolor ++;
//            if (whichcolor > colors.length -1) {
//              whichcolor = 0;
//            }
          } ////////////Lydia's code
  }
  else {
    /// check uncoded here

   ////////////started to change the code to work towards my outcome, took out a lot of unnecessary code 
      char k;
    k = (char)key;
    switch(k) {
    case 8:



      if (buff.length()>0) {
        buff = buff.substring(0, buff.length()-1);
      }
      break;
    case 9:
      background(0);
      buff = "";
      break;
    case 13:  // Avoid special keys
    case 10:
    case 65535:
    case 127:
    case 27:
      break;
    default:
      // tests to see if text is beyond margins
      if (buff.length()<10) {
        buff=buff+k;
      }
      break;
    }
  }
}



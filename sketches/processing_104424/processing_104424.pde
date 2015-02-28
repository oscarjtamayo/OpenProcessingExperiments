
//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies

/*---------------------------------------------------------
Booked: Free your brain, v.1
Code adaptation by Sophia Giakmoglidou 
http://www.openprocessing.org/user/29337
 
Graphics: Nektaria Giakmoglidou
Extra sound effects: Dimitris Tsanaktsis, Christianna Tsanaktsi
---------------------------------------------------------*/

import org.jbox2d.util.nonconvex.*;
import org.jbox2d.dynamics.contacts.*;
import org.jbox2d.testbed.*;
import org.jbox2d.collision.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.p5.*;
import org.jbox2d.dynamics.*;

/**
 * A basic physics based game
 */

// Audio

Maxim maxim;
AudioPlayer droidSound, wallSound;
AudioPlayer[] crateSounds;


Physics physics; // The physics handler
// rigid bodies for the droid and two crates
Body droid;
Body [] crates;
// the start point of the catapult 
Vec2 startPoint;
// a handler that will detect collisions
CollisionDetector detector; 

int crateSize = 80;
int ballSize = 90;

PImage crateImage, ballImage, tip;

int score = 0;

boolean dragging = false;

// this is used to remember that the user 
// has triggered the audio on iOS... see mousePressed below
boolean userHasTriggeredAudio = false;

void setup() {
  size(1024, 768);
  frameRate(60);


  tip = loadImage("background.jpg");
  crateImage = loadImage("crate.png");
  ballImage = loadImage("book_droid.png");
  imageMode(CENTER);

  //initScene();

  /*
   * Set up a physics world. This takes the following parameters:
   * 
   * parent The PApplet this physics world should use
   * gravX The x component of gravity, in meters/sec^2
   * gravY The y component of gravity, in meters/sec^2
   * screenAABBWidth The world's width, in pixels
   * screenAABBHeight The world's height, in pixels
   * borderBoxWidth The containing box's width 
   * borderBoxHeight The containing box's height 
   * pixelsPerMeter Pixels per physical meter
   */
  physics = new Physics(this, width, height, 0, -10, width*2, height*2, width, height, 100);
  // this overrides the debug render of the physics engine
  // with the method myCustomRenderer
  // comment out to use the debug renderer 
  // (currently broken in JS)
  physics.setCustomRenderingMethod(this, "myCustomRenderer");
  physics.setDensity(10.0);

  // set up the objects
  crates = new Body[7];
  crates[0] = physics.createRect(600, height-crateSize, 600+crateSize, height);
  crates[1] = physics.createRect(600, height-2*crateSize, 600+crateSize, height-crateSize);
  crates[2] = physics.createRect(600, height-3*crateSize, 600+crateSize, height-2*crateSize);
  crates[3] = physics.createRect(600+1.5*crateSize, height-crateSize, 600+2.5*crateSize, height);
  crates[4] = physics.createRect(600+1.5*crateSize, height-2*crateSize, 600+2.5*crateSize, height-crateSize);
  crates[5] = physics.createRect(600+1.5*crateSize, height-3*crateSize, 600+2.5*crateSize, height-2*crateSize);
  crates[6] = physics.createRect(600+0.75*crateSize, height-4*crateSize, 600+1.75*crateSize, height-3*crateSize);

  startPoint = new Vec2(200, height-150);
  // this converst from processing screen 
  // coordinates to the coordinates used in the
  // physics engine (10 pixels to a meter by default)
  startPoint = physics.screenToWorld(startPoint);

  // circle parameters are center x,y and radius
  droid = physics.createCircle(width/2, -100, ballSize/2);

  // sets up the collision callbacks
  detector = new CollisionDetector (physics, this);

  maxim = new Maxim(this);
  droidSound = maxim.loadFile("droid.wav");
  wallSound = maxim.loadFile("wall.wav");

  droidSound.setLooping(false);
  droidSound.volume(1.0);
  wallSound.setLooping(false);
  wallSound.volume(1.0);
  // now an array of crate sounds
  crateSounds = new AudioPlayer[crates.length];
  for (int i=0;i<crateSounds.length;i++) {
    crateSounds[i] = maxim.loadFile("crate2.wav");
    crateSounds[i].setLooping(false);
    crateSounds[i].volume(1);
  }
}

void draw() {



  image(tip, width/2, height/2, width, height);



  fill(255);
  text("Score: " + score, 20, 20);
}


void mousePressed() {
  if (!userHasTriggeredAudio) {
    droidSound.play();
    wallSound.play();
    for (int i=0;i<crates.length;i++) {
      crateSounds[i].play();
    }
    userHasTriggeredAudio = true;
  }
}

void mouseDragged()
{
  // tie the droid to the mouse while we are dragging
  dragging = true;
  droid.setPosition(physics.screenToWorld(new Vec2(mouseX, mouseY)));
}

// when we release the mouse, apply an impulse based 
// on the distance from the droid to the catapult
void mouseReleased()
{
  dragging = false;
  Vec2 impulse = new Vec2();
  impulse.set(startPoint);
  impulse = impulse.sub(droid.getWorldCenter());
  impulse = impulse.mul(50);
  droid.applyImpulse(impulse, droid.getWorldCenter());
}

// this function renders the physics scene.
// this can either be called automatically from the physics
// engine if we enable it as a custom renderer or 
// we can call it from draw
void myCustomRenderer(World world) {
  stroke(0);

  Vec2 screenStartPoint = physics.worldToScreen(startPoint);
  strokeWeight(8);
  line(screenStartPoint.x, screenStartPoint.y, screenStartPoint.x, height);

  // get the droids position and rotation from
  // the physics engine and then apply a translate 
  // and rotate to the image using those values
  // (then do the same for the crates)
  Vec2 screenDroidPos = physics.worldToScreen(droid.getWorldCenter());
  float droidAngle = physics.getAngle(droid);
  pushMatrix();
  translate(screenDroidPos.x, screenDroidPos.y);
  rotate(-radians(droidAngle));
  image(ballImage, 0, 0, ballSize, ballSize);
  popMatrix();


  for (int i = 0; i < crates.length; i++)
  {
    Vec2 worldCenter = crates[i].getWorldCenter();
    Vec2 cratePos = physics.worldToScreen(worldCenter);
    float crateAngle = physics.getAngle(crates[i]);
    pushMatrix();
    translate(cratePos.x, cratePos.y);
    rotate(-crateAngle);
    image(crateImage, 0, 0, crateSize, crateSize);
    popMatrix();
  }

  if (dragging)
  {
    strokeWeight(2);
    line(screenDroidPos.x, screenDroidPos.y, screenStartPoint.x, screenStartPoint.y);
  }
}

// This method gets called automatically when 
// there is a collision
void collision(Body b1, Body b2, float impulse)
{
  if ((b1 == droid && b2.getMass() > 0)
    || (b2 == droid && b1.getMass() > 0))
  {
    if (impulse > 1.0)
    {
      score += 1;
    }
  }

  // test for droid
  if (b1.getMass() == 0 || b2.getMass() == 0) {// b1 or b2 are walls
    // wall sound
    //println("wall "+(impulse / 1000));
    wallSound.cue(0);
    wallSound.speed(impulse / 1000);// 
    wallSound.play();
  }
  if (b1 == droid || b2 == droid) { // b1 or b2 are the droid
    // droid sound
    //println("droid");
    droidSound.cue(0);
    droidSound.speed(impulse / 7000);
    droidSound.play();
  }
  for (int i=0;i<crates.length;i++) {
    if (b1 == crates[i] || b2 == crates[i]) {// its a crate
      crateSounds[i].cue(0);
      crateSounds[i].speed(0.25 + (impulse / 250));// 10000 as the crates move slower??
      crateSounds[i].play();
    }
  }
  //
}



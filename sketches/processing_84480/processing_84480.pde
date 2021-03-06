
// Wander
// Daniel Shiffman <http://www.shiffman.net>
// The Nature of Code

// The "Boid" class (for wandering)

class Boid {

  PVector loc,loc0;
  PVector vel;
  PVector acc;
  float r;
  float wandertheta;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed
  //color col=color(int(random(200)),int(random(200)),int(random(200)));

  Boid(PVector l, float ms, float mf) {
    acc = new PVector(0,0);
    vel = new PVector(0,0);
    loc = l.get();
    loc0=l.get();
    r = 15.0;
    wandertheta =3+ random(6);;
    maxspeed = ms;
    maxforce = 10+int(random(10));//mf;
  }
  
  void run() {
    update();
   borders();
    render();
  }
  
  // Method to update location
  void update() {
    // Update velocity
    vel.add(acc);
    // Limit speed
    vel.limit(maxspeed);
    loc0.x=loc.x;
    loc0.y=loc.y;
    loc.add(vel);
    // Reset accelertion to 0 each cycle
    acc.mult(0);
  }

  void seek(PVector target) {
    acc.add(steer(target,false));
  }
 
  void arrive(PVector target) {
    acc.add(steer(target,true));
  }
  
  void wander() {
    float wanderR = 16.0f;         // Radius for our "wander circle"
    float wanderD = 60.0f;         // Distance for our "wander circle"
    float change = 0.25f;
    wandertheta += random(-change,change);     // Randomly change wander theta

    // Now we have to calculate the new location to steer towards on the wander circle
    PVector circleloc = vel.get();  // Start with velocity
    circleloc.normalize();            // Normalize to get heading
    circleloc.mult(wanderD);          // Multiply by distance
    circleloc.add(loc);               // Make it relative to boid's location
    
    PVector circleOffSet = new PVector(wanderR*cos(wandertheta),wanderR*sin(wandertheta));
    PVector target = PVector.add(circleloc,circleOffSet);
    acc.add(steer(target,false));  // Steer towards it
    
    
  }  
  
  // A method that calculates a steering vector towards a target
  // Takes a second argument, if true, it slows down as it approaches the target
  PVector steer(PVector target, boolean slowdown) {
    PVector steer;  // The steering vector
    PVector desired = PVector.sub(target,loc);  // A vector pointing from the location to the target
    float d = desired.mag(); // Distance from the target is the magnitude of the vector
    // If the distance is greater than 0, calc steering (otherwise return zero vector)
    if (d > 0) {
      // Normalize desired
      desired.normalize();
      // Two options for desired vector magnitude (1 -- based on distance, 2 -- maxspeed)
      if ((slowdown) && (d < 100.0f)) desired.mult(maxspeed*(d/100.0f)); // This damping is somewhat arbitrary
      else desired.mult(maxspeed);
      // Steering = Desired minus Velocity
      steer = PVector.sub(desired,vel);
      steer.limit(maxforce);  // Limit to maximum steering force
    } else {
      steer = new PVector(0,0);
    }
    return steer;
  }
  
  void render() {
    // Draw a triangle rotated in the direction of velocity
    float theta = vel.heading2D() + radians(90);
    //stroke(col*int(useColor));
    stroke(int(useColor)*pic.pixels[constrain(int(loc.x)+int(loc.y)*800,0,639999)],100);
    line(loc0.x,loc0.y,loc.x,loc.y);
   //point(loc.x,loc.y);
  }
  
  // Wraparound
  void borders() {
    if (loc.x < -r) loc0.x=loc.x = width+r;
    if (loc.y < -r) loc0.y=loc.y = height+r;
    if (loc.x > width+r) loc0.x=loc.x = -r;
    if (loc.y > height+r) loc0.y=loc.y = -r;
  }

}

//
//// A method just to draw the circle associated with wandering
//void drawWanderStuff(PVector loc, PVector circle, PVector target, float rad) {
//  stroke(0); 
//  noFill();
//  ellipseMode(CENTER);
//  ellipse(circle.x,circle.y,rad*2,rad*2);
//  ellipse(target.x,target.y,4,4);
//  line(loc.x,loc.y,circle.x,circle.y);
//  line(circle.x,circle.y,target.x,target.y);
//}


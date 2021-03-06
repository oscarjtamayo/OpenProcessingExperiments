

class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  float r;
  float timer;
  float maxspeed;

  // Another constructor (the one we are using here)
  Particle(PVector l) {
    acc = new PVector(0,0);
    vel = new PVector(random(-1,1),random(-1,1));
    loc = l.get();
    r = 10.0;
    timer = 180.0;
    maxspeed = 2;
    
  }


  void run() {
    noStroke();
    update();
    render();
  }

  // Method to update location
  void update() {
    vel.add(acc);
    vel.limit(maxspeed);
    loc.add(vel);
    acc.mult(0);
    timer -= 0.5;
    if (loc.x <0) {
      vel.x = vel.x * -1;
    }
    
    if (loc.x >width) {
      vel.x = vel.x * -1;
    }
    
        
    if (loc.y <= 0) {
      vel.y = vel.y * -1;
    }
  }
  
   void applyForce(PVector force) {
    float mass = 1; // We aren't bothering with mass here
    force.div(mass);
    acc.add(force);
  }


  // Method to display
  void render() {
    ellipseMode(CENTER);
    //stroke(0,timer);
    
    fill(0,timer);
    r += (20-r) * 0.01;
    ellipse(loc.x,loc.y,r,r);
  }
  
  // Is the particle still useful?
  boolean dead() {
    if (timer <= 0.0) {
      return true;
    } else {
      return false;
    }
  }
}




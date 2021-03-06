
// Diffusion-limited aggregation.

// Left-click to add a seed.
// Right-click to reset.

// I want this to look more lightning-like. I don't know how I accomplished this
// in my old Python version.

// This version still has an unfixed bug.
// Run it, and put a seed near the center of the screen, but away from it
// a bit (say, 2/5 of the way across the screen and 2/5 of the way down).
// It will grow and then as soon as it hits the center the growth will
// explode at a much faster rate there. This isn't right.


// Just fixed a large, stupid bug. I feel quite like a dumbass
// after how much hair I pulled out trying to find it yesterday.

// This is the speed at which color changes. At 0.1, hue repeats
// after 1000 frames (it's inversely proportional)
final float colorRate = 0.1;
// This is the size of a point in pixels as far as the collision
// detection and quadtrees care.
// Note that this is NOT the visible point size.
final static float dotSize = 1;
// Increasing this number increases the number of unnecessary
// collision tests, and decreases the number of quadtree divisions;
// decreasing does the opposite.
// Changing it will only affect performance.
final static int binSize = 2;

Box b;
FuzzyBin q;
DLA dla1;
int frame = 0;

void setup() {
  size(500, 500);
  frameRate(30);
  background(0);
  // AA isn't really necessary when all graphics are placed with point(...):
  //smooth();
  initialize();
  colorMode(HSB, 100);
}

// Initialize objects
void initialize() {
  b = new Box(1, 1, width, height);
  q = new FuzzyBin(b, dotSize);
  dla1 = new DLA(q, binSize);
  // These are the seed points the view begins with.
  // dla1.addPoint(width/2, height/2);
}

void draw() {
  stroke(255);
  // Increasing iterations might make for faster
  // computation, but it'll make for jerkier updates.
  final int iterations = 100;
  int hue = (int)(frame*colorRate) % 100;
  stroke(hue, 100, 100);
  for(int i = 0; i < iterations; ++i) {
    float[] fired = dla1.shootRandomRay();
    if (fired != null) {
      point(fired[0], fired[1]);
    }
  }
  ++frame;
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    // Right click: Reset
    background(0);
    initialize();
  } else if (mouseButton == LEFT) {
    // Left click: Add new seeds
    point(mouseX, mouseY);
    dla1.addPoint(mouseX, mouseY);
  }
}

class Box {
  float Xl, Yl;
  float Xh, Yh;
  final static float zero = 1e-20;
  Box(float X_1, float Y_1, float X_2, float Y_2) {
    // Orient so (Xl,Yl) and (Xh,Yh) are min/max extent, respectively
    Xl = min(X_1, X_2);
    Xh = max(X_1, X_2);
    Yl = min(Y_1, Y_2);
    Yh = max(Y_1, Y_2);
  }
  
  boolean pointInside(float x, float y) {
    return x > Xl && x < Xh && y > Yl && y < Yh;
  }
  
  // Compute the intersection of the given ray (where x=R0x+Rdx*t and
  //   y=R0y+Rdy*t) with this box; return two t values, Tnear and Tfar,
  //   which give the entry and exit values of t (> 0)
  float[] intersectRay(float R0x, float R0y, float Rdx, float Rdy) {
    float Tnear = -1e30;
    float Tfar = 1e30;
    
    // First, check slab in X.
    if (abs(Rdx) < zero) {
      // Ray is parallel to X, but starts outside. Fail.
      if (R0x < Xl || R0x > Xh) {
        return null;
      }
    } else {
      float Ta = (Xl-R0x)/Rdx, Tb = (Xh-R0x)/Rdx;
      float T1 = min(Ta,Tb);
      float T2 = max(Ta,Tb);
      if (T1 > Tnear) Tnear = T1;
      if (T2 < Tfar) Tfar = T2;
      if (Tnear > Tfar) return null;
      if (Tfar < 0) return null;
    }
    
    // Then check slab in Y.
    if (abs(Rdy) < zero) {
      // Ray is parallel to X, but starts outside. Fail.
      if (R0y < Yl || R0y > Yh) {
        return null;
      }
    } else {
      float Ta = (Yl-R0y)/Rdy, Tb = (Yh-R0y)/Rdy;
      float T1 = min(Ta,Tb);
      float T2 = max(Ta,Tb);
      if (T1 > Tnear) Tnear = T1;
      if (T2 < Tfar) Tfar = T2;
      if (Tnear > Tfar) return null;
      if (Tfar < 0) return null;
    }
    
    // If we have survived this far, the test passed.
    return new float[] {Tnear, Tfar};
  }
  
  // Divide this box down into 4 quadrants
  Box[] quarter() {
    return quarter(0);
  }
  
  // d = boundary "fuzziness" size
  Box[] quarter(float d) {
    float Xm = 0.5*(Xl+Xh);
    float Ym = 0.5*(Yl+Yh);
    Box[] quads = new Box[4];
    quads[0] = new Box(Xm-d, Yh, Xh, Ym-d);
    quads[1] = new Box(Xl, Yh, Xm+d, Ym-d);
    quads[2] = new Box(Xl, Yl, Xm+d, Ym+d);
    quads[3] = new Box(Xm-d, Ym+d, Xh, Yl);
    return quads;
  }
  
  void drawMe() {
    rect(Xl, Yl, Xh-Xl, Yh-Yl);
  }
}


// QuadTree class. Subdivide it at will.
class QuadTree {
  Box b;
  QuadTree[] children;
  int level;
  static final int maxLevel = 8;
  
  QuadTree(Box b) {
    this.b = b;
    children = null;
    level = 0;
  }

  QuadTree(Box b, int level) {
    this.b = b;
    children = null;
    this.level = level;
  }

  // Divide into 4 smaller quadtrees.
  // If this exceeds the recursion limit, it will just return null.
  QuadTree[] divide() {
    if (children == null && level < maxLevel) {
      children = new QuadTree[4];
      Box[] b2 = b.quarter();
      for(int i = 0; i < 4; ++i) {
        children[i] = new QuadTree(b2[i], level + 1);
      }
    }
    return children;
  }
  
  // Draw - recursively - the entire quadtree.
  void drawMe() {
    b.drawMe();
    if (children == null) return;
    for(int i = 0; i < 4; ++i) {
      //stroke(colors[i]);
      children[i].drawMe();
    }
  }
  
  boolean isDivided() {
    return children != null;
  }
  
  // Find the smallest of the child quadtrees which contains the given point.
  // If none are found, return null. This won't subdivide any further.
  QuadTree getSmallestIntersect(float x, float y) {
    if (children == null) {
      if (b.pointInside(x,y)) {
        return this;
      }
      else {
        return null;
      }
    }
    for(int i = 0; i < 4; ++i) {
      QuadTree q = children[i].getSmallestIntersect(x, y);
      if (q != null) {
        return q;
      }
    }
    return null;
  }
}

// Basically QuadTree class, but with fuzzy boundaries.
class FuzzyQuadTree extends QuadTree {
  float delta;
  
  FuzzyQuadTree(Box b, float delta) {
    super(b);
    this.delta = delta;
  }

  FuzzyQuadTree(Box b, int level, float delta) {
    super(b, level);
    this.delta = delta;
  }

  // Divide into 4 smaller quadtrees.
  // If this exceeds the recursion limit, it will just return null.
  QuadTree[] divide() {
    if (children == null && level < maxLevel) {
      children = new QuadTree[4];
      Box[] b2 = b.quarter(delta);
      for(int i = 0; i < 4; ++i) {
        children[i] = (QuadTree) new FuzzyQuadTree(b2[i], level + 1, delta);
      }
    }
    return children;
  }

}

// A FuzzyQuadTree that can contain points in each quad.
class FuzzyBin extends FuzzyQuadTree {
  ArrayList x_points = new ArrayList();
  ArrayList y_points = new ArrayList();
  
  FuzzyBin(Box b, float delta) {
    super(b, delta);
  }

  FuzzyBin(Box b, int level, float delta) {
    super(b, level, delta);
  }  
  // Add a point to this quad if it's inside, _and_ to any other child
  // quads that contain it. Return the undivided child quads which
  // contains it.
  // If this point is outside of the quad, return null.
  ArrayList addPoint(float x, float y) {
    ArrayList tips = new ArrayList();
    if (b.pointInside(x, y)) {
      x_points.add(x);
      y_points.add(y);
      // We've hit an undivided quad; we're done.
      if (children == null) {
        tips.add(this);
        return tips;
      }
      for(int i = 0; i < children.length; ++i) {
        FuzzyBin c = (FuzzyBin) children[i];
        ArrayList tips_new = c.addPoint(x, y);
        tips.addAll(tips_new);
      }
    }
    return tips;
  }
  
  int countPoints() {
    return x_points.size();
  }

  // Divide into 4 smaller quadtrees.
  // If this exceeds the recursion limit, it will just return null.
  // Any points contained are passed on.
  QuadTree[] divide() {
    if (children == null && level < maxLevel) {
      children = new QuadTree[4];
      Box[] b2 = b.quarter(delta);
      for(int i = 0; i < 4; ++i) {
        children[i] = (QuadTree) new FuzzyBin(b2[i], level + 1, delta);
        for(int j = 0; j < x_points.size(); ++j) {
          FuzzyBin f = (FuzzyBin) children[i];
          // Note that addPoint will only add it if it actually belongs.
          f.addPoint((Float)x_points.get(j), (Float)y_points.get(j));
        }
      }
    }
    return children;
  }
  
  // Return an ArrayList of undivided quads (they'll be Intersection objects)
  // which the given ray passes through and which are not empty (that is,
  // they contain some points inside that this ray could conceivably hit).
  ArrayList intersectRay(float r0x, float r0y, float rdx, float rdy) {
    ArrayList bins = new ArrayList();
    // If this quad is empty, we're done.
    if (countPoints() == 0) return bins;
    // This quad has stuff in it. Do we intersect it?
    float[] hit = b.intersectRay(r0x, r0y, rdx, rdy);
    // If we don't hit it, we're done.
    if (hit == null) return bins;
    // Does it have children we can hit?
    // (That doesn't sound right, does it.)
    if (children == null) {
      // If not, we're done _and_ we have a result.
      bins.add(new Intersection(hit[0], hit[1], this));
    }
    else {
      // Otherwise, recursively see which children this ray hits.
      for(int i = 0; i < children.length; ++i) {
        FuzzyBin f = (FuzzyBin)children[i];
        ArrayList bins_new = f.intersectRay(r0x, r0y, rdx, rdy);
        bins.addAll(bins_new);
      }
    }
    return bins;
  }
  // This function could be made much more clever be looking at the actual
  // entry and exit points (which Box.intersectRay returns) since there are
  // a lot of cases where it's obvious that it is impossible for an intersection
  // to occur, but I don't feel like applying this.
}

class DLA {
  FuzzyBin bin;
  int binSize;
  // Constants for:
  // - the center point of the circle from which rays originate
  // - the radius of that circle
  final float cx;
  final float cy;
  final float rad;
  // The furthest radius away from the center that a circle has reached
  float furthestRadius;

  DLA(FuzzyBin bin) {
    this.bin = bin;
    binSize = 10;
    // The ray should originate from along a circle with the same center as
    // the box used for the quadtree, with a radius set, say, 2 times as
    // large as the diagonal.
    cx = (bin.b.Xl + bin.b.Xh)/2;
    cy = (bin.b.Yl + bin.b.Yh)/2;
    rad = sqrt(pow((bin.b.Xl - bin.b.Xh),2) + pow((bin.b.Yl - bin.b.Yh),2));
    furthestRadius = 2*dotSize;
  }
  
  DLA(FuzzyBin bin, int binSize) {
    this.bin = bin;
    binSize = binSize;
    // The ray should originate from along a circle with the same center as
    // the box used for the quadtree, with a radius set, say, 2 times as
    // large as the diagonal.
    cx = (bin.b.Xl + bin.b.Xh)/2;
    cy = (bin.b.Yl + bin.b.Yh)/2;
    rad = 2*sqrt(pow((bin.b.Xl - bin.b.Xh),2) + pow((bin.b.Yl - bin.b.Yh),2));
    furthestRadius = 2*dotSize;
  }
  
  void setParams() {
  }
  
  void addPoint(float x, float y) {
    // Three things happen here:
    // (1) We add the point to the bin.
    // (2) We make sure that every undivided quad contains at most
    // binSize points inside (i.e. we divide some if needed).
    // (3) Make sure furthestRadius is updated in case the point
    // was placed further out than any others.
    ArrayList f = bin.addPoint(x, y);
    for(int i = 0; i < f.size(); ++i) {
      FuzzyBin bin = (FuzzyBin) f.get(i);
      // Bin has too many elements in it, so split it.
      // If we still have too many, it doesn't really matter,
      // it will just get split in another iteration or something.
      if (bin.countPoints() > binSize) {
        bin.divide();
        // Show squares as they're added:
        // bin.drawMe();
      }
    }
    float newRad = sqrt((x-cx)*(x-cx) * (y-cy)*(y-cy));
    furthestRadius = max(newRad, furthestRadius);
  }
  
  void drawMe() {
    for(int i = 0; i < bin.x_points.size(); ++i) {
      float x = (Float)bin.x_points.get(i);
      float y = (Float)bin.y_points.get(i);
      ellipse(x, y, dotSize, dotSize);
    }
  }
  
  void drawMe_point() {
    for(int i = 0; i < bin.x_points.size(); ++i) {
      float x = (Float)bin.x_points.get(i);
      float y = (Float)bin.y_points.get(i);
      point(x, y);
    }
  }
  
  // return the smallest positive t value at which the ray is 2*delta away from
  // the point (dx,dy); return -1 if no valid t exists (valid t will never be negative)
  float collisionDetect(float dx, float dy, float r0x, float r0y, float rdx, float rdy) {
    float delta = dotSize;
    // The derivation of this formula comes from: (2*delta)^2 = (dx-sx)^2+(dy-sy)^2
    // where sx = r0y + rdx*t, sy = r0y + rdy*t
    // The goal is to find the point at which (sx,sy) is distance 2*delta from (dx,dy)
    // This eventually turns into a quadratic, a*t^2 + b*t + c = 0
    float a = rdx*rdx + rdy*rdy;
    float b = 2*(rdx*(r0x-dx) + rdy*(r0y-dy));
    // This delta*delta should be 4*delta*delta, but for some reason it only works
    // properly this way. I likely made a mistake somewhere.
    float c = (dx-r0x)*(dx-r0x) + (dy-r0y)*(dy-r0y) - delta*delta;
    float discrim = b*b - 4*a*c;
    // Negative discriminant => no solution
    if (discrim < 0) return -2;
    float t1 = (-b + sqrt(discrim)) / (2*a);
    float t2 = (-b - sqrt(discrim)) / (2*a);

    float t_min = min(t1,t2);
    float t_max = max(t1,t2);
    // Negative t values are invalid answers here
    if (t_min > 0) return t_min;
    else if (t_max > 0) return t_max;
    else return -1;
  }

  float[] generateRay() {
    float originAngle = random(0,2*PI);
    float r0x = cx + rad * cos(originAngle);
    float r0y = cy + rad * sin(originAngle);
    // Now pick a direction to fire at.
    // If we aim inside a bounded radius, we increase our
    // chances of actually hitting something by a lot.
    float beta = atan(2*rad / (furthestRadius + 2*dotSize));
    float th1 = 3*PI/2 + originAngle - beta;
    float th2 = PI/2 + originAngle + beta;
    //float pointAngle = random(th1, th2);
    float pointAngle = PI + originAngle;
    float rdx = 20*cos(pointAngle);
    float rdy = 20*sin(pointAngle);

    return new float[] {r0x, r0y, rdx, rdy};
  }  

  
  float[] shootRay(float r0x, float r0y, float rdx, float rdy) {
    float [] result = null;

    //print("Ray: " + r0x + " " + r0y + " " + rdx + " " + rdy + "\n");
    
    float[] edges = bin.b.intersectRay(r0x, r0y, rdx, rdy);
    if (edges == null) return null;
    float Tnear = edges[0];
    float Tfar = edges[1];
    float x0 = r0x + Tnear*rdx;
    float y0 = r0y + Tnear*rdy;
    float x1 = r0x + Tfar*rdx;
    float y1 = r0y + Tfar*rdy;
    //line(x0,y0,x1,y1);
    ArrayList a = q.intersectRay(r0x, r0y, rdx, rdy);
    // intersectRay returns a list of Intersection objects, and we
    // need to sort these by Tnear to test them in a sensible order;
    // it would be pointless to do a collision check on all of them
    // and then sort.
    Collections.sort(a, new IntersectionComparator());
    boolean done = false;
    //print("got intersections (" + a.size() + " candidates)...\n");
    float t = -1;
    for(int i = 0; i < a.size() && !done; ++i) {
      Intersection isect = (Intersection) a.get(i);
      FuzzyBin f = isect.bin;
      // Do a collision check on every point inside this region of the
      // quadtree, and pick the closest hit.
      for(int j = 0; j < f.countPoints(); ++j) {
        float dx = (Float)f.x_points.get(j);
        float dy = (Float)f.y_points.get(j);
        float t2 = dla1.collisionDetect(dx, dy, r0x, r0y, rdx, rdy);
        //print("Hitting (" + dx + ", " + dy + "): t=" + t2 + "\n");
        if (t2 > 0 && (t < 0 || t2 < t)) t = t2;
      }
      // We have a hit, so add it to our structure.
      if (t > 0) {
        float hit_x = r0x + rdx*t;
        float hit_y = r0y + rdy*t;
        result = new float[2];
        result[0] = hit_x;
        result[1] = hit_y;
        //print("Hitting, sticking at (" + hit_x + ", " + hit_y + ")\n");
        addPoint(hit_x, hit_y);
        //ellipse(hit_x, hit_y, dotSize, dotSize);
        done = true;
        break;
      }
    }
    
    return result;

  }

  float[] shootRandomRay() {
    float[] r = generateRay();
    float[] fired = shootRay(r[0], r[1], r[2], r[3]);
    return fired;
  }
}

class Intersection {
  float Tnear;
  float Tfar;
  FuzzyBin bin;
  Intersection(float near, float far, FuzzyBin b) {
    Tnear = near;
    Tfar = far;
    bin = b;
  }
}

class IntersectionComparator implements Comparator {
  public int compare(Object i1, Object i2){
    Float f1 = (Float) ((Intersection)i1).Tnear;
    Float f2 = (Float) ((Intersection)i2).Tnear;
    return f1.compareTo(f2);
  }
}



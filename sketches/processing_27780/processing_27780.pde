
int tam=200;
float tu=1,dista_max=7,radio=10;
particula[] p = new particula[tam];
void setup()
{
  size(900,450);
  for(int i=0;i<tam;i++)
    p[i] = new particula(random(width),random(height),random(-3,3),random(-3,3),radio,p,color(random(255),random(255),random(255)),i);
  dista_max*=p[0].r;
}
void draw()
{
  background(0);
  if(mousePressed)
    {
      for(int i=0;i<tam;i++)
      {
        PVector d = new PVector(p[i].pos[0],p[i].pos[1]);
        d.x-=mouseX+random(-10,10);
        d.y-=mouseY+random(-50,50);
       if(d.mag()<100)
       {
          float tu=d.mag();
          tu*=0.01;
          float angulo = atan2(p[i].pos[1]-mouseY,p[i].pos[0]-mouseX);
          p[i].vel[0]+=cos(angulo)*tu;
          p[i].vel[1]+=sin(angulo)*tu;
       }
      }
    }
  for(int i=0;i<tam;i++)
  {
    p[i].pared();
    p[i].mover();
    p[i].pintar();
    p[i].colision();
    p[i].pintar();
  }
}
class particula
{
  float[] pos = new float[2],vel = new float[2];
  float r;
  particula[] o;
  int id,grupo;
  color col;
  particula(float px,float py,float vx,float vy,float r_,particula[] o_,color c,int id_)
  {
    pos[0]=px;
    pos[1]=py;
    vel[0]=vx;
    vel[1]=vy;
    r=r_;
    o=o_;
    col=c;
    id=id_;
  }
  void mover()
  {
    pos[0]+=vel[0];
    pos[1]+=vel[1];
  }
  void pared()
  {
    if(pos[0]-r<0)
    {
      vel[0]*=-1;
      pos[0]=r;
    }
    if(pos[0]+r>width)
    {
      vel[0]*=-1;
      pos[0]=width-r;
    }
    if(pos[1]-r<0)
    {
      vel[1]*=-1;
      pos[1]=r;
    }
    if(pos[1]+r>height)
    {
      vel[1]*=-1;
      pos[1]=height-r;
    }
  }
  void pintar()
  {
    //stroke(col);
    fill(col);
    ellipse(pos[0],pos[1],r*2,r*2);
  }
  void colision()
  {
    for(int i=id+1;i<o.length;i++)
    {
      float dx = o[i].pos[0]-pos[0];
      float dy = o[i].pos[1]-pos[1];
      float dis = sqrt(dx*dx + dy*dy);
      float angulo = atan2(dy,dx);
      float angulo1 = atan2(-dy,-dx);
      float e = map(dis,2*r,dista_max,1,180);
      //bezier(pos[0]+r*cos(angulo+PI/e+PI/4),pos[1]+r*sin(angulo+PI/e+PI/4),pos[0]+r*cos(angulo+PI/e),pos[1]+r*sin(angulo+PI/e),o[i].pos[0]+o[i].r*cos(angulo1-PI/e),o[i].pos[1]+o[i].r*sin(angulo1-PI/e),o[i].pos[0]+o[i].r*cos(angulo1-PI/e-PI/4),o[i].pos[1]+o[i].r*sin(angulo1-PI/e-PI/4));
      //bezier(pos[0]+r*cos(angulo-PI/e-PI/4),pos[1]+r*sin(angulo-PI/e-PI/4),pos[0]+r*cos(angulo-PI/e),pos[1]+r*sin(angulo-PI/e),o[i].pos[0]+o[i].r*cos(angulo1+PI/e+PI/4),o[i].pos[1]+o[i].r*sin(angulo1+PI/e),o[i].pos[0]+o[i].r*cos(angulo1+PI/e+PI/4),o[i].pos[1]+o[i].r*sin(angulo1+PI/e+PI/4));

      if(dis<r+o[i].r)
      {
        fill(int((red(col)+red(o[i].col))/2),int((green(col)+green(o[i].col))/2),int((blue(col)+blue(o[i].col))/2));
        vel[0]-=cos(angulo)*tu;
        vel[1]-=sin(angulo)*tu;
        o[i].vel[0]+=cos(angulo)*tu;
        o[i].vel[1]+=sin(angulo)*tu;
        pos[0]-=(r*2-dis)*cos(angulo);
        pos[1]-=(r*2-dis)*sin(angulo);
        beginShape();
        vertex(pos[0]+r*cos(angulo-PI/4),pos[1]+r*sin(angulo-PI/4));
        vertex(pos[0]+r*cos(angulo+PI/4),pos[1]+r*sin(angulo+PI/4));
        vertex(o[i].pos[0]+o[i].r*cos(angulo+PI/4),o[i].pos[1]+o[i].r*sin(angulo+PI/4));
        vertex(o[i].pos[0]+o[i].r*cos(angulo-PI/4),o[i].pos[1]+o[i].r*sin(angulo-PI/4));
        vertex(pos[0]+r*cos(angulo-PI/4),pos[1]+r*sin(angulo-PI/4));
        endShape();
      }
      else
      {
        if(dis<dista_max)
        {
        fill(int((red(col)+red(o[i].col))/2),int((green(col)+green(o[i].col))/2),int((blue(col)+blue(o[i].col))/2));
        beginShape();
        vertex(pos[0]+r*cos(angulo+PI/e+PI/4),pos[1]+r*sin(angulo+PI/e+PI/4));
        bezierVertex(pos[0]+r*cos(angulo+PI/e),pos[1]+r*sin(angulo+PI/e),o[i].pos[0]+o[i].r*cos(angulo1-PI/e),o[i].pos[1]+o[i].r*sin(angulo1-PI/e),o[i].pos[0]+o[i].r*cos(angulo1-PI/e-PI/4),o[i].pos[1]+o[i].r*sin(angulo1-PI/e-PI/4));
        vertex(o[i].pos[0]+o[i].r*cos(angulo1+PI/e+PI/4),o[i].pos[1]+o[i].r*sin(angulo1+PI/e+PI/4));
        bezierVertex(o[i].pos[0]+o[i].r*cos(angulo1+PI/e),o[i].pos[1]+o[i].r*sin(angulo1+PI/e),pos[0]+r*cos(angulo-PI/e),pos[1]+r*sin(angulo-PI/e),pos[0]+r*cos(angulo-PI/e-PI/4),pos[1]+r*sin(angulo-PI/e-PI/4));
        vertex(pos[0]+r*cos(angulo+PI/e+PI/4),pos[1]+r*sin(angulo+PI/e+PI/4));
        endShape();
        }
      }
    }
  }
}


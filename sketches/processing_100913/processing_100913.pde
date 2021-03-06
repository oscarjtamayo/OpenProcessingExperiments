
int wscreen=1024;
int hscreen=768;
int gs=10; 
 
// use video
import processing.video.*;
Capture video;
PFont font;
color[] vline;
MovieMaker movie;
 
// grid parameters
int as=gs*2;  
int gw=wscreen/gs;
int gh=hscreen/gs;
int gs2=gs/2;
 
// regression vectors
float[] fx, fy, ft;
int fm=3*9; 
 
// regularization term for regression
float fc=pow(10,8);
 
// smoothing parameters
float wflow=0.1; // smaller value for longer smoothing
 
// switch
boolean flagseg=false; // segmentation of moving objects?
boolean flagball=true; // playing ball game?
boolean flagmirror=true; // mirroring image?
boolean flagflow=true; // draw opticalflow vectors?
boolean flagsound=true; // sound effect?
boolean flagimage=true; // show video image ?
boolean flagmovie=false; // saving movie?
 
// internally used variables
float ar,ag,ab; // used as return value of pixave
float[] dtr, dtg, dtb; // differentiation by t (red,gree,blue)
float[] dxr, dxg, dxb; // differentiation by x (red,gree,blue)
float[] dyr, dyg, dyb; // differentiation by y (red,gree,blue)
float[] par, pag, pab; // averaged grid values (red,gree,blue)
float[] flowx, flowy; // computed optical flow
float[] sflowx, sflowy; // slowly changing version of the flow
int clockNow,clockPrev, clockDiff; // for timing check
 
// playing ball parameters
float ballpx=wscreen*0.5; // position x
float ballpy=hscreen*0.5; // position y
float ballvx=0.0; // velocity x
float ballvy=0.0; // velocity y
float ballgy=0.05; // gravitation
float ballsz=30.0; // size
float ballsz2=ballsz/2;
float ballfv=0.8; // rebound factor
float ballhv=50.0; // hit factor
float ballvmax=10.0; // max velocity (pixel/frame)
 
void setup(){
  // screen and video
  size(wscreen, hscreen, P2D); 
  video = new Capture(this, wscreen, hscreen);
  // font
  font=createFont("Verdana",10);
  textFont(font);
  // draw
  rectMode(CENTER);
  ellipseMode(CENTER);

 
  // arrays
  par = new float[gw*gh];
  pag = new float[gw*gh];
  pab = new float[gw*gh];
  dtr = new float[gw*gh];
  dtg = new float[gw*gh];
  dtb = new float[gw*gh];
  dxr = new float[gw*gh];
  dxg = new float[gw*gh];
  dxb = new float[gw*gh];
  dyr = new float[gw*gh];
  dyg = new float[gw*gh];
  dyb = new float[gw*gh];
  flowx = new float[gw*gh];
  flowy = new float[gw*gh];
  sflowx = new float[gw*gh];
  sflowy = new float[gw*gh];
  fx = new float[fm];
  fy = new float[fm];
  ft = new float[fm];
  vline = new color[wscreen];
}
 
 
// calculate average pixel value (r,g,b) for rectangle region
void pixave(int x1, int y1, int x2, int y2) {
  float sumr,sumg,sumb;
  color pix;
  int r,g,b;
  int n;
 
  if(x1<0) x1=0;
  if(x2>=wscreen) x2=wscreen-1;
  if(y1<0) y1=0;
  if(y2>=hscreen) y2=hscreen-1;
 
  sumr=sumg=sumb=0.0;
  for(int y=y1; y<=y2; y++) {
    for(int i=wscreen*y+x1; i<=wscreen*y+x2; i++) {
      pix=video.pixels[i];
      b=pix & 0xFF; // blue
      pix = pix >> 8;
      g=pix & 0xFF; // green
      pix = pix >> 8;
      r=pix & 0xFF; // red
      // averaging the values
      sumr += r;
      sumg += g;
      sumb += b;
    }
  }
  n = (x2-x1+1)*(y2-y1+1); // number of pixels
  // the results are stored in static variables
  ar = sumr/n;
  ag=sumg/n;
  ab=sumb/n;
}
 
// extract values from 9 neighbour grids
void getnext9(float x[], float y[], int i, int j) {
  y[j+0] = x[i+0];
  y[j+1] = x[i-1];
  y[j+2] = x[i+1];
  y[j+3] = x[i-gw];
  y[j+4] = x[i+gw];
  y[j+5] = x[i-gw-1];
  y[j+6] = x[i-gw+1];
  y[j+7] = x[i+gw-1];
  y[j+8] = x[i+gw+1];
}
 
// solve optical flow by least squares (regression analysis)
void solveflow(int ig) {
  float xx, xy, yy, xt, yt;
  float a,u,v,w;
 
  // prepare covariances
  xx=xy=yy=xt=yt=0.0;
  for(int i=0;i<fm;i++) {
    xx += fx[i]*fx[i];
    xy += fx[i]*fy[i];
    yy += fy[i]*fy[i];
    xt += fx[i]*ft[i];
    yt += fy[i]*ft[i];
  }
 
  // least squares computation
  a = xx*yy - xy*xy + fc; // fc is for stable computation
  u = yy*xt - xy*yt; // x direction
  v = xx*yt - xy*xt; // y direction
 
  // write back
  flowx[ig] = -2*gs*u/a; // optical flow x (pixel per frame)
  flowy[ig] = -2*gs*v/a; // optical flow y (pixel per frame)
}
 
void draw() {
  if(video.available()){
    // video capture
    video.read();
 
    // mirror
    if(flagmirror) {
      for(int y=0;y<hscreen;y++) {
        int ig=y*wscreen;
        for(int x=0; x<wscreen; x++)
          vline[x] = video.pixels[ig+x];
        for(int x=0; x<wscreen; x++)
          video.pixels[ig+x]=vline[wscreen-1-x];
      }
    }
 
    // draw image
    if(flagimage) set(0,0,video);
    else background(0);
 
    // 1st sweep : differentiation by time
    for(int ix=0;ix<gw;ix++) {
      int x0=ix*gs+gs2;
      for(int iy=0;iy<gh;iy++) {
        int y0=iy*gs+gs2;
        int ig=iy*gw+ix;
        // compute average pixel at (x0,y0)
        pixave(x0-as,y0-as,x0+as,y0+as);
        // compute time difference
        dtr[ig] = ar-par[ig]; // red
        dtg[ig] = ag-pag[ig]; // green
        dtb[ig] = ab-pab[ig]; // blue
        // save the pixel
        par[ig]=ar;
        pag[ig]=ag;
        pab[ig]=ab;
      }
    }
 
    // 2nd sweep : differentiations by x and y
    for(int ix=1;ix<gw-1;ix++) {
      for(int iy=1;iy<gh-1;iy++) {
        int ig=iy*gw+ix;
        // compute x difference
        dxr[ig] = par[ig+1]-par[ig-1]; // red
        dxg[ig] = pag[ig+1]-pag[ig-1]; // green
        dxb[ig] = pab[ig+1]-pab[ig-1]; // blue
        // compute y difference
        dyr[ig] = par[ig+gw]-par[ig-gw]; // red
        dyg[ig] = pag[ig+gw]-pag[ig-gw]; // green
        dyb[ig] = pab[ig+gw]-pab[ig-gw]; // blue
      }
    }
 
    // 3rd sweep : solving optical flow
    for(int ix=1;ix<gw-1;ix++) {
      int x0=ix*gs+gs2;
      for(int iy=1;iy<gh-1;iy++) {
        int y0=iy*gs+gs2;
        int ig=iy*gw+ix;
 
        // prepare vectors fx, fy, ft
        getnext9(dxr,fx,ig,0); // dx red
        getnext9(dxg,fx,ig,9); // dx green
        getnext9(dxb,fx,ig,18);// dx blue
        getnext9(dyr,fy,ig,0); // dy red
        getnext9(dyg,fy,ig,9); // dy green
        getnext9(dyb,fy,ig,18);// dy blue
        getnext9(dtr,ft,ig,0); // dt red
        getnext9(dtg,ft,ig,9); // dt green
        getnext9(dtb,ft,ig,18);// dt blue
 
        // solve for (flowx, flowy) such that
        // fx flowx + fy flowy + ft = 0
        solveflow(ig);
 
        // smoothing
        sflowx[ig]+=(flowx[ig]-sflowx[ig])*wflow;
        sflowy[ig]+=(flowy[ig]-sflowy[ig])*wflow;
      }
    }
 
 
  
    ///////////////////////////////////////////////////////
    // ball movement : not essential for optical flow
    if(flagball) {
      // updatating position and velocity
      ballpx += ballvx;
      ballpy += ballvy;
      ballvy += ballgy;
 
      // reflecton
      if(ballpx<ballsz2) {
        ballpx=ballsz2;
        ballvx=-ballvx*ballfv;
      }
      else if(ballpx>wscreen-ballsz2) {
        ballpx=wscreen-ballsz2;
        ballvx=-ballvx*ballfv;
      }
      if(ballpy<ballsz2) {
        ballpy=ballsz2;
        ballvy=-ballvy*ballfv;
      }
      else if(ballpy>hscreen-ballsz2) {
        ballpy=hscreen-ballsz2;
        ballvy=-ballvy*ballfv;
      }
 
      // draw the ball
      fill(50,200,200);
      stroke(0,100,100);
      ellipse(ballpx,ballpy,ballsz,ballsz);
 
      // find the grid
      int ix= round((ballpx-gs2)/gs);
      int iy= round((ballpy-gs2)/gs);
      if(ix<1) ix=1;
      else if(ix>gw-2) ix=gw-2;
      if(iy<1) iy=1;
      else if(iy>gh-2) iy=gh-2;
      int ig=iy*gw+ix;
 
      // hit the ball by your movement
      float u=sflowx[ig];
      float v=sflowy[ig];
      float a=sqrt(u*u+v*v);
      u=u/a;
      v=v/a;
      if(a>=2.0) a=2.0;
      if(a>=0.3) {
        ballvx += ballhv*a*u;
        ballvy += ballhv*a*v;
        float b=sqrt(ballvx*ballvx+ballvy*ballvy);
        if(b>ballvmax) {
          ballvx = ballvmax*ballvx/b;
          ballvy = ballvmax*ballvy/b;
        }
      }
    }
  }
}
void stopGame(){
  super.stop();
}


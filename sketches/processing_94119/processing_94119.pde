
import java.io.*;
import java.util.*;



float[] lat;
float[] lon;
float[] mag;
float[] depth;
PImage map;
int n;



void setup(){
  size(800, 400);
  background(0);
  PImage map = loadImage("earth-huge.jpg");
  map.resize(800, 400);
  image(map, 0, 0);
  String[] lines = loadStrings("eqs7day-M1.txt");
  n = lines.length;
  //println(n);
  lat = new float[n];
  lon = new float[n];
  mag = new float[n];
  depth = new float[n];
  fill(255, 0, 0);
  
  for(int i = 1; i < n; i++){
    String[] st = lines[i].split(",");
    lat[i] = float(st[6]);
    lon[i] = float(st[7]);
    mag[i] = float(st[8]);
    depth[i] = float(st[9]);
    if(abs(lon[i]) < 5)
      println(st);
    fill(30*mag[i], 255 - 30*mag[i],  0);
    ellipse((lon[i]+180)*20/9, (-lat[i]+90)*20/9, 7*log(mag[i]), 7*log(mag[i]));
    //println(lat[i]);
  }
  
}


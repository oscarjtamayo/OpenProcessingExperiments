
size(800,600);
rectMode(RADIUS);
noFill();
rect(400,300,330,260);

String lines[] = loadStrings("durhamdata.txt");
lines = subset(lines, 7);
lines = trim(lines);
float rain[] = new float[lines.length];
float Tmin[] = new float[lines.length];
float Tmax[] = new float[lines.length];
for(int i=0 ; i<lines.length ; i++)
{
  String fields[] = splitTokens(lines[i]);
  float values[] = float(fields);
  rain[i] = values[5];
  Tmin[i] = values[3];
  Tmax[i] = values[2];
}

int data_start = 500;
int data_length = 60;
float plot[] = subset(rain,data_start,data_length);
for (int i=0 ; i<plot.length ; i++)
{
  float point_x = map(i,0,plot.length,80,720);
  float Pmax = max(plot);
  float Pmin = min(plot);
  float point_y = map(plot[i],Pmin,Pmax,550,50);
  line(point_x,point_y,point_x,550);
}




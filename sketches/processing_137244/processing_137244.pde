
String lines[] = loadStrings("durhamdata.txt");
lines = subset(lines, 8);
 
float rain[] = new float[lines.length];
 
for( int i=0 ; i<lines.length ; i++)
{
  String data = trim(lines[i]);
  String field[] = splitTokens(data);
  float value[] = float(field);
  rain[i] = value[5];
}
 
int first = 26;
int points = 50;
 
float plots[] = subset(rain, first, points);
size(400,400);
background(255);
 
for(int i=0 ; i<plots.length ;i++)
{
  float x = map(i, 0,plots.length, 10,width-10);
  float y = map(plots[i], min(plots), max(plots), height-10,10);
  strokeWeight(1);
  stroke(200,45,68); 
  line(x,y,x,height-10);
}
 
 
print(rain.length);





/* @pjs preload="braviary.jpg, omanyte.jpg, flygon.png, joltik.jpg, lucario.png, venipede.jpg, butterfree.png, luxray.png, milotic.png, sylveon.png, pichu.png, Gardevoir.png"; */ 




void setup()
{
  size(500,500);
 // noLoop();
   background(255);
   
   int num = int(random( 0, 12));
   //print (num);

  
  if (num == 1.0)
  {
     

  PImage omanyte = loadImage("omanyte.jpg");
  image(omanyte, 0,0, 500,500);
  }
  
  if (num == 0.0)
  {
  PImage braviary = loadImage("braviary.jpg");
  image(braviary, 0,0, 500,500);
  }
  
  if (num == 2.0)
  {
  PImage flygon = loadImage("flygon.png");
  image(flygon, 0,0, 500,500);
  }
  
    if (num == 3.0)
  {
  PImage joltik = loadImage("joltik.jpg");
  image(joltik, 0, 0, 500,500);
  }
  
  if (num == 4.0)
  {
  PImage lucario = loadImage("lucario.png");
  image(lucario, 0,0, 500,500);
  }
  
  if (num == 5.0)
  {
  PImage venipede = loadImage("venipede.jpg");
  image(venipede, 0,0, 500,500);
  }
  
  if (num == 6.0)
  {
  PImage butterfree = loadImage("butterfree.png");
  image(butterfree, 0,0, 500,500);
  }
    if (num == 7.0)
  {
  PImage luxray = loadImage("luxray.png");
  image(luxray, 0,0, 500,500);
  }
  if (num == 8.0)
  {
  PImage milotic = loadImage("milotic.png");
  image(milotic, 0,0, 500,500);
  }
    if (num == 9.0)
  {
  PImage sylveon = loadImage("sylveon.png");
  image(sylveon, 0,0, 500,500);
  }
  
    if (num == 10.0)
  {
  PImage pichu = loadImage("pichu.png");
  image(pichu, 0,0, 500,500);
  }
    if (num == 11.0)
  {
  PImage gardevoir = loadImage("Gardevoir.png");
  image(gardevoir, 0,0, 500,500);
  }
  
  
}

void draw()
{
 
   
}



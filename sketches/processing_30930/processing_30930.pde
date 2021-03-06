
// An application to fill ellipses with points and

void setup() 
{
    size(240,600);
    smooth();
    paintBackground(100,1,88,50,50,255,240,211,211,255);
}
void draw() 
{
    noLoop();
    strokeWeight(2);
    stroke(213,224,97,100);
    for (int i=0; i<17; i++)
	{
	    int b = (int)random(200);
	    int rAdd = (int)random(50);
	    stroke(200+rAdd,224,b,100);
	    int sizeVar = (int)random(8);
	    int xPos = (int)random(width);
	    int yPos = (int)random(height);
	    circularBlur(5+sizeVar, xPos,yPos);
	}
    saveFrame("/home/simon/Photos/circularBlur9.tiff");
}

// circularBlur
void circularBlur(int radius, 
		  int xInit,
		  int yInit)
{ 
    float newRadius = 0;
    int dotsPerRow = 4;
    // step = PI/2;
    float step = PI/(float)dotsPerRow * 0.5;
    for (int i=0; i<radius; i++)
	{
	    float angle = 0;
	    while (angle < 2*PI)
		{
		    float x = cos(angle) * newRadius + xInit;
		    float y = sin(angle) * newRadius + yInit;
		    point(x,y);
		    angle += step;
		}
	    newRadius += 1;
	}


}

// Paint Background
void paintBackground(int delay,
		     int direction,
		     float r1,
		     float g1,
		     float b1,
		     float alpha1,
		     float r2, 
		     float g2,
		     float b2,
		     float alpha2)
{
    if (direction == 0) //horizontal
	{
	for (int i=0; i<width; i++)
	    {
		for (int j=0; j<delay; j++)
		    {
			stroke(r1,g1,b1,alpha1);
			point(i,j);
		    }
	    }
	
	    float rStep = (r2-r1)/(height-delay);
	    float gStep = (g2-g1)/(height-delay);
	    float bStep = (b2-b1)/(height-delay);
	    float alphaStep = (alpha2-alpha1)/(height-delay);
  
	    for (int i=0; i<width; i++)
		{
		    float r = r1;
		    float g = g1;
		    float b = b1;
		    float a = alpha1;
		    stroke(r,g,b,a);
		    for (int j=delay; j<height; j++)
			{
			    stroke(r,g,b,a);
			    point(i,j);
			    r +=rStep;
			    g += gStep;
			    b += bStep;
			    a += alphaStep;
			}
		}
	}
    else if (direction == 1)
	{
	for (int i=0; i<delay; i++)
	    {
		for (int j=0; j<height; j++)
		    {
			stroke(r1,g1,b1,alpha1);
			point(i,j);
		    }
	    }

	
	float rStep = (r2-r1)/(width-delay);
	float gStep = (g2-g1)/(width-delay);
	float bStep = (b2-b1)/(width- delay);
	float alphaStep = (alpha2-alpha1)/(width-delay);
  
	for (int i=0; i<height; i++)
		{
		    float r = r1;
		    float g = g1;
		    float b = b1;
		    float a = alpha1;
		    stroke(r,g,b,a);
		    for (int j=delay; j<width; j++)
			{
			    stroke(r,g,b,a);
			    point(j,i);
			    r +=rStep;
			    g += gStep;
			    b += bStep;
			    a += alphaStep;
			}
		}
	}

}


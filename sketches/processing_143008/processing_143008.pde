
class MidpointDisplacementMapGenerator
{
     
    int size;
    float d;
    float map[][];
     
    public MidpointDisplacementMapGenerator(int setSize, float displacement)
    {
        size = setSize;
        map = new float[size][size];
        // the value the displacement changes with each recursion
        // each recursion cuts the width in half, so a sensible value
        // may be 2. a value of 1. makes it very noisy,
        // but all values > 0 are possible
        d = displacement;
    }
     
    // set the center point and the top, left, right and lower point
    // and recurse over the 4 new squares
    void divide (x1, y1, x2, y2, dh)
    {
        var dx = x2-x1,
            dy = y2-y1,
            cx = x1+dx/2,
            cy = y1+dy/2,
            d2 = dh/2;
         
        if (dx > 1)
        {
            // generate center pt
            map[cy][cx] = (map[y1][x1] + map[y2][x2] + map[y1][x2] + map[y2][x1])/4 + Math.random() * dh - d2;
         
 
         
            // generate top, bottom, left and right pts
            if (map[y1][cx] === undefined) map[y1][cx] = (map[y1][x1] + map[y1][x2])/2 + Math.random() * dh - d2;
            if (map[y2][cx] === undefined) map[y2][cx] = (map[y2][x1] + map[y2][x2])/2 + Math.random() * dh - d2;
            if (map[cy][x1] === undefined) map[cy][x1] = (map[y1][x1] + map[y2][x1])/2 + Math.random() * dh - d2;
            if (map[cy][x2] === undefined) map[cy][x2] = (map[y1][x2] + map[y2][x2])/2 + Math.random() * dh - d2;
             
            var nh = dh/d;
 
            // recurse!
            divide(x1, y1, cx, cy, nh);
            divide(cx, y1, x2, cy, nh);
            divide(x1, cy, cx, y2, nh);
            divide(cx, cy, x2, y2, nh);
        }
    }
 
    // adjusts values to between 0 and mdiff (e.g. 0 and 255 for drawing)
    float[][] adjust(float[][] map, float mdiff)
    {
        float s = null;
        float b = null;
        float d = null;
         
        for (int y=0; y < map.length; y++)
        {
            for (int x=0; x < map[y].length; x++)
            {
                if (map[y][x] < s || s == null)
                {
                    s = map[y][x];
                }
 
                if (map[y][x] > b || b == null)
                {
                    b = map[y][x];
                }
            }
        }
         
        d = b-s;
         
        for (int y=0; y < map.length; y++)
        {
            for (int x=0; x<map[y].length; x++)
            {
                map[y][x] = (map[y][x]-s) / d * mdiff;
            }
        }
         
        return map;
    }
     
    // prepare
    float[][] generate (ceil)
    {
        for (var i=0; i<size; i++)
            map[i] = [];
         
        // preset the corner values
        map[0][0] = Math.random();
        map[0][size-1] = Math.random();
        map[size-1][0] = Math.random();
        map[size-1][size-1] = Math.random();
         
        // start
 
        divide(0, 0, size-1, size-1, 1);
 
        return adjust(map, ceil);
    }
}
 
class RiverCarver
{  
    var dmap;
    
    int xPos;
    int yPos;
     
    public RiverCarver(var map, int x, int y)
    {
        //todo : add some randomisation to that...
        xPos = Math.floor(x);
        yPos = Math.floor(y);
        dmap = map;
    }
     
    boolean step()
    {
         //make current position "river"
         stroke(0,0,255);
         point(xPos, yPos);
         
         //find next spot
        var currentElevation = dmap[xPos][yPos];
         
        var decisionmap = Array();
         
        decisionmap.push(dmap[xPos+1][yPos]); // right
        decisionmap.push(dmap[xPos+1][yPos+1]); //down right
        decisionmap.push(dmap[xPos][yPos+1]); // down
        decisionmap.push(dmap[xPos-1][yPos+1]); // down left    
        decisionmap.push(dmap[xPos-1][yPos]); // left
        decisionmap.push(dmap[xPos-1][yPos-1]); // up left
        decisionmap.push(dmap[xPos][yPos-1]); // up
        decisionmap.push(dmap[xPos+1][yPos-1]); // up right
        
        int index = 0;
        float lowestValue = decisionmap[0];
        for (var i = 1; i < decisionmap.length; i++) {
          if (decisionmap[i] < lowestValue) 
          {
            lowestValue = decisionmap[i];
            index = i;
          }
        }
        
        if(lowestValue > currentElevation || dmap[xPos][yPos] < waterlevel) //if we're stuck in a ditch or have reached sea level
        {
            return false;
        }
        
        
        
        
        switch(index)
        {
            case 0: //right
                xPos+=1;
            break;
            case 1: //down right
                xPos +=1;
                yPos +=1;
            break;
            case 2: //down
                yPos +=1;
            break;
            case 3: //down left
                xPos -=1;
                yPos +=1;
            break;
            case 4: //left
                xPos -=1;
            break;
            case 5: //up left
                xPos -=1;
                yPos -=1;
            break;
            case 6: //up
                yPos -=1;
            break;
            case 7: //up right
                xPos +=1;
                yPos -=1;
            break;
        }
         
         
        return true;
         
    }
    
    void run()
    {
        //run free, run wild
        //(till you need to go uphill, then die)
        
        while(step())
        {
            //lol wut.
        }
        
    }
    
     
}
 
MidpointDisplacementMapGenerator depthgen;
MidpointDisplacementMapGenerator humigen;
 
int waterlevel = 80;
int mapSize = 257;
int maxRivers = 15;

 
void setup()
{ 
    size(mapSize*2, mapSize);
    strokeWeight(1);
 
    smooth();
 
    generateTerrain();
 
    frameRate(30);
}
 
void generateTerrain()
{
    //TGR : ONLY WORKS WITH POW2 + 1 (ie) 9, 17, 33, 65, 129,  257, 513, etc
    depthgen = new MidpointDisplacementMapGenerator(mapSize , 2.4);
    humigen = new MidpointDisplacementMapGenerator(mapSize , 1.5);
     
    var depthmap = depthgen.generate(190);
    var hummap = humigen.generate(255);
    background(0);
 
    for(int x = 0; x < mapSize; x++)
    {
        for(int y = 0; y < mapSize; y++)
        {
            int height = Math.ceil(depthmap[x][y]);
            //humidity is lower on high altitude because the temperature and the air pressure are possibly higher there.
            //todo : factor temperature into humidity
            //chosen to take an offset for humidty (180-height rather than 255 - height)
            int humidity = Math.max((180-height) - Math.ceil(hummap[x][y]));
            stroke(height);
            point(x, y);   
             
            if(height < waterlevel)
            {
                float depth = waterlevel - height;
                stroke(0,0,255);
                point(x,y);
            }
            stroke(255, 0, 0, humidity);
            point(x, y);
             
             
             
            //rendering the side view
            stroke(Math.floor(y*1));
            line(mapSize + x, 190, mapSize + x, (190-height));
             
             
        }
    }
 
    //draw the water level line on the side view
    stroke(0,0,255);
    fill(0,0,255, 100);
    rect(mapSize, (190-waterlevel), mapSize , (waterlevel));
    
    
    for(int nrivers = 0; nrivers < maxRivers;;)
    {
        float x = Math.floor(random() * mapSize);
        float y = Math.floor(random() * mapSize);
        
        if(depthmap[x][y] > waterlevel)
        {
            //we can generate a river
            RiverCarver rc= new RiverCarver(depthmap, (int)x, (int)y);
            rc.run();
            nrivers++;
        }
        
    }
    
}
 
void draw() {  // this is run repeatedly. 
    if (keyPressed == true)
    {
        generateTerrain();
    }
}



Point p1 = new Point(23,42);
Point p2 = new Point(43,52);
Point p3 = new Point(83,12);
myTriangle t1 = new myTriangle(p1,p2,p3);

void setup(){
size(200,200);
}

void draw(){
t1.drawIt();
}

class myTriangle {
    //variables
    int c1;
    int c2;
    int c3;
    int c4;
    int c5;
    int c6;
    //constructor
    myTriangle (Point temp1,Point temp2,Point temp3) {
        c1 = temp1.x;
        c2 = temp1.y;
        c3 = temp2.x;
        c4 = temp2.y;
        c5 = temp3.x;
        c6 = temp3.y;
    }
    //method
    void drawIt() {
        fill(0);
        triangle(c1,c2,c3,c4,c5,c6);
    }
    
}

class Point {
    //variables
    int x;
    int y;
    //constructor
    Point (int tempx,int tempy) {
        x = tempx;
        y = tempy;
    }    
}

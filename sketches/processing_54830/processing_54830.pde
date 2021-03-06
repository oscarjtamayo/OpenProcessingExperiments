
class Robot
{
  float x, x1, x2, y2;
  float by1, bx2, by2;
  float n1;
  float d, d1, dx, dy;
  float neck, mouthx, mouthy, earx, eary, bulb;
  float r, g, b;
  float r1, g1, b1;
  float bw, alph;
  float liny1;
  float liny2;
  float brow;
  float armrandom, arm1, armr, army, arm, armPush;
  float c1;
  float speed;
  float xx = 30;
  float waist, waisty;
  float easing = 0.02;
  float circ = random (-15, 15);
  float step = random(4, 15);
  float step2 = random(3.5, 10);
  float step1 = random(3.5, 10);
  float y1 = (map(mouseY, 0, height, 15, 35)); 
  float ypos;
  float ya;
  float py = random( -10, 45);
  float bx1 = random ( 40, 55);


  float yys=random(2, 9);
  float aas=random(2, 6);
  float bbs=random(2, 7);
  float y;
  Robot(float tx)
  {
    x = tx;
    y = height/4;
    ya = random(random(15, 35));
    x1 = random(xx, 40);
    x2 = random(35, 45);
    y2 = random(35, 45);

    by1 = random(28, 40);
    bx2 = random(40, 50);
    by2 = random(45, 65);

    n1 = random(4, 10);

    d = random(6, 12);
    d1 = random(4, 20);
    dx = random(17, 20);
    dy = random (-5, 7);

    neck = random(20, 45);
    mouthx = random(20, 60);
    mouthy = random(0, 12);
    earx = random(0, 30);
    eary = random(0, 10);
    bulb = random(8, 12);

    r = random(255);
    g = random(255);
    b = random(255);
    r1 = random(255);
    g1 = random(255);
    b1 = random(255);
    bw = random(120, 230);
    alph = random(50, 100);

    liny1 = dy-(random(12, 17));
    liny2 = dy-(random(12, 17));

    armrandom = random(15, 25);
    arm1 = random(20, 35);
    armr = random(0, 5);
    army = random(60, 85);
    arm = random(0, 20);
    armPush = random (20, 25);
    c1 = random(180, 245);
    brow = random(2, 10);
    waisty = random( 25, 35);
    waist = random( -10, 15);
    ypos=random(170, 195);
  }

  void update()
  {
    float yy=sin(frameCount/yys);
    ya +=yy;
    ypos +=yy;
    bx1 +=yy;

    float aa=sin(frameCount/aas);
    x1 +=aa;
    py +=aa;
    armrandom +=aa;

  
    float bb=sin(frameCount/bbs);
    y2 +=bb;
    y +=bb*2;
    y1 +=bb;
    by2+=bb;
  }

  void render()
  {
    pushMatrix();
    rectMode(CENTER);
    translate(x, y);

    strokeWeight(2);

    triangle(0, -ya*1.5, 5, 0, -5, 0);

    fill(r, g, 0);
    ellipse(0, -ya*1.6, bulb, bulb);
    fill(r, b, 120);
    rect(0, -d1, neck, neck); 

    //EARS
    fill(r, 70, 70, 60);
    rect(x1+3, eary, earx*1.4, y1/1.2);
    rect(-x1-3, eary, earx*1.4, y1/1.2);
    fill(r, 70, 70);
    rect(x1, eary, earx, y1*1.3);
    rect(-x1, eary, earx, y1*1.3);

    //NECK
    fill(bw-30);
    rect(0, 50, neck, 100);

    for (int i =0; i<100; i+=step1)
    {
      line(-neck/2, i, neck/2, i);
    }

    //WAIST
    fill(bw-30);
    rect(0, 140, bx2*2 - 25, 85);

    for (int i =80; i<190; i+=step2)
    {
      line(-bx2+12.5, i, bx2-12.5, i);
    }

    //LOWER WAIST
    fill(bw);

    rect(0, ypos, bx2*2 + waist, waisty);

    //HEAD
    fill(bw);
    quad(-x1, -y1, x1, -y1, x2, y2, -x2, y2);

    //MOUTH
    fill(255);
    rect(0, 0, n1, y1);
    pushMatrix();
    translate(0, y2-12);
    rect(0, 0, mouthx, mouthy);

    for (int i =0; i<(mouthx/2); i+=step)
    {
      line(i, (-mouthy/2.1), i, mouthy/2.1);
      line(-i, (-mouthy/2.1), -i, mouthy/2.1);
    }

    //EYES
    popMatrix();
    rectMode(CENTER);
    fill(r, g, 0, alph);
    ellipse(-dx, dy, d1, d1);
    ellipse(dx, dy, d1, d1);

    fill(c1, c1, 0);
    ellipse(-dx, dy, d, d);
    ellipse(dx, dy, d, d);

    //BROWS
    strokeWeight(brow);
    line(-dx-9, liny1, -dx+9, liny2);
    line(dx-9, liny2, dx+9, liny1);

    pushMatrix();
    translate(0, 90);
    strokeWeight(2);

    //LEFT ARM

    fill(g1, g1, 0, alph);
    quad(-bx1-arm1+6, -by1+armrandom, -bx1-arm1+6-arm, army, -bx1-arm1-arm +armPush, army, -bx1-arm1+armPush, -by1+armrandom);

    //RIGHT ARM
    quad(-(-bx1-arm1+6), -by1+armrandom, -(-bx1-arm1+6-arm), army, -(-bx1-arm1-arm +armPush), army, -(-bx1-arm1+armPush), -by1+armrandom);

    strokeWeight(15);

    noFill();
    arc(-bx1-arm1+15-arm, army+13, 32, 32, radians(120+circ), radians(390+circ));  
    arc(bx1+arm1-15+arm, army+13, 32, 32, radians(150+circ), radians(410+circ));  
    strokeWeight(2);

    //ARM PADS
    fill(bw-50);
    quad(-bx1-arm1, -by1+armr, bx1+arm1, -by1+armr, bx1+arm1, -by1+armrandom, -bx1-arm1, -by1+armrandom);

    //BODY
    fill(bw);
    quad(-bx1, -by1, bx1, -by1, bx2, by2, -bx2, by2);

    //CHEST
    fill(r1, g1/1.5, b1/1.5, alph);
    triangle(-bx1+1, -by1, bx1-1, -by1, 0, py);
    //    }
    //    else 
    //    {
    //      float px1 = (map(mouseX, 0, width, 0, 45));
    //      fill(r1, g1/1.5, b1/1.5, alph/1.5);
    //      quad(-bx1+20, -by1, bx1-20, -by1, bx2-20, by2-px1, -bx2+20, by2-px1);
    //    }

    popMatrix();
    popMatrix();
  }
}



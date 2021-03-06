
//Author: Anita Chen
//purpose: code base map function
void setup() {
  size(587, 440);
  
}
void drawBasemap(){//Base map
  noStroke();
  fill(234, 223, 195);//奶油白大梯形
  quad(0, 0, 149, 0, 262, 400, 0, 400);
  fill(162, 121, 58);//咖啡色三角形
  quad(0, 237, 0, 258, 222, 258, 184, 113);
  fill(84, 123, 80);//綠色四邊形
  quad(222, 258, 294, 258, 200, 102, 184, 113);
  fill(255);//白色多邊形
  quad(259, 61, 350, 1, 419, 127, 339, 188);
  quad(274, 0, 297, 36, 372, 41, 437, 0);
  quad(561, 98, 587, 98, 587, 136, 560, 133);//最右四方形
  fill(226, 184, 74);//橘色三角形
  triangle(405, 440, 445, 400, 457, 440);
  fill(225, 179, 144);//最右膚色四方形
  quad(560, 133, 587, 136, 587, 171, 559, 170);
}
void draw() {
  //set background
  smooth();
  background(240, 222, 172);
  
  drawBasemap();//Base map
 
  //大半圓弧*3
  fill(255, 255, 255, 195);//黑框
  stroke(0);
  strokeWeight(1);
  arc(262, 400, 125, 125, PI, TWO_PI);//3
  arc(12, 400, 125, 125, PI, TWO_PI);//1
  stroke(230, 0, 43);//紅框
  strokeWeight(3);
  arc(137, 400, 125, 125, PI, TWO_PI);//3
  stroke(255, 243, 120, 100);//黃框
  strokeWeight(7);
  arc(12, 400, 125, 125, PI, TWO_PI);//1
  //小半圓弧*4
  noFill();
  stroke(162, 121, 58);//咖啡框
  strokeWeight(3);
  arc(60, 143, 75, 75, PI-PI/4, TWO_PI-PI/4);//1
  arc(153, 50, 55, 55, PI-PI/4, TWO_PI-PI/4);//3
  arc(187, 16, 45, 45, PI-PI/4, TWO_PI-PI/4);//4
  stroke(230, 0, 43);//紅框
  strokeWeight(6);
  arc(110, 93, 65, 65, PI-PI/4, TWO_PI-PI/4);//2
  stroke(0);//黑框
  strokeWeight(1);
  arc(60, 143, 75, 75, PI-PI/4, TWO_PI-PI/4);//1
  arc(110, 93, 65, 65, PI-PI/4, TWO_PI-PI/4);//2
  arc(153, 50, 55, 55, PI-PI/4, TWO_PI-PI/4);//3
  arc(187, 16, 45, 45, PI-PI/4, TWO_PI-PI/4);//4
 
  //黑白格子區
  strokeWeight(2);
  fill(195, 138, 98);//咖啡色三角形
  triangle(349, -2, 400, -2, 362, 22);//小
  triangle(360, 49, 372, 41, 527, 327);//右
  triangle(347, 112, 360, 103, 494, 339);//中
  triangle(316, 105, 331, 95, 507, 403);//左
  fill(0);//黑格
  quad(282, 12, 303, 3, 315, 24, 297, 36);//右
  quad(283, 100, 304, 86, 316, 105, 296, 119);//中
  quad(472, 39, 507, 18, 521, 42, 487, 63);//左
  fill(80);//深灰格
  quad(316, 105, 331, 95, 343, 115, 328, 125);//左
  triangle(448, 0, 515, 0, 466, 29);//右
  fill(170);//淺灰格
  quad(259, 61, 279, 48, 291, 68, 271, 80);//左
  quad(297, 36, 315, 24, 327, 44, 310, 55);//右上
  quad(291, 68, 309, 56, 320, 75, 304, 86);//中
  quad(322, 74, 337, 64, 348, 83, 334, 92);//右下
   
  //線條由上往下編號
  stroke(0);
  strokeCap(PROJECT);
  strokeWeight(1);//線粗1
  line(0, 56, 104, 5);//1
  line(0, 61, 107, 9);//2
  line(68, 104, 190, 0);//3
  line(28, 172, 212, 0);//4
  line(0, 237, 85, 312);//5
  line(65, 347, 65, 440);//6
  strokeWeight(2);//線粗2
  line(0, 90, 167, 0);//左-1
  line(0, 400, 445, 400);//左-2
  line(44, 440, 153, 328);//左-3-長*3
  line(52, 440, 173, 313);
  line(65, 440, 192, 299);
  line(148, 440, 186, 399);//左-4-短*3
  line(156, 440, 191, 403);
  line(163, 440, 198, 404);
  line(259,61,499,440);//右-直1
  line(347, 112,274,0);//右-直2
  line(360, 103,301,0);//右-直3
  line(329,0,360,49);//右-直4
  line(372,41,362,22);//右-直5
  line(279,48,350,0);//右-橫1
  line(348,31,362,22);//右-橫2
  line(372,41,437,0);//右-橫3
  line(308,139,360,103);//右-橫4
  strokeWeight(3);//線粗3
  line(148, 0, 275, 440);//左-直
  line(110, 121, 231, 30);//左-橫
  line(502, 97, 587, 98);//丰-橫
  line(499, 131, 587, 136);
  line(498, 168, 587, 171);
  line(563, 48, 558, 229);//丰-直
  strokeWeight(4);//線粗4
  line(0,84,63,0);//左-1
  line(188,271,350,440);//左-2
  strokeWeight(8);
  line(0,268,90,251);
  line(298,198,587,291);
  stroke(114,74,50);//咖啡色
  line(0,288,42,274);
  strokeWeight(10);
  stroke(255, 243, 120,80);//黃色
  line(110,121,231,30);
  strokeWeight(5);
  stroke(230, 0, 43,80);//紅色
  line(0,90,167,0);
  //綠色直角線
  noStroke();
  fill(0);//黑色
  triangle(59,6,63,0,296,114);
  fill(84, 123, 80,150);//綠色
  triangle(0,90,59,6,64,17);
  triangle(59,6,64,17,296,114);
    
  //同心圓&半圓區
  stroke(0);
  strokeWeight(1);
  int x=171;
  int y=180;
  int D=89;//設定最大同心圓參數
  fill(21, 68, 154);//藍圓
  ellipse(x, y, D, D);
  fill(0);//黑弧
  arc(x, y, D, D, radians(145), radians(230));
  arc(x, y, D, D, radians(295), radians(350));
  arc(x, y, D, D, radians(15), radians(60));
  fill(255, 243, 120);//黃弧
  arc(x, y, D, D, radians(168), radians(192));
  arc(x, y, D, D, radians(328), radians(337));
  fill(100, 124, 184);
  arc(x, y, D, D, radians(347), radians(370));
  fill(255);//白弧
  arc(x, y, D, D, radians(90), radians(93));
  arc(x, y, D, D, radians(96), radians(99));
  arc(x, y, D, D, radians(102), radians(105));
  arc(x, y, D, D, radians(108), radians(111));
  arc(x, y, D, D, radians(255), radians(258));
  arc(x, y, D, D, radians(261), radians(264));
  noStroke();
  fill(255);//大白圓
  ellipse(x, y, D-22, D-22);
  fill(0);//小黑點
  ellipse(x+5, y, 14, 14);
  stroke(255, 243, 120);//黃半圓
  strokeWeight(4);
  fill(216, 216, 236);
  arc(x+76, y, 75, 75, radians(237), radians(418));
  noFill();
  stroke(230, 0, 43);//紅半圓
  arc(x+76, y, 109, 109, radians(237), radians(418));
  stroke(0);
  strokeWeight(1);
  fill(0);//黑小半圓
  arc(x+76, y, 29, 29, radians(237), radians(418));
  fill(255);//白小半圓
  arc(x+76, y, 29, 29, radians(58), radians(237));
  noStroke();
  fill(71, 149, 194, 180);//藍圓-半透明
  ellipse(372, 141, 98, 98);
   
  //彩色三角形*3
  //長
  fill(249,218,28);//黃
  quad(226,231,221,235,303,338,317,323);
  fill(255);//白
  quad(203,212,205,210,226,231,221,235);
  fill(208,22,19);//紅
  triangle(187,193,203,212,205,210);
  fill(0);//黑
  quad(222,235,223,237,228,233,226,232);
  quad(225,240,228,243,233,239,230,236);
  quad(231,247,233,250,238,244,236,242);
  //中
  fill(208,22,19);//紅
  triangle(187,167,231,119,226,114);
  fill(255);//白
  quad(202,150,213,138,210,135,200,148);
  fill(0);//黑
  quad(236,114,265,83,256,73,230,108);
  //短
  fill(180);//灰
  quad(84,134,107,146,107,158,77,150);
  fill(208,22,19);//紅
  triangle(129,165,131,158,160,174);
  quad(112,148,112,160,127,164,128,157);
  //大斜線
  stroke(0);//黑色
  strokeWeight(12);
  line(587,0,424,123);
  line(188,302,6,440);
  stroke(180);//灰色
  strokeWeight(9);
  line(153,328,58,400);
  stroke(255);//白色
  line(50,406,6,440);
  stroke(0);//黑色
  strokeWeight(2);//左下黑色短間隔
  line(25,419,31,428);
  line(29,416,36,424);
  line(34,412,40,420);
  line(39,408,45,416);
  line(44,405,50,413);
  line(49,401,55,409);
  fill(230, 0, 43,150);//紅色透明段
  quad(185,298,191,306,343,191,337,183);
  fill(100,100,100,200);//灰色透明段
  quad(337,183,343,191,427,127,421,119);
}
void keyPressed(){
  saveFrame("Kandisky_in_Processing-####.jpg");
}



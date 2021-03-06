
/*
Project 1: Draw
Select a crop of Zaha Hadid‘s “Malevich's Tektonik” 
and draw it within Processing as a 640 x 480 pixel program. 
Name: Kuo-Ang Huang
UID: 703-783-811
*/

size(640, 480);
smooth();
background(230, 250, 250);

// Arc
fill(20, 40, 110);
arc(485, 0, 1350, 1030, 0, PI);

// White stripe
fill(230, 250, 250);
quad(115, 480,  390, 0,  450, 0,  175, 480);

noStroke();
// Big 3D rectangle
// Face side
fill(10, 10, 20);
quad(213, 340,  213, 257,  270, 289,  270, 372);
// Up
fill(110, 140, 170);
quad(213, 257,  337, 37,  395, 64,  270, 289);
// Right
fill(30, 60, 90);
quad(270, 289,  393, 64,  393, 145,  270, 372);

// 3D poly behind the big one
// Black Face
fill(10, 10, 20);
quad(393, 145,  393, 63,  409, 70,  409, 152);
// Up
fill(110, 140, 170);
quad(337, 37,  359, 0,  468, 0,  409, 70);
// Right
fill(70, 90, 130);
beginShape();
vertex(409, 152);
vertex(409, 70);
vertex(413, 62);
vertex(413, 0);
vertex(468, 0);
vertex(468,50);
endShape(CLOSE);
// Red Face
fill(180, 0, 20);
quad(413, 62,  375, 45,  375, 0,  413, 0);

// S 3D box
// Up
fill(80, 110, 150);
beginShape();
vertex(374, 95);
vertex(335, 74);
vertex(347, 52);
vertex(312, 32);
vertex(330, 0);
vertex(359, 0);
vertex(375, 8);
vertex(375, 33);
vertex(401, 47);
endShape(CLOSE);
// Face
fill(10, 10, 20);
quad(374, 108,  335, 87,  335, 74, 374, 95);

quad(341, 63,  312, 47,  312, 32,  347, 52);

triangle(359, 0,  370, 0,  370, 5);
// Right
fill(140, 150, 170);
quad(374, 108,  374, 95,  401, 47,  401, 57);

fill(0);
quad(408, 24,  421, 0,  435, 0,  418, 30);

// White picture
stroke(0);
fill(220, 240, 240);
beginShape();
vertex(321, 308);
vertex(335, 282);
vertex(352, 292);
vertex(469, 83);
vertex(435, 64);
vertex(454, 30);
vertex(443, 24);
vertex(450, 12);
vertex(441, 7);
vertex(445, 0);
vertex(621, 0);
vertex(612, 19);
vertex(616, 22);
vertex(591, 71);
vertex(580, 64);
vertex(595, 35);
vertex(586, 30);
vertex(537, 120);
vertex(521, 112);
vertex(425, 287);
vertex(431, 291);
vertex(419, 313);
vertex(412, 309);
vertex(405, 321);
vertex(419, 329);
vertex(405, 355);
endShape(CLOSE);

triangle(534, 0,  621, 0,  602, 38);
quad(537, 120,  490, 95,  539, 3,  586, 29);
quad(574, 22,  566, 38,  496, 0,  534, 0);
quad(531, 19,  490, 95,  455, 75,  496, 0);
quad(455, 75,  449, 72,  489, 0,  496, 0);
quad(449, 72,  435, 64,  469, 0,  484, 8);
line(443, 24,  457, 0);
quad(471, 31,  457, 23,  469, 0,  484, 8);
quad(474, 27,  464, 21,  471, 8,  481, 14);
quad(524, 15,  519, 24,  508, 18,  513, 9);
quad(494, 97,  480, 123,  454, 109,  468, 83);
quad(515, 49,  524, 54,  495, 107,  486, 102);
quad(514, 50,  504, 68,  480, 55,  490, 37);
quad(491, 52,  480, 46,  482, 42,  493, 48);
line(352, 292,  405, 321);
quad(419, 313,  376, 290,  388, 268,  431, 291);
line(389, 297,  401, 275);
line(396, 301,  408, 279);
quad(423, 306,  407, 298,  415, 283,  431, 291);

noStroke();
// Red Box before the big one
// Up
fill(180, 0, 20);
quad(190, 300,  200, 284,  283, 331,  274, 347);
// Face
fill(240, 180, 180);
quad(190, 300,  274, 347,  274, 351,  190, 304);
// Right
quad(274, 347,  283, 331,  283, 335,  274, 351);

// 3 boxes upon the big one
// 1st box
// Up
fill(10, 10, 20);
quad(210, 223,  221, 206,  267, 231,  258, 248);
// Face
fill(190, 0, 20);
quad(210, 223,  258, 248,  258, 267,  210, 241);
// Right
fill(100, 120, 150);
quad(258, 248,  267, 231,  267, 250,  258, 267);

// 2nd box
// Up
fill(120, 150, 170);
quad(212, 207,  223, 191,  252, 207,  242, 223);
// Face
fill(80, 100, 130);
quad(212, 207,  242, 223,  242, 236,  212, 220);
// Right
fill(50, 60, 80);
quad(242, 223,  252, 207,  252, 220,  242, 236);

// 3rd box
// Up
fill(10, 10, 30);
quad(216, 191,  220, 185,  230, 191,  227, 197);
//Face
fill(80, 100, 130);
quad(216, 191,  227, 197,  227, 209,  216, 203);
// Right
fill(200, 200, 200);
quad(227, 197,  230, 191,  230, 203,  227, 209);

// Red boxes on the right of big one
// 1st box
// Up
fill(190, 0, 0);
quad(351, 198,  377, 153,  396, 163,  371, 209);
// Face
fill(200, 240, 240);
quad(351, 198,  371, 209,  371, 236,  351, 225);
// Right
fill(20, 10, 30);
quad(371, 209,  396, 163,  396, 190,  371, 236);

// 2nd box
// Up
quad(418, 101,  452, 39,  483, 56,  450, 118);
// Face
fill(200, 0, 0);
quad(418, 101,  450, 118,  450, 155,  418, 138);
// Right
fill(80, 100, 140);
quad(450, 118,  483, 56,  483, 92,  450, 155);

// 3 small boxes
// Up
fill(80, 100, 140);
quad(427, 75,  434, 63,  438, 65,  432, 77);
// Face
fill(200, 240, 240);
quad(427, 75,  432, 77,  432, 86,  427, 84);
// Right
fill(200, 0, 0);
quad(432, 77,  438, 65,  438, 75,  432, 86);

// Up
fill(180, 180, 200);
quad(429, 61,  435, 50,  439, 52,  433, 63);
// Face
fill(200, 240, 240);
quad(429, 61,  433, 63,  433, 73,  429, 71);
//Right
fill(20, 10, 30);
quad(433, 63,  439, 52,  439, 62,  433, 73);

// Up
fill(200, 0, 0);
quad(457, 127,  462, 117,  466, 120,  461, 130);
// Face
fill(40, 70, 80);
quad(457, 127,  461, 130,  461, 144,  457, 141);
// Right
fill(20, 10, 10);
quad(461, 130,  466, 120,  466, 132,  461, 143);




size(500,500);
background(153,217,234);
noStroke();
fill(255,175);
ellipse(100,100,150,40);
ellipse(315,50,200,50);
ellipse(395,25,150,25);
ellipse(500,125,150,25);
ellipse(0,15,300,75);

/*CHÃO:*/
stroke(34,177,76);
fill(34,177,76);
quad(0,350,500,350,500,500,0,500);

/*CALÇADAS*/
stroke(136,151,130);
fill(136,151,130);
quad(0,390,500,390,500,406,0,406);
quad(46,406,92,406,0,500,0,442);
quad(242,350,258,350,357,500,132,500);
quad(406,406,459,406,500,441,500,500);

/*PORTAL*/
stroke(200,174,100);
fill(200,174,100);
quad(64,155,435,155,435,349,64,349);
quad(64,350,230,350,230,395,64,395);
quad(270,350,435,350,435,395,270,395);
quad(134,155,134,95,366,95,366,155);
quad(99,135,400,135,400,155,99,155);

/*DETALHES BRANCOS*/
stroke(255,255,255);
strokeWeight(3);
fill(153,217,234);
arc(99,135,30,40, 0,HALF_PI);//LADO ESQUERDO
line(115,135,133,135);
line(65,155,100,155);
line(133,135,133,215);
line(133,215,100,215);
line(100,215,100,155);

arc(401,135,30,40, HALF_PI, PI);//LADO DIREITO
line(385,135,367,135);
line(400,155,435,155);
line(367,135,367,215);
line(367,215,400,215);
line(400,215,400,155);

stroke(153,217,234);
line(110,135,100,135);
line(98,150,98,125);
line(390,135,430,135);


/*FORMAS DO TOPO*/
strokeWeight(1);
stroke(255,255,255);
fill(255,255,255);
quad(134,95,134,87,366,87,366,95);
triangle(155,89,250,45,345,89);

/*VASOS SUPERIORES*/
stroke(209,206,197);
fill(255,255,255);
quad(142,87,137,75,157,75,152,87);
quad(360,87,365,75,345,75,350,87);

/*TRIANGULOS SUPERIORES*/
stroke(200,174,100);
fill(200,174,100);
triangle(160,89,250,50,340,89);

stroke(255,255,255);
fill(255,255,255);
triangle(180,85,250,55,320,85);

stroke(200,174,100);
fill(200,174,100);
triangle(190,83,250,58,310,83);

/*CIRCUNFERENCIAS SUPERIORES*/
stroke(255,255,255);
fill(255,255,255);
ellipse(250,71,20,20);
ellipse(117,180,20,20);
ellipse(383,180,20,20);

stroke(200,174,100);
fill(200,174,100);
ellipse(250,71,10,10);
stroke(153,217,234);
fill(153,217,234);
ellipse(117,180,10,10);
ellipse(383,180,10,10);



/*ARCOS SUPERIORES*/
strokeWeight(2);
stroke(255,255,255);
fill(200,174,100);

arc(180,125,40,30, PI, TWO_PI);
line(160,125,200,125);//linha que fecha o arco
line(165,130,195,130);//linha entre o arco e a janela

arc(320,125,40,30, PI, TWO_PI);
line(300,125,340,125);//linha que fecha o arco
line(305,130,335,130);//linha entre o arco e a janela

arc(250,125,40,30, PI, TWO_PI);
line(230,125,270,125); //linha que fecha o arco
line(235,130,265,130); //linha entre o arco e a janela

/*JANELAS SUPERIORES*/
fill(153,217,234);
quad(230,135,270,135,270,215,230,215);
quad(160,135,200,135,200,195,160,195);
quad(300,135,340,135,340,195,300,195);

fill(200,174,100);//quadrados em baixo das janelas
quad(160,200,200,200,200,215,160,215);
quad(300,200,340,200,340,215,300,215);
    stroke(255,255,255);
    noFill();//detalhes brancos
    quad(165,205,195,205,195,210,165,210);
    quad(305,205,335,205,335,210,305,210);


/*LINHAS DO MEIO*/
stroke(255,255,255);
fill(255,255,255);
quad(64,224,435,224,435,219,64,219);//1ª linha branca meio
quad(64,239,435,239,435,244,64,244);//2ª linha branca meio

/*PORTA*/
strokeWeight(4);
stroke(255,255,255);
noFill();

arc(250,275,50,40, PI, TWO_PI);
noStroke();
fill(153,217,234);
arc(250,282,40,40, PI, TWO_PI);
quad(230,282,270,282,270,350,230,350);


/*JANELAS INFERIORES*/
strokeWeight(4);
stroke(255);
noFill();

arc(100,275,50,40, PI, TWO_PI); //1ª ARCO LADO ESQUERDO
arc(175,275,50,40, PI, TWO_PI); //2ª ARCO LADO ESQUERDO
arc(325,275,50,40, PI, TWO_PI); //1ª ARCO LADO DIREITO
arc(400,275,50,40, PI, TWO_PI); //2ª ARCO LADO DIREITO

noStroke();
fill(153,217,234);
arc(100,282,40,40, PI, TWO_PI); //*1ª JANELA
quad(80,282,120,282,120,350,80,350);
arc(175,282,40,40, PI, TWO_PI); //*2ª JANELA
quad(155,282,195,282,195,350,155,350);
arc(325,282,40,40, PI, TWO_PI); //*2ª JANELA
quad(305,282,345,282,345,350,305,350);
arc(400,282,40,40, PI, TWO_PI); //*2ª JANELA
quad(380,282,420,282,420,350,380,350);



/*RETANGULOS INFERIORES*/
stroke(255);
fill(255);
quad(68,277,75,277,75,350,68,350);//1° RETANGULO BRANCO ENTRE JANELAS
quad(150,277,125,277,125,350,150,350);//2° RETANGULO BRANCO ENTRE JANELAS
quad(225,277,200,277,200,350,225,350);//3° RETANGULO BRANCO ENTRE JANELAS
quad(275,277,300,277,300,350,275,350);//4° RETANGULO BRANCO ENTRE JANELAS
quad(350,277,375,277,375,350,350,350);//5° RETANGULO BRANCO ENTRE JANELAS
quad(425,277,431,277,431,350,425,350);//6° RETANGULO BRANCO ENTRE JANELAS

strokeWeight(2);
stroke (255);
noFill();
quad(67,272,68,272,85,250,67,250);//1° RETANGULO BRANCO ENTRE ARCOS DE JANELAS
quad(131,272,144,272,155,250,120,250);//2° RETANGULO BRANCO ENTRE ARCOS DE JANELAS
quad(219,272,206,272,195,250,230,250);//3° RETANGULO BRANCO ENTRE ARCOS DE JANELAS
quad(294,272,281,272,270,250,305,250);//4° RETANGULO BRANCO ENTRE ARCOS DE JANELAS
quad(369,272,356,272,345,250,380,250);//5° RETANGULO BRANCO ENTRE ARCOS DE JANELAS
quad(432,272,430,272,418,250,432,250);//2° RETANGULO BRANCO ENTRE ARCOS DE JANELAS

/*RETANGULOS LATERAIS HORIZONTAIS INFERIORES*/
strokeWeight(1);
stroke (200);
fill(255);
quad(67,353,227,353,232,360,62,360);
quad(272,353,432,353,437,360,267,360);

/*QUADRADOS INFERIORES*/
strokeWeight(2);
stroke (255);
fill(255);
/*LADO ESQUERDO*/
quad(68,363,75,363,75,370,68,370);
quad(80,363,120,363,120,370,80,370);
quad(125,363,148,363,148,370,125,370);
quad(153,363,195,363,195,370,153,370);
quad(200,363,225,363,225,370,200,370);

/*LADO DIREITO*/
quad(300,363,275,363,275,370,300,370);
quad(305,363,345,363,345,370,305,370);
quad(350,363,374,363,374,370,350,370);
quad(379,363,420,363,420,370,379,370);
quad(425,363,432,363,432,370,425,370);

/*RETANGULOS INFERIORES OCRES*/
stroke (216,190,115);
fill(226,200,155);
quad(68,375,225,375,225,390,68,390);
quad(275,375,430,375,430,390,275,390);

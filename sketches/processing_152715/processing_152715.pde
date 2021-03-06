
//int X1=500, Y1=100, C1=1;

//MOVIMIENTOS
//1 -> DIAGONAL HACIA LA DERECHA SUBIENDO
//2 -> DIAGONAL HACIA LA DERECHA BAJANDO
//3 -> DIAGONAL HACIA LA IZQUIERDA BAJANDO
//4 -> DIAGONAL HACIA LA IZQUIERDA SUBIENDO

int X1, Y1, C1=0;
int X2=400, Y2=400, C2=2; //Inicia el movimiento de la bola 2 con este control
int CW=1; //Control while
int r=25, dia=2*r; //Radio, Diametro
float dis, d; //Distancia

void setup(){
  size(1000, 500);
  smooth();
  frameRate(200);
}

void draw(){
  //Diseno de la mesa
  background(#29D357); 
  rect(0, 0, 1000, 25);
  rect(0, 475, 1000, 25);
  rect(0, 0, 25, 500);
  rect(975, 0, 25, 500);
  
  //Esferas
  if(C1==0){
    X1=mouseX;
    Y1=mouseY;
    if(mousePressed){
      C1=3; //Inicia el movimiento de la bola 1 con este control
    }
  }
  
  fill(#E51515);
  ellipse(X1, Y1, dia, dia);
  fill(#62220B);
  ellipse(X2, Y2, dia, dia);
  if(mousePressed) {
    
    //Calculo de Distancia
    d = dist(X1, Y1, X2, Y2);
    //dis=sqrt(pow(X2-X1, 2) + pow(Y2-Y1, 2));
    if(d<=dia+2 && d>=dia-2){
      
      while(CW!=0){
      //Posibles choques
      if(C1==1 && C2==2){
        C1=2;
        C2=1;
        break;
      }
      if(C1==1 && C2==3){
        C1=3;
        C2=1;
        break;
      }
      if(C1==1 && C2==4){
        C1=4;
        C2=1;
        break;
      }
      if(C1==2 && C2==3){
        C1=3;
        C2=2;
        break;
      }
      if(C1==2 && C2==4){
        C1=4;
        C2=2;
        break;
      }
      if(C1==3 && C2==4){
        C1=4;
        C2=3;
        break;
        
        
      }
      if(C2==1 && C1==2){
        C1=1;
        C2=2;
        break;
      }
      if(C2==1 && C1==3){
        C1=1;
        C2=3;
        break;
      }
      if(C2==1 && C1==4){
        C1=1;
        C2=4;
        break;
      }
      if(C2==2 && C1==3){
        C1=2;
        C2=3;
        break;
      }
      if(C2==2 && C1==4){
        C1=2;
        C2=4;
        break;
      }
      if(C2==3 && C1==4){
        C1=3;
        C2=4;
        break;
      }
      }
    }
    
    //Movimientos Bola 1
    if(C1==1){
      Y1--;
      X1=X1+1;
    }
    if(C1==2){
      X1=X1+2;
      Y1++;
    }
    if(C1==3){
      X1=X1-2;
      Y1++;
    }
    if(C1==4){
      X1=X1-3;
      Y1--;
    }
    
    //Controles Bola 1
    //Rebote Superior
    if(Y1<=r*2){
      if(C1==1){
        C1=2;  
      }
      if(C1==4){
        C1=3;
      }
    }
    //Rebote Izquierdo
    if(X1<=r*2){
      if(C1==3){
        C1=2;  
      }
      if(C1==4){
        C1=1;
      }
    }
    //Rebote Derecho
    if(X1>=1000-r*2){
      if(C1==2){
        C1=3;  
      }
      if(C1==1){
        C1=4;
      }
    }
    //Rebote Inferior
  if(Y1>=500-r*2){
      if(C1==2){
        C1=1;  
      }
      if(C1==3){
        C1=4;
      }
    }
    
    //Movimiento Bola 2
     if(C2==1){
      Y2--;
      X2=X2+2;
    }
    if(C2==2){
      X2=X2+3;
      Y2++;
    }
    if(C2==3){
      X2=X2-3;
      Y2++;
    }
    if(C2==4){
      X2=X2-2;
      Y2--;
    }
    
    //Controles Bola 2
    //Rebote Superior
    if(Y2<=r*2){
      if(C2==1){
        C2=2;  
      }
      if(C2==4){
        C2=3;
      }
    }
    //Rebote Izquierdo
    if(X2<=r*2){
      if(C2==3){
        C2=2;  
      }
      if(C2==4){
        C2=1;
      }
    }
    //Rebote Derecho
    if(X2>=1000-r*2){
      if(C2==2){
        C2=3;  
      }
      if(C2==1){
        C2=4;
      }
    }
    //Rebote Inferior
  if(Y2>=500-r*2){
      if(C2==2){
        C2=1;  
      }
      if(C2==3){
        C2=4;
      }
    }
  }
}



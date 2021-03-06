
//exercise 13.7 use the sine function to create a shape whose size oscillates
//com arrays e classes

Circulo [] circulos = new Circulo[5];

void setup() {
  size(600,600);
  smooth();
  
  for(int i = 0; i < circulos.length; i++) {
    circulos[i] = new Circulo(random(width), random(height));
  }
}

void draw() {
  background(145);
  
  for(int i = 0; i < circulos.length; i++) {
    circulos[i].respirar();
    circulos[i].mostrar();
  }
}
class Circulo {
  
  float theta;
  //float dtheta;
  
  float raio;
  
  float x;
  float y;
  
  float espessura1;
  float espessura2;
  float espessura3;
  
  Circulo(float tempX, float tempY) {
    //theta = 0;
    theta = random(PI);
    //dtheta = random(-0.03,0.03);    
    raio = random(5,150);
    x = tempX;
    y = tempY;
    espessura1 = random(1,50);
    espessura2 = random(1,50);
    espessura3 = random(1,50);
  }
  
  void respirar() {
    //theta += dtheta;
    theta += 0.03;
  }
  
  void mostrar() {
    //raio+raio impede limita o descrescimento do tamanho da forma
    //se colocar só raio, o d vai quase ao zero
    float d = (sin(theta) + 1) * raio;
    //float d = (sin(theta) + 1) * raio+raio;
    stroke(255,d);
    noFill();
    //fill(150, 150);
    strokeWeight(espessura1);
    ellipse(x,y,d,d);
    strokeWeight(espessura2);
    ellipse(x,y,d-d/2,d-d/2);
    strokeWeight(espessura3);
    ellipse(x,y,d-d/4,d-d/4);
  }
}




void setup(){/*Função que serve para definir as definições*/
  size (500,500);//tamanho da tela
  background(0);//cor de fundo
  smooth();//suavizar as formas
  noLoop();//definir para que não haja loop na composição
}

void draw(){/*Função para desenhar*/
  for (int x = 0; x < 20; x = x+1){//ciclo para as ellipses até desenhar 20 objectos em x
    float y = height/2;//variavel de y das ellipses
    float tamanho = random(5,30);//variavel do tamanho das ellipses
    float r = random (255);//variavel da cor vermelha(red)
    float g = random (255);//variavel da cor verde(green)
    float b = random (255);//variavel da cor azul(blue)
    fill(r,g,b);//cor das ellipses
    ellipse(x*50,y,tamanho,tamanho);//desenho das ellipses
  }
}



float [][][] icon = new float [6][6][5];

float[][] Matrix = { 
  {
    1, 0, 0, 0
  }
  , { 
    0, 1, 0, 0
  } 
  , {
    0, 0, 1, 0
  }
  , { 
    0, 0, 0, 1
  }
};


float RECT_SZ = 40; 
int ANGLE_STEP = 60;
float offset;
float t = 0;


void setup() {
  size(600, 600, P3D);

  colorMode(HSB,360, 100, 100);
  
  for (int r=0; r<6; r++) {
    float random =random(0,255);
    for (int i=0; i< 6; i++) {
      icon[r][i][0]=random;
    }
  }


  for (int r=0; r<6; r++) {
    for (int i=0; i< 6; i++) {
      icon[r][i][1]=i*15+10;
    }
  }


  for (int r=0; r<6; r++) {
    for (int i=0; i< 6; i++) {
      icon[r][i][2]=100;
    }
  }

 for (int r=0; r<6; r++) {
    for (int i=0; i< 6; i++) {
      icon[r][i][3]=0;
    }
  }

    for (int r=0; r<6; r++) {
    for (int i=0; i< 6; i++) {
      icon[r][i][4]=145+i*65;
    }
  }
}


void draw() {
  background(0);

  if (keyPressed) {
    offset = map(mouseX, 0, width, 0, 360);
  }

  float R = width/5;

  for (int u=0; u<6; u++) {
    float uu=u*60;
    for (int i=0; i< 6; i++) {
      float theta = radians(uu+offset); 
      float x = R * sin(theta);  
      float z = R * cos(theta); 
      ResetMatrix(); 
      Translate(width/2, height/3, 0); 
      Translate(x, i*50, z);
      RotateY( theta );
   //   println(theta);
      println(mouseY);
      if(mouseY<65+icon[u][i][4]&&mouseY>icon[u][i][4]){
        fill(255);
      }else{
      fill(icon[u][i][0], icon[u][i][1], icon[u][i][2] );
    }
      DrawRect(-RECT_SZ/2, -RECT_SZ/2, RECT_SZ, RECT_SZ);
    }
  }
}


void DrawRect(float leftX, float upperY, float sizeX, float sizeY)
{
  float[][] pos = { 
    {
      leftX, upperY, 0, 1
    }
    , {
      leftX+sizeX, upperY, 0, 1
    } 
    , {
      leftX+sizeX, upperY+sizeY, 0, 1
    }
    , {
      leftX, upperY+sizeY, 0, 1
    }
  };
  float[] posFinal = new float[4]; 
  beginShape();
  for (int i=0; i<4; i++) {
    MatVec3d(Matrix, pos[i], posFinal);
    vertex(posFinal[0], posFinal[1], posFinal[2]);
  }
  endShape(CLOSE);
}


void MatMult3d(float[][] a, float[][] b, float[][] out) {
  // out = a x b
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) { 
      float sum=0;
      for (int k=0; k<4; k++) {
        sum += a[i][k] * b[k][j];
      }
      out[i][j] = sum;
    }
  }
}
void MatVec3d(float[][] m, float[] vec, float[] out) {
  // out = m x vec
  for (int i=0; i<4; i++) {
    float sum=0;
    for (int k=0; k<4; k++) {
      sum += m[i][k] * vec[k];
    }
    out[i] = sum;
  }
}
void MatCopy3d(float[][] src, float[][] dst) {
  for (int i=0; i<4; ++i) for (int j=0; j<4; ++j) dst[i][j] = src[i][j];
}
void ResetMatrix() {
  // Reset Matrix to Identity matrix 
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      if (i==j) Matrix[i][j] = 1; 
      else Matrix[i][j] = 0;
    }
  }
}


void Translate(float xTerm, float yTerm, float zTerm)
{
  float[][] matTrans = {
    {
      1, 0, 0, xTerm
    } 
    , {
      0, 1, 0, yTerm
    }
    , {
      0, 0, 1, zTerm
    }
    , {
      0, 0, 0, 1
    }
  };
  float[][] matIn = new float[4][4]; 
  MatCopy3d(Matrix, matIn); 
  MatMult3d(matIn, matTrans, Matrix);
}
void Scale(float xTerm, float yTerm, float zTerm)
{
  float[][] matScale = {
    {
      xTerm, 0, 0, 0
    } 
    , {
      0, yTerm, 0, 0
    }
    , {
      0, 0, zTerm, 0
    }
    , {
      0, 0, 0, 1
    }
  };
  float[][] matIn = new float[4][4]; 
  MatCopy3d(Matrix, matIn); 
  MatMult3d(matIn, matScale, Matrix);
}



void RotateX(float theta) {
  float[][] matRot = { 
    {
      1, 0, 0, 0
    }
    , {
      0, cos(theta), -sin(theta), 0
    } 
    , {
      0, sin(theta), cos(theta), 0
    }
    , {
      0, 0, 0, 1
    }
  };
  float[][] matIn = new float[4][4]; 
  MatCopy3d(Matrix, matIn); 
  MatMult3d(matIn, matRot, Matrix);
}
void RotateY(float theta) {
  float[][] matRot = { 
    {
      cos(theta), 0, sin(theta), 0
    }
    , {
      0, 1, 0, 0
    } 
    , {
      -sin(theta), 0, cos(theta), 0
    }
    , {
      0, 0, 0, 1
    }
  };
  float[][] matIn = new float[4][4]; 
  MatCopy3d(Matrix, matIn); 
  MatMult3d(matIn, matRot, Matrix);
}
void RotateZ(float theta) {
  float[][] matRot = { 
    {
      cos(theta), -sin(theta), 0, 0
    }
    , {
      sin(theta), cos(theta), 0, 0
    } 
    , {
      0, 0, 1, 0
    }
    , {
      0, 0, 0, 1
    }
  };
  float[][] matIn = new float[4][4]; 
  MatCopy3d(Matrix, matIn); 
  MatMult3d(matIn, matRot, Matrix);
}


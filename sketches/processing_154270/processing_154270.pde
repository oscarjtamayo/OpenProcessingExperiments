
int i;

void setup() {
  size(600, 600);
  i = 0;
  if(frame != null) frame.setResizable(true);
}

void draw() {
  i++;
  for(int x = 0; x < width; ++x) {
    for(int y = 0; y < height; ++y) {
      set(x, y, color((x * i) % (y + 1)));
    } 
  }
}



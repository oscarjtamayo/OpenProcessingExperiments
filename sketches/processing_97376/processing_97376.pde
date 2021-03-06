
/**
 * RGB Plasma
 *
 * Created by Rene Hangstrup Møller
 *
 * Warming up for the Processing workshop at Open Space Aarhus
 * http://osaa.dk/wiki/index.php/Processingworkshops
 */
 
int[] table = new int[256];
 
void setup() {
  size(32, 20);
  frameRate(30);
 
  // One period of the sinus function shifted to range [0-255] 
  for (int i = 0; i < 256; i++) {
    table[i] = (int)(128 + 127.0 * sin(i * TWO_PI / 256.0));
  }
   
}
 
void draw() {
  // grab some samples, hmm could have used lookup table...
  int t = (int)(128 + 127.0 * sin(0.0013 * (float)millis()));
  int t2 = (int)(128 + 127.0 * sin(0.0023 * (float)millis()));
  int t3 = (int)(128 + 127.0 * sin(0.0007 * (float)millis()));
   
  loadPixels();
   
  for (int y = 0; y < 32; y++) {
    for (int x = 0; x < 20; x++) {
      // Define a function for each color component that depends on the
      // x,y coordinate and time. Use the lookup table for nice swirly movement.
      // There is no deeper logic here, I just experimented with the functions
      // untill I found something that looked pleasing.
      int r = table[(x * 512/132 + t / 4 + table[(t2 / 3 + y * 512/132) & 0xff]) & 0xff];
      int g = table[(y * 512/140 + t + table[(t3 + x * 512/256) & 0xff]) & 0xff];
      int b = table[(y * 512/120 + t2 + table[(t + g / 4 + x * 512/120) & 0xff]) & 0xff];
      pixels[x + y * 32] = color(r, g, b);
    }
  }
   
  updatePixels();
}

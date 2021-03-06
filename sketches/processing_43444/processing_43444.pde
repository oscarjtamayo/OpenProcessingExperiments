
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
FFT fft;

void setup()
{
  size(600, 600);
  smooth();
  minim = new Minim(this);
  song = minim.loadFile("tremel.mp3", 512);
  song.play();
  fft = new FFT(song.bufferSize(), song.sampleRate());
}

void draw()
{
  background(255);
  stroke(0,218,174);
  strokeWeight(1);
  for (int i = 0; i < song.bufferSize() - 1; i++)
  {
    ellipse(width/2, height/2, song.left.get(i)*500, song.left.get(i)*500);
  }
}

void stop()
{
  song.close();
  minim.stop();
  super.stop();
}



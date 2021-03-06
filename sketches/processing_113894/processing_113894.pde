

import grafica.*;

void setup(){
  size(500, 350);
  background(150);

  // Prepare the points for the plot
  int nPoints = 100;
  GPointsArray points = new GPointsArray(nPoints);
  
  for(int i = 0; i < nPoints; i++){
    points.add(i, 10*noise(0.1*i));
  }
  
  // Create a new plot and set its position on the screen
  GPlot plot = new GPlot(this);
  plot.setPos(25, 25);
  
  // Set the plot title and the axis labels
  plot.setPoints(points);
  plot.getXAxis().setAxisLabelText("x axis");
  plot.getYAxis().setAxisLabelText("y axis");
  plot.setTitleText("A very simple example");

  // Draw it!
  plot.defaultDraw();
}



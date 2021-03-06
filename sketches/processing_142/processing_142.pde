
// Daniel Shiffman
// The Nature of Code, Fall 2006
// Simple Perceptron Example
// See: http://en.wikipedia.org/wiki/Perceptron

// Perceptron Class

class Perceptron {
  float[] weights;  // Array of weights for inputs
  float c;          // learning constant

  // Perceptron is created with n weights and learning constant
  Perceptron(int n, float c_) {
    weights = new float[n];
    // Start with random weights
    for (int i = 0; i < weights.length; i++) {
      weights[i] = random(-1,1); 
    }
    c = c_;
  }

  // Function to train the Perceptron
  // Weights are adjusted based on "desired" answer
  void train(float[] vals, int desired) {
    // Sum all the weights
    float sum = 0;
    for (int i = 0; i < weights.length; i++) {
      sum += vals[i]*weights[i];
    }
    // The result is the sign of the sum
    int result = 1;  // Start with 1
    if (sum < 0) result = -1; // If less than zero, change to -1
    // Compute the factor for  changing the wait based on the difference between the result we got and desired result
    // Note this can only be 0, -2, or 2
    // Multiply by learning constant
    float weightChange = c*(desired - result);
    // Adjust weights based on weightChange * input
    for (int i = 0; i < weights.length; i++) {
      weights[i] += weightChange * vals[i];         
    }
  }

  // Guess -1 or 1 based on input values
  int guess(float[] vals) {
    // Sum all values
    float sum = 0;
    for (int i = 0; i < weights.length; i++) {
      sum += vals[i]*weights[i];
    }
    // Result is sign of the sum, -1 or 1
    int result = 1;
    if (sum < 0) result = -1;
    return result;
  }

  // Return weights
  float[] getWeights() {
    return weights; 
  }
}



float ball_x = 70;
float ball_y = 80;
float x_speed = random(5);
float y_speed = random(5);
float ball_w = 90;

void setup() {
size(600, 600);
  }


void draw() {
moveBall();
checkEdgeOfScreen();
fill(255,0,128);
ellipse(ball_x, ball_y, ball_w, ball_w);
  }

void moveBall() {
background(255);
ball_x +=x_speed;
ball_y +=y_speed;
  }

void checkEdgeOfScreen() {
if (ball_x > width- ball_w/2) {
x_speed = x_speed * -1;
}else if(ball_x< ball_w/2){
x_speed = x_speed * -1;
  }


if (ball_y > height- ball_w/2) {
y_speed = y_speed * -1;
}else if (ball_y < ball_w/2){
y_speed = y_speed * -1;
  }



}


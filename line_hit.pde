Ball ball;
Bar bar;

int score = 0;

void setup() {
  orientation(PORTRAIT);
  bar = new Bar();
  ball = new Ball();
  size(displayWidth, displayHeight, P2D);
}

void draw() {
  background(0);
  bar.call();
  ball.call();
  fill(255);
  textAlign(CENTER);
  textSize(displayWidth*0.01);
  text(score, displayWidth/2, displayHeight/6);
}
Ball ball;
ballHandler ballHandler;
Bar bar;
barHandler barHandler;
Handler handler;

int score = 0;

void setup() {
  orientation(PORTRAIT);
  bar = new Bar();
  barHandler = new barHandler();
  ball = new Ball();
  ballHandler = new ballHandler();
  handler = new Handler();
  size(displayWidth, displayHeight, P2D);
}

void draw() {
  background(0);
  bar.call();
  ball.call();
  fill(255);
  textAlign(CENTER);
  textSize(displayWidth*0.1);
  text(score, displayWidth/2, displayHeight/6);
}

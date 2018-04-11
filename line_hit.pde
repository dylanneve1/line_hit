Ball ball;
Bar bar;

void setup() {
  bar = new Bar();
  ball = new Ball();
  size(displayWidth, displayHeight, P2D);
}

void main() {
  background(0);
  bar.call();
}
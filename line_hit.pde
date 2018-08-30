Ball ball;
ballHandler ballHandler;
Bar bar;
barHandler barHandler;
Handler handler;
Menus menus;

int score = 0;

void setup() {
  orientation(PORTRAIT);
  bar = new Bar();
  barHandler = new barHandler();
  ball = new Ball();
  ballHandler = new ballHandler();
  handler = new Handler();
  menus = new Menus();
  size(displayWidth, displayHeight, P2D);
}

void draw() {
  menus.call();
}

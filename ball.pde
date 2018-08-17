class Ball {

  float x = displayWidth/2;
  float y = displayHeight*-0.5;
  float w = displayWidth*0.1;

  boolean pressedBefore = false;

  void call() {
    show();
    move();
    wasPressedBefore();
    getOne();
  }

  void show() {
    fill(200, 0, 0);
    ellipseMode(CENTER);
    ellipse(x, y, w, w);
  }

  void move() {
    y = y + displayHeight*0.01;
    if (y > displayHeight) {
      y = displayHeight*-0.5;
    }
  }

  void wasPressedBefore() {
    if(mousePressed && ballHandler.collided() == false) {
      pressedBefore = true;
    }
  }

  void getOne() {
    if (bar.hit == false && pressedBefore == false) {
      ballHandler.getOneEvent(y);
    }
  }
}

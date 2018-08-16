class Ball {

  float x = displayWidth/2;
  float y = displayHeight*-0.5;
  float w = displayWidth*0.1;

  void call() {
    show();
    move();
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

  void getOne() {
    if (bar.hit == false) {
      ballHandler.getOneEvent(y);
    }
  }
}

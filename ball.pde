class Ball {

  float x = displayWidth/2;
  float y = displayHeight*-0.5;
  float w = displayWidth*0.1;

  boolean pressedBefore = false;

  void call() {
    show();
    move();
    scoreChecker();
  }

  void show() {
    fill(200, 0, 0);
    ellipseMode(CENTER);
    ellipse(x, y, w, w);
  }

  void move() {
    y = y + displayHeight*0.01;
  }

  void scoreChecker() {
    if (mousePressedInRange() == true && ballHandler.collided() == false && bar.hit == false) {
      ballHandler.deadEvent();
    } else if (mousePressedInRange() == true && ballHandler.collided() == true && bar.hit == false) {
      ballHandler.getOneEvent(y);
    }
  }
  
  boolean mousePressedInRange() {
    if(mousePressed && mouseY > displayHeight/2) {
      return true;
    } else return false;
  }
}

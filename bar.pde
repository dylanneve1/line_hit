class Bar {

  float x = displayWidth/2;
  float y = displayHeight/2;

  boolean hit = false;
  boolean shrink = false;

  float h = displayHeight*0.1;
  float w = displayWidth;

  void call() {
    show();
    respawn();
    isShrink();
  }

  void show() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void respawn() {
    if (ball.y > displayHeight) {
      y = barHandler.barRespawnEvent(hit, y);
    }
  }
  
  void isShrink() {
    if(shrink) {
      barHandler.shrinkEvent();
    }
  }
}

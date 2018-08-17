class Bar {

  float x = displayWidth/2;
  float y = displayHeight/2;

  boolean hit = true;

  float h = displayHeight*0.1;

  void call() {
    show();
    respawn();
  }

  void show() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, displayWidth, h);
  }

  void respawn() {
    if (ball.y < 0) {
      y = barHandler.barRespawnEvent(hit, y);
;    }
  }
}

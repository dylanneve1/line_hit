class barHandler {

  float barRespawnEvent(boolean hit, float y) {
    if (hit == true) {
      y = random(displayHeight/5, displayHeight);
      System.out.println("Respawned");
    } else if (hit == false) {
      ballHandler.deadEvent();
    }
    bar.hit = false;
    bar.shrink = false;
    bar.h = displayHeight*0.1;
    bar.w = displayWidth;

    return y;
  }

  void shrinkEvent() {
    if (bar.w > 0) {
      bar.w -= displayWidth/15;
    }
    if (bar.h > 0) {
      bar.h -= displayHeight/100;
    }
  }
}

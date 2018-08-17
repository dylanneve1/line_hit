class barHandler {

  float barRespawnEvent(boolean hit, float y) {
    if (hit == true) {
      y = random(displayHeight/5, displayHeight);      hit = false;
    } else if (hit == false) {
      handler.gameOverEvent();
    }
    return y;
  }
}

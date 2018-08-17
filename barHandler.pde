class barHandler {

  float barRespawnEvent(boolean hit, float y) {
    if (hit == true) {
      y = random(displayHeight/5, displayHeight);
      System.out.println("Respawned");
    } else if (hit == false) {
      handler.gameOverEvent();
    }
    bar.hit = false;
    return y;
  }
}

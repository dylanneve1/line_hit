class ballHandler {

  void getOneEvent(float y) {
    if (mousePressed && y > bar.y - bar.h && y < bar.y + bar.h) {
      score += 1;
      bar.hit = true;
      bar.shrink = true;
    }
  }
  
  void deadEvent() {
    menus.gameScreenShow = false;
    menus.deathScreenShow = true;
  }
  
  boolean collided() {
    if (ball.y > bar.y - bar.h && ball.y < bar.y + bar.h) {
      return true;
    } else {
      return false;
    }
  }
}

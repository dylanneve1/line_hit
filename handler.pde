class Handler {
  
  void restart() {
    score = 0;
    ball.y = displayHeight*-0.5;
    menus.deathScreenShow = false;
    menus.gameScreenShow = true;
  }
}

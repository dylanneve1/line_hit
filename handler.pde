class Handler {
  
  void restart() {
    score = 0;
    ball.y = displayHeight*-0.5;
    ball.speed = displayHeight*0.01;
    bar.y = displayHeight/2;
    menus.deathScreenShow = false;
    menus.gameScreenShow = true;
  }
}

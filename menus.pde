class Menus {

  boolean startScreenShow = true;
  boolean gameScreenShow = false;

  void call() {
    if (startScreenShow) {
      startScreen();
    }
    if (gameScreenShow) {
      gameScreen();
    }
  }

  void startScreen() {
    background(0);
    fill(255);
    textAlign(CENTER);
    textSize(displayWidth*0.1);
    text("Tap to start" , displayWidth/2, displayHeight/6);
    if(mousePressed) {
      startScreenShow = false;
      gameScreenShow = true;
    }
  }

  void gameScreen() {
    background(0);
    bar.call();
    ball.call();
    fill(255);
    textAlign(CENTER);
    textSize(displayWidth*0.1);
    text(score, displayWidth/2, displayHeight/6);
  }
}

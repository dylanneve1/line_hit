class Menus {

  boolean startScreenShow = true;
  boolean gameScreenShow = false;
  boolean deathScreenShow = false;

  void call() {
    if (startScreenShow) {
      startScreen();
    }
    if (gameScreenShow) {
      gameScreen();
    }
    if (deathScreenShow) {
      deathScreen();
    }
  }

  void startScreen() {
    background(0);
    fill(255);
    textAlign(CENTER);
    textSize(displayWidth*0.1);
    text("START" , displayWidth/2, displayHeight/4);
    text("Line Hit" , displayWidth/2, (displayHeight/4)*3);;
    if(mousePressed && mouseY < displayHeight/2) {
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
  
  void deathScreen() {
    background(200, 0, 0);
    fill(255);
    textAlign(CENTER);
    textSize(displayWidth*0.1);
    text("RESTART" , displayWidth/2, displayHeight/4);
    text("You have died." , displayWidth/2, (displayHeight/4)*3);
    if(mousePressed && mouseY < displayHeight/2) {
      handler.restart();
    }
  }
}

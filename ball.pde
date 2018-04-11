class Ball {
  
  float x = displayWidth/2;
  float y = displayHeight*-0.5;
  float w = displayWidth*0.1;
  
  void call() {
    show();
  }
  
  void show() {
    fill(200, 0, 0);
    ellipseMode(CENTER);
    ellipse(x, y, w, w);
  }
}
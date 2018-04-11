class Bar {
  
  float x = displayWidth/2;
  float y;
  
  void call() {
    show();
  }
  
  void show() {
    fill(0);
    rectMode(CENTER);
    rect(x, y, displayWidth, displayHeight*0.1);
  }
}
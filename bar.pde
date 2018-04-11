class Bar {
  
  float x = displayWidth/2;
  float y = displayHeight/2;
  
  void call() {
    show();
  }
  
  void show() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, displayWidth, displayHeight*0.1);
  }
}
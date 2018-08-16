class ballHandler {

  void getOneEvent(float y) {
    if (mousePressed && y > bar.y - bar.h && y < bar.y + bar.h) {
      score += 1;
      bar.hit = true;
    }
  }
}

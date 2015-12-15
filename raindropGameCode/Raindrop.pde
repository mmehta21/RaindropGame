class Raindrop {
  PVector loc, acc, vel;
  Raindrop(float x, float y) {
    loc=new PVector(x, y);
  }
  void fall() {
    vel=new PVector(0, 2);
    acc=new PVector(0, 9.8);
    vel.add(acc);
    loc.add(vel);
  }
  void display() {
    fill(255, 0, 10);
    ellipse(loc.x, loc.y, 20, 20);
  }
  void reset(){
    loc.x=0;
  }
}
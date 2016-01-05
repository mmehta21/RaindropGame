class Raindrops {
  float diam=20;
  PVector loc, acc, vel;
  Raindrops(float x, float y) {
    loc=new PVector(x, y);
    vel=PVector.random2D();
    acc=new PVector(0,.05);
  }
  void fall() {
    vel.add(acc);
    loc.add(vel);
  }
  void display() {
    fill(255, 0, 10);
    ellipse(loc.x, loc.y, diam, diam);
  }
  void reset(){
    loc.y=0;
    loc.x=random(width);
    vel=PVector.random2D();
    vel.add(acc);
  }
  boolean isInContactWith(Bucket other){
    if(loc.dist(other.loc) < diam/2 + other.diam/2){
    return true;
  }else{
    return false;
}
}
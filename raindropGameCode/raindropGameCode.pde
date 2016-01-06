PVector mouse;   //declare a P
ArrayList<Raindrops> raindrops= new ArrayList<Raindrops>();//declare a new Raindrop called r
Buckets b = new Buckets();
int stage;
int score=0;
PFont bigger;


void setup() {
  size(1200, 800);
  raindrops.add(new Raindrops(mouseX, mouseY));
  stage=1;
  bigger=loadFont("ArialMT-48.vlw");
  textFont(bigger,20);
}

void draw() {
  if(stage==1){
    background(0,0,0);
    textAlign(CENTER);
    text("Score as many point as you can in 30 seconds",width/2,height/2);
    text("Click to play",width/2,height/2+20);
    if(mousePressed){
      stage=2;
    }
  }
  if(stage==2){
  background(0, 200, 255);
    b.display();
  raindrops.add(new Raindrops(random(width), 0));
  for (int i=raindrops.size()-1; i>=0; i--) {
    Raindrops r= raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b)) {    //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      raindrops.remove(i);//if it is, reset the raindrop
      score=score+1;
      fill(255);
      text(score,width/2,height/2);  
  }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      raindrops.remove(i);                       //if it does, reset the raindrop
    }
  }
}
}
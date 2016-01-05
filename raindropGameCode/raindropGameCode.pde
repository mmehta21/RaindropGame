PVector mouse;   //declare a P
ArrayList<Raindrops> raindrops= new ArrayList<Raindrops>();//declare a new Raindrop called r

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrops(mouseX, mouseY));
  Bucket b = new Bucket(20);
}


void draw() {
  mouse.set(mouseX, mouseY);//set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  for(int i=raindrops.size()-1;i>=0;i--){
  Raindrops r= raindrops.get(i);
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop
  if (r.isInContactWith(20) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    raindrops.remove(i);                         //if it is, reset the raindrop
  }
  if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      raindrops.remove(i);                       //if it does, reset the raindrop
  }
}
}
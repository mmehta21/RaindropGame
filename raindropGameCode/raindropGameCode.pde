PVector mouse;   //declare a P
ArrayList<Raindrops> raindrops= new ArrayList<Raindrops>();//create arraylist named raindrops from class Raindrops
Buckets b = new Buckets(); //make variable b from class Buckets
int stage; //variables stage, score, bigger, time
int score=0;
PFont bigger;
int time;


void setup() {
  size(1200, 800);
  raindrops.add(new Raindrops(mouseX, mouseY));  //create new raindrop at arbitrary location
  stage=1;  //start stage at 1
  bigger=loadFont("ArialMT-48.vlw");  //load the font
  textFont(bigger, 20); //set text to bigger
}

void draw() {
  if (stage==1) {   //if stage is equal to 1
    background(0, 0, 0);  //background black
    textAlign(CENTER);  //align text to center
    text("Score 100 as quick as possible", width/2, height/2);  //write out these things
    text("Click to play", width/2, height/2+20);  
    if (mousePressed) {  //when mouse is pressed, go to stage 2
      stage=2;
    }
  }
  if (stage==2) {  //when stage is 2
    background(0, 200, 255); //background turquoise
    b.display();  //display b variable
    raindrops.add(new Raindrops(random(width), 0));  //add raindrops every frame
    for (int i=raindrops.size()-1; i>=0; i--) {  //for when i is equal to the arraylists size, and the other things
      Raindrops r= raindrops.get(i);  //basically create raindrops
      r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
      r.display();      //display the raindrop
      if (r.isInContactWith(b)) {    //check to see if the raindrop is in contact with the bucket
        raindrops.remove(i);//if it is, reset the raindrop
        score=score+1; //add 1 to score every time it touches the bucket
        fill(255); //whit
      }
      if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
        raindrops.remove(i);                       //if it does, reset the raindrop
      }
      text(score, width/2, height/2);   //text of score and time
      time=millis();
      text(time, width/2, height/2+30);
    }
    if (score==100) {  //when score is 100 go to stage 3
      stage=3;
    }
  }
  if (stage==3) {  //when stage 3, troll players by not telling them there time
    background(0);
    text("You took:", width/2, height/2);
    score=score/100;
    text("You will never know", width/2, height/2+30);
  }
}
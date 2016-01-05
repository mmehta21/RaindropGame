
class Buckets{
  PVector loc;
float diam;
  Buckets(){
    loc= new PVector(mouseX,mouseY);
  }
  
 void display(float diam){
   fill(0,255,255);
   loc= new PVector(mouseX,mouseY);
   ellipse(loc.x,loc.y,diam,diam);
 }
}
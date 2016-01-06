
class Buckets{
PVector loc;
float diam=100;
  Buckets(){
    loc= new PVector(mouseX,mouseY);
      }
  
 void display(){
   fill(0,255,255);
   loc= new PVector(mouseX,height-diam);
   ellipse(loc.x,loc.y,diam,diam);
 }

}
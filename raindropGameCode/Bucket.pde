PVector loc;
float diam;
class Bucket{
  Bucket(float tDiam){
    tDiam=diam;
    loc= new PVector(mouseX,mouseY);
  }
  
 void display(){
   fill(0,255,255);
   ellipse(loc.x,loc.y,diam,diam);
 }
}
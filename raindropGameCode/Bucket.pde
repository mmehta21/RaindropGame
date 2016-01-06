
class Buckets{  
PVector loc;  //variables loc and diam which is the size of the bucket
float diam=100;  
  Buckets(){
    loc= new PVector(mouseX,mouseY);  //create new loc vector
      }
  
 void display(){   //set a fill and draw circle
   fill(0,255,255);
   loc= new PVector(mouseX,height-diam);
   ellipse(loc.x,loc.y,diam,diam);
 }

}
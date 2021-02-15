
class Ground{
  color c;
  
  Ground(){
      colorMode(HSB, 360, 100, 100);
      c = color(28, 100, 52);
      

  }
  
   void display(){
    fill(c);
    rect(0,680,1080,70);

    }

}

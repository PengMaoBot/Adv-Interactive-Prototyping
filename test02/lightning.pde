class Lightning{
  
  PVector start, end;
  
  boolean split = false;
  boolean left = false;
  boolean right = false;
  
  float a,r = 0;
  float h,d;
  
  Lightning l1,l2;
  
  int n, max;
  
  Lightning(PVector start, float h, int n, int max){
    this.start = start;
    this.d = random(h*2)+h;
    this.h = h;
    this.n = n;
    this.max = max;
    
    a = random(PI/4, 3*PI/4); // strike range 
    end = new PVector(start.x + cos(a) * this.h, start.y + sin(a) * this.h);
  }
  
  void update(float spd){
   if(r < d ){ 
     r += spd;
   }else{
     if(!split && n <max){
       if(random(1)>0.5){
         left = true;
         right = true;
         l1 = new Lightning(end,h,n + 1, max);
         l2 = new Lightning(end,h,n + 1, max);
       }
     } else{
       left = true;
     }
   }
  }
  
  void display(){
    fill(55,90,100);
    line(start.x, start.y, start.x + cos(a) * r, start.y + sin(a) * r); //tansle angle to x and y
  }
}

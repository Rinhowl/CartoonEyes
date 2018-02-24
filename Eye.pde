class Eye{
  float x,y,bx,by,t;
  float sizeX,sizeY;
  float dist;
  
  Eye(float x){
    this.x = x;
    this.y = height/2;
    this.bx = x;
    this.by = height/2;
    this.sizeX = 60;
    this.sizeY = 60;
  }
  
  void showEye(){
    fill(240);
    ellipse(x,y,100,100);
    fill(30);
    if(sizeY <= -60){
     sizeY = 60;
     blink=""; 
    }
    follow();
    ellipse(bx,by,sizeX,sizeY);
  }
  
  void follow(){
   angle = atan2(mouseY-height/2,mouseX-width/2);
   dist = dist(mouseX,mouseY,0,0)/15;
   
   if(dist > 40){
     this.bx = this.x + cos(angle)*40;
     this.by = this.y + sin(angle)*40;
   }else{
     this.bx = this.x + cos(angle)*dist;
     this.by = this.y + sin(angle)*dist;
   }
  }
  
  void blink(){
    blink ="b";
  }
  
}
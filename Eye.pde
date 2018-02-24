class Eye{
  float x,y,t;
  float speed = 0.1;
  float sizeX,sizeY;
  
  Eye(float x){
    this.x = x;
    this.y = height/2;
    this.sizeX = 60;
    this.sizeY = 60;
  }
  
  void showEye(){
    fill(30);
    if(sizeY <= -60){
     sizeY = 60;
     blink=""; 
    }
    follow();
    ellipse(x,y,sizeX,sizeY);
  }
  
  void follow(){
   angle = atan2(mouseY-height/2,mouseX-width/2);
   offX = cos(angle)*dist(mouseX,mouseY,0,0);
   offY = sin(angle)*dist(mouseX,mouseY,0,0);
   x += offX/200;
   y += offY/200;
   
  }
  
  void blink(){
    blink ="b";
  }
  
}
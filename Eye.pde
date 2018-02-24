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
     flag=0; 
    }
    ellipse(x,y,sizeX,sizeY);
  }
  
  void follow(){
    if(mouseX<0){
      x -= speed;
     if(mouseY>0){
       y -= speed;
     }
     if(mouseY<0){
       y += speed;
     }
    }
  }
  
  void blink(){
    flag =1;
  }
  
}
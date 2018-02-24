class Eye{
  float x,y;
  
  Eye(float x){
    this.x = x;
    this.y = height/2;
  }
  
  void showEye(){
    fill(30);
    ellipse(x,y,60,60);
  }
  
}
/**********info************/
// CARTOONEYE|卡通眼睛|
// DATE|Feb 24 2018|
// AUTHOR|Rinhowl|
/*****************************/

float scale = 70;
int bg = #94DAF0;

Eye left,right;

void setup(){
  size(500,500);
  noStroke();
  rectMode(CENTER);
  translate(width/2,height/2);
  
  left = new Eye(width/2-scale);
  right = new Eye(width/2+scale);
}

void draw(){
  background(bg);
  
  //draw the rim of the eye
  fill(30);
  ellipse(width/2-scale,height/2,130,130);
  ellipse(width/2+scale,height/2,130,130);
  rect(width/2,height/2,60,25);
  fill(bg);
  ellipse(width/2-scale,height/2,110,110);
  ellipse(width/2+scale,height/2,110,110);
  fill(240);
  ellipse(width/2-scale,height/2,102,102);
  ellipse(width/2+scale,height/2,102,102);
  
  left.showEye();
  right.showEye();
  
}
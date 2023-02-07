float angle=0.0;
float angleDirection=1;
float speed=0.003;

void setup(){
  size(1700,900);
}

int px=20;
int py=20;

int tx=0;
int ty=0;

int bx=1600;
int by=(int)(random(500));

void keyPressed(){
  if(keyCode==' '){
    tx=px;
    ty=py;
  }
}

void draw(){
  background(19);
   fill(#919388);
  rect(20,50,180,150);
  fill(#5BDE1B);
  ellipse(75,75,30,30);
  ellipse(120,75,30,30);
  ellipse(165,75,30,30);
  fill(#DEE515);
  ellipse(75,120,30,30);
 fill(#F01F0C);
  ellipse(75,170,30,30);
  ellipse(120,170,30,30);
  fill(256,256,256);
  rect(1500,880,100,20);
  fill(#D16F24);
ellipse(300,970,700,300);
rect(1400,870,250,100);
fill(#D12424);
rect(250,800,70,20);
fill(256,256,256);
rect(250,700,20,100);
  rect(250,650,30,50);
  rect(150,650,100,20);
  rect(400,710,20,40);
  ellipse(410,750,30,30);
  ellipse(450,670,55,50);
  fill(#D12424);
  rect(130,650,20,70);
  rect(270,640,150,70);
  rect(475,650,20,50);
  
 ellipse(bx,by,30,300);
 if(tx>(bx-100)  && ty>(by-300) && ty <(by+300)){
   bx=2000;
   by=2000;
 }
 
 
 

 {  translate(400,640);
  rotate(angle*6-radians(180));
  strokeWeight(20);
  stroke(#F00C1B);
  line(0,0,70,0);
  translate(70,0);
  rotate(angle*-3);
  strokeWeight(20);
  line(0,0,50,50);
  translate(50,50);
  rotate(angle*2-radians(45));
  strokeWeight(10);
  line(0,0,px,py);
  ellipse(tx,ty,30,30);
  tx +=10;
 }
 
  angle += speed * angleDirection;
if((angle > QUARTER_PI)||(angle < 0)){
angleDirection = - angleDirection;
}
}

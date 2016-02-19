import ddf.minim.*;
int x = 100;
int xSpeed = 6;
int y = 252; 
int ySpeed = 6;
Minim minim;
AudioSample sound;
void setup(){
  size(500,500);
  minim = new Minim (this);
  sound = minim.loadSample("159408__noirenex__life-lost-game-over.wav", 128);
}
void draw(){
  background(000,000,000);
  ellipse(x,y,25,25);
  fill(255,255,255);
  stroke(255,255,255);
  x+=xSpeed;
  y+=ySpeed;
if(width <= x)
{
  xSpeed = -xSpeed;
}
if(width >= x)
{
 xSpeed = +xSpeed;
 sound.trigger();
}
if(height <= y)
{
  ySpeed = -ySpeed;
}
if(height >= y)
{
  ySpeed = +ySpeed;
  sound.trigger();
}
if(x <= 0)
{
  xSpeed = -xSpeed;
}
if(y <= 0)
{
  ySpeed = -ySpeed;
}

}

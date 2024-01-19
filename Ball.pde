class Ball
{
 float rad;
 Point center;
 Point contact_point;
 color col;
 float xspeed = 0, yspeed= 0, angle;
 //More code
 
 Ball( float x, float y, float r, color c)
 {
   center = new Point(x, y);
   rad = r;
   col = c;
 }
 
 void display()
 {
   fill(col);
   ellipse(center.x, center.y, rad, rad);
 }

 void shoot_cue()
 {
   dx = mouseX - center.x;
   dy = mouseY - center.y;
   angle = atan(dy/dx);
   xspeed = -power*cos(angle);
   yspeed = power*sin(angle);
   
   if (dx < 0)
   {
     xspeed = -xspeed;
   }
   if (dx > 0)
   {
     yspeed = -yspeed;
   }
   strike_count++;
 }
   
 void movement_ball()
 {
   center.x += xspeed;
   center.y += yspeed;
   xspeed = xspeed*friction;
   yspeed = yspeed*friction;
 }
  void boundary()
 {
   if (center.x > 1185 || center.x < 67.5)
   {
     center.x -= xspeed;
     xspeed = -xspeed;
     collide.rewind();
     collide.play();
     
   }
   if (center.y < 67.5 || center.y > 485)
   {
     center.y -= yspeed;
     yspeed = -yspeed;
     collide.rewind();
     collide.play();
   }
 }
 
}
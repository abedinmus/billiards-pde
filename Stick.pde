
class Stick
{
 Point start_p;
 Point end_p;
 color col; //color of the pool stick
 int length; //length of the pool stick
//More code
}

float dx, dy, angle = 0, x = 100, y = 100, length = 200;
 
 void pointer()
 {
   float dx =  table.b_arr[0].center.x - mouseX;
   float dy = table.b_arr[0].center.y - mouseY;
   angle = atan2(dy, dx);
   x = mouseX - (cos(angle) * length);
   y = mouseY - (sin(angle) * length);
   
   segment(x,y,angle);
   noCursor();
 }
 
 void segment(float x, float y, float a)
 {
   translate(x, y);
   rotate(a);
   strokeWeight(5);
   stroke(#DEB887);
   line(0, 0, length, 0);
 }
   
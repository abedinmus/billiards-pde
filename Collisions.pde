void collisions()
{
  for (int i = 0; i < table.b_arr.length; i++)
  {
    for (int j = i +1 ; j < table.b_arr.length; j++)
    {
      float dx = table.b_arr[j].center.x - table.b_arr[i].center.x;
      float dy = table.b_arr[j].center.y - table.b_arr[i].center.y;
      float dist = sqrt(dx*dx + dy*dy);
      
      if (dist < ball_diam && j!=i) //if Circles overlap
      {
        //calculate Normal 
        float normalX = dx/dist;
        float normalY = dy/dist;
        //calculate midpoint
        float midpointX = (table.b_arr[i].center.x + table.b_arr[j].center.x)/2;
        float midpointY = (table.b_arr[i].center.y + table.b_arr[j].center.y)/2;
        //bounce back
        table.b_arr[i].center.x = midpointX - (ball_diam/2)*normalX;
        table.b_arr[i].center.y = midpointY - (ball_diam/2)*normalY;
        table.b_arr[j].center.x = midpointX + (ball_diam/2)*normalX;
        table.b_arr[j].center.y = midpointY + (ball_diam/2)*normalY;
        
        float dVector = (table.b_arr[i].xspeed - table.b_arr[j].xspeed) *normalX;
        dVector += (table.b_arr[i].yspeed - table.b_arr[j].yspeed) * normalY;
        
        float dvx = dVector * normalX;
        float dvy = dVector * normalY;
        
        //change in speed
        table.b_arr[i].xspeed -= dvx;
        table.b_arr[i].yspeed -= dvy;
        table.b_arr[j].xspeed += dvx;
        table.b_arr[i].yspeed += dvy;
        
        table.b_arr[i].movement_ball();
        table.b_arr[j].movement_ball();
      }
    }
  }
}
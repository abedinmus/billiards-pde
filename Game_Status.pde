void check_cue()
{
  if((table.b_arr[0].center.x <= 75 && table.b_arr[0].center.y <= 75) || (table.b_arr[0].center.x >= 1177 && table.b_arr[0].center.y <= 75) || (table.b_arr[0].center.x <= 75 && table.b_arr[0].center.y >= 477)
  || (table.b_arr[0].center.x >= 1177 && table.b_arr[0].center.y > 477))
  {
    if(looping)
    {
      noLoop();
      table.b_arr[0].xspeed=0;
      table.b_arr[0].yspeed=0;
      table.b_arr[0].center.x = -600;
      noLoop();
      background(0);
      fill(255);
      textSize(100);
      text("Game Over", 500, 200);
      fill(255);
      textSize(55);
      text("Game Over, Please play again", 300, 750/2);
       if(keyCode == SHIFT)
      { 
      time = 1300;   
      loop();
      restart();
      }
    }
  }
}

void delete_balls()
{
  for(int i = 1; i < table.b_arr.length; i++)
  if((table.b_arr[i].center.x <= 75 && table.b_arr[i].center.y <= 75) || (table.b_arr[i].center.x >= 1177 && table.b_arr[i].center.y <= 75) || (table.b_arr[i].center.x <= 75 && table.b_arr[i].center.y >= 477)
  || (table.b_arr[i].center.x >= 1177 && table.b_arr[i].center.y > 477))
  {
    table.b_arr[i].xspeed=0;
    table.b_arr[i].yspeed=0;
    table.b_arr[i].center.x = -600;
    score_counter++;
  }     
}

void checkTimer()
{
  if (remainingtime < 0.1)
  {
    if(looping)
    {
      background(0);
      fill(255);
      textSize(100);
      text("Game Over", 500, 200);
    }
  }
}

void lose()
{
  check_cue();
  checkTimer();
}

void restart () //restart function for when the user presses shift
{
 setup();
}
void Restart_conditions() //conditions for restarting the game
{
  if (keyPressed)
  {
  if (keyCode == SHIFT)
  {
    noLoop();
    restart();
    loop();
  }
}
}
void Start_game() //a function that will draw the table and balls
{
  table  = new Table();
  start = true;
}

void win()
{
  if(score_counter == 6)
  {
      noLoop();
      background(0);
      fill(255);
      text("YOU WIN", 500, 200);   
    
  }
}


void init_balls()
{
  table.b_arr = new Ball[7];
  
  table.b_arr[0] = new Ball (width/4, height/2, ball_diam, #ffffff);
  table.b_arr[1] = new Ball (3*width/4, height/2, ball_diam, #2e5da1);
  table.b_arr[2] = new Ball (3*width/4 + 25, height/2 - 15, ball_diam, #3b298c);
  table.b_arr[3] = new Ball (3*width/4 + 25, height/2 + 15, ball_diam, #ee08ea);
  table.b_arr[4] = new Ball (3*width/4 + 50, height/2, ball_diam, #4bfb20);
  table.b_arr[5] = new Ball (3*width/4 + 50, height/2 - 30, ball_diam, #d16631);
  table.b_arr[6] = new Ball (3*width/4 + 50, height/2 + 30, ball_diam, #fff000);
  
}

void mousePressed()
{
 table.b_arr[0].shoot_cue();   
 collide.rewind();
 collide.play();
}

float powerControl(float power)
{
  if(keyCode==UP)
  {
    if(power<100)
    {
      power+=.5;
    }
    keyCode=LEFT;
  }
  if(keyCode==DOWN)
  {
    if(power>0)
    {
      power-=.5;
    }
    keyCode=LEFT;
  }
  fill(255);
  text("USE UP AND DOWN ARROW KEYS TO ADJUST POWER", 100, 20);
  text("Power Level:       " + power, 150, 40);
  return power;
}

void displayScore() //Displays the score
{
  text("Score:" + strike_counter, 40,40);
}   